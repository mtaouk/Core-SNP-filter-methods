#!/bin/bash
cd /home/taouk/core-genome/Ngonorrhoeae_working

### DOWNLOAD DATA
# make input to download reads
for i in $(cat Run_accessions.txt); do echo "fasterq-dump $i --split-3 --skip-technical" >> parallel_input.txt; done

cd /home/taouk/core-genome/Ngonorrhoeae_fastqs
#download reads
parallel -j 10 -k --bar {} :::: ../Ngonorrhoeae_working/parallel_input.txt
#compress reads
pigz -4 *_1.fastq
pigz -4 *_2.fastq
#stats for read quality just in case
seqkit stats /home/taouk/core-genome/Ngonorrhoeae_fastqs/*_2.fastq.gz -eTb -j 10 > /home/taouk/core-genome/Ngonorrhoeae_work/read_stats.tsv

#### MAKE SNIPPYS
cd /home/taouk/core-genome/Ngonorrhoeae_snippy
dos2unix /home/taouk/core-genome/Ngonorrhoeae_work/snippy_input.txt
parallel -j 3 -k --bar {} :::: /home/taouk/core-genome/Ngonorrhoeae_work/snippy_input_1.txt
parallel -j 3 -k --bar {} :::: /home/taouk/core-genome/Ngonorrhoeae_work/snippy_input_2.txt
#snippycore
cd Ngonorrhoeae_alignments
snippy-core /home/taouk/core-genome/Ngonorrhoeae_snippy/* --ref /home/taouk/core-genome/Ngonorrhoeae_work/NCCP11945.fa
#size of alignment = 2232025
#stats for alignment
seqtk comp core.full.aln > core.full.stats.tsv
#remove failed isolates from snippycore alignment full
dos2unix coverage_pass.txt
seqkit grep -f coverage_pass.txt  core.full.aln > passcov.core.full.aln
#10131 total sequences pass cov

### STUDY ALIGNMENTS
#subset big alignment to study specific for analyses later
cd /home/taouk/core-genome/Ngonorrhoeae_alignments/study_alignments
dos2unix filtering/*.txt
seqkit grep -f filtering/alfsnes2020.txt  ../core.full.aln > alfsnes2020.full.fa
seqkit grep -f filtering/buckley2018.txt  ../core.full.aln > buckley2018.full.fa
seqkit grep -f filtering/cehovin2018.txt  ../core.full.aln > cehovin2018.full.fa
seqkit grep -f filtering/demczuk2015.txt  ../core.full.aln > demczuk2015.full.fa
seqkit grep -f filtering/deSilva2016.txt  ../core.full.aln > deSilva2016.full.fa
seqkit grep -f filtering/didelot2016.txt  ../core.full.aln > didelot2016.full.fa
seqkit grep -f filtering/ezewudo2015.txt  ../core.full.aln > ezewudo2015.full.fa
seqkit grep -f filtering/fifer2018.txt  ../core.full.aln > fifer2018.full.fa
seqkit grep -f filtering/golparian2020.txt  ../core.full.aln > golparian2020.full.fa
seqkit grep -f filtering/grad2016.txt  ../core.full.aln > grad2016.full.fa
seqkit grep -f filtering/kwong2016.txt  ../core.full.aln > kwong2016.full.fa
seqkit grep -f filtering/kwong2018.txt  ../core.full.aln > kwong2018.full.fa
seqkit grep -f filtering/lan2020.txt  ../core.full.aln > lan2020.full.fa
seqkit grep -f filtering/less2018.txt  ../core.full.aln > less2018.full.fa
seqkit grep -f filtering/mortimer2020.txt  ../core.full.aln > mortimer2020.full.fa
seqkit grep -f filtering/ryan2018.txt  ../core.full.aln > ryan2018.full.fa
seqkit grep -f filtering/sanchezbuso2019.txt  ../core.full.aln > sanchezbuso2019.full.fa
seqkit grep -f filtering/thomas2019.txt  ../core.full.aln > thomas2019.full.fa
seqkit grep -f filtering/town2020.txt  ../core.full.aln > town2020.full.fa
seqkit grep -f filtering/willimason2019.txt  ../core.full.aln > willimason2019.full.fa
seqkit grep -f filtering/wind2017.txt  ../core.full.aln > wind2017.full.fa
seqkit grep -f filtering/yahara2018.txt  ../core.full.aln > yahara2018.full.fa
# make alignments and calculate size
bash performcoresnpfilter.sh
# remove the raw files
rm *raw.txt
# merge results
cd results
sed 's/input file:/100/' 1.0.txt >> all.txt
sed 's/input file:/95/' 0.95.txt >> all.txt

for i in $(cat filtering/studies.txt); do
  count=$(grep -c "^>" "$i.full.fa")
  isolates=$(grep -c "^" "filtering/$i.txt")
  echo -e "$i\t$count\t$isolates" >> alignment_sizes.txt
done

### TEST ALIGNMENTS
cd /home/taouk/core-genome/Ngonorrhoeae_alignments/test_alignments
#remove invariant sites
coresnpfilter -e ../passcov.core.full.aln > noinvariant.passcov.core.full.aln
# Run code that subsets alignments
parallel -j 10 -k --bar "bash /home/taouk/core-genome/Ngonorrhoeae_work/subset.sh {}" ::: A B C D E F G H I J 
# Run code that does core-snp-filter and prints results
parallel -j 10 -k --bar "bash /home/taouk/core-genome/Ngonorrhoeae_alignments/test_alignments/calculate_SNPs.sh {}" ::: A B C D E F G H I J
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
