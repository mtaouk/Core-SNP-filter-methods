#!/bin/bash
cd /home/taouk/core-genome/Typhi_work

### DOWNLOAD DATA
# make input to download reads
for i in $(cat Run_accessions.txt); do echo "fasterq-dump $i --split-3 --skip-technical" >> parallel_input.txt; done

cd /home/taouk/core-genome/Typhi_fastqs
#download reads
parallel -j 10 -k --bar {} :::: ../Typhi_working/parallel_input.txt
# check disc usage because faster_dump does not compress files
#compress reads
pigz -4 *_1.fastq
pigz -4 *_2.fastq
#stats for read quality just in case
seqkit stats /home/taouk/core-genome/Typhi_fastqs/*_2.fastq.gz -eTb -j 40 > /home/taouk/core-genome/Typhi_work/read_stats.tsv

#Snippy
# some of the reads didn't download for some reason so here is a new file that has the IDs that are in the reads directory
dos2unix /home/taouk/core-genome/Typhi_work/IDs.txt
dos2unix /home/taouk/core-genome/Typhi_work/ID_2.txt
mkdir Typhi_snippy
cd Typhi_snippy
parallel -j 4 --bar -a /home/taouk/core-genome/Typhi_work/IDs.txt "snippy --cpus 8 --minfrac 0.9 --mincov 10 --ref /home/taouk/core-genome/Typhi_work/reference.fasta --cleanup --outdir {} --prefix {} --R1 /home/taouk/core-genome/Typhi_fastqs/{}_1.fastq.gz --R2 /home/taouk/core-genome/Typhi_fastqs/{}_2.fastq.gz"

#snippycore
mkdir /home/taouk/core-genome/Typhi_alignments
cd /home/taouk/core-genome/Typhi_alignments
snippy-core /home/taouk/core-genome/Typhi_snippy/* --ref /home/taouk/core-genome/Typhi_work/reference.fasta

#stats for alignment
seqtk comp core.full.aln > core.full.stats.tsv

#remove failed isolates from snippycore alignment full
dos2unix pass.txt
seqkit grep -f pass.txt  core.full.aln > passcov.core.full.aln
#10131 total sequences pass cov

### TEST ALIGNMENTS
mkdir /home/taouk/core-genome/Typhi_alignments/test_alignments
cd /home/taouk/core-genome/Typhi_alignments/test_alignments

# Run code to remove all invariant sites
coresnpfilter -e passcov.core.full.aln > noinvariant.passcov.core.full.aln
# Run code that subsets alignments
parallel -j 10 -k --bar "bash /home/taouk/core-genome/Typhi_work/subset.sh {}" ::: A B C D E F G H I J 
# Run code that does core-snp-filter and prints results
parallel -j 10 -k --bar "bash /home/taouk/core-genome/Typhi_alignments/test_alignments/calculate_SNPs.sh {}" ::: A B C D E F G H I J
# merge results
mkdir results
cat */*_0.90.txt > results/90.txt
cat */*_1.0.txt > results/100.txt
cat */*_0.95.txt > results/95.txt
cat */*_0.80.txt > results/80.txt
cat */*_0.70.txt > results/70.txt
cat */*_0.60.txt > results/60.txt
cat */*_0.50.txt > results/50.txt
cat */*_0.99.txt > results/99.txt
cat */*_0.98.txt > results/98.txt
cat */*_0.97.txt > results/97.txt
cat */*_0.96.txt > results/96.txt
#add threshold to file
cd results
sed 's/input file:/90/' 90.txt >> all.txt
sed 's/input file:/100/' 100.txt >> all.txt
sed 's/input file:/95/' 95.txt >> all.txt
sed 's/input file:/80/' 80.txt >> all.txt
sed 's/input file:/70/' 70.txt >> all.txt
sed 's/input file:/60/' 60.txt >> all.txt
sed 's/input file:/50/' 50.txt >> all.txt
sed 's/input file:/99/' 99.txt >> all.txt
sed 's/input file:/98/' 98.txt >> all.txt
sed 's/input file:/97/' 97.txt >> all.txt
sed 's/input file:/96/' 96.txt >> all.txt
