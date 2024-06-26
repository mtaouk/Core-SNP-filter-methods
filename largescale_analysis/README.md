# Large Scale Alignments

This ReadMe will detail all code used to generate the large scale
alignments for both *Neisseria gonorrhoeae* and *Salmonella Typhi*.

## 1. Download data

Make new directory to keep the reads in:

```         
mkdir Typhi/Typhi_reads
cd Typhi/Typhi_fastqs

mkdir Ngono/N_gono_reads
cd Ngono/N_gono_fastqs
```

Make input to download reads and run using parallel:

```         
for i in $(cat Run_accessions.txt); do echo "fasterq-dump $i --split-3 --skip-technical" >> parallel_input.txt; done
```

```         
parallel -j 10 -k --bar {} :::: parallel_input.txt 
```

Run_accessions.txt for *S. typhi* can be found here.

Run_accessions.txt for *N. gonorrhoeae* can be found here.

Compress reads to save space as fasterq-dump does not have that option:

```         
pigz -4 *.fastq
```

Check read quality stats:

```         
seqkit stats *_2.fastq.gz -eTb -j 10
```

## 2. Variant Calling

Run Snippy:

```         
mkdir Typhi/Typhi_snippy
cd Typhi/Typhi_snippy
parallel -j 4 --bar -a /Typhi/Typhi_IDs.txt "snippy --cpus 8 --minfrac 0.9 --mincov 10 --ref /Typhi/Typhi_reference.fasta --cleanup --outdir {} --prefix {} --R1 /Typhi/Typhi_fastqs/{}_1.fastq.gz --R2 /Typhi/Typhi_fastqs/{}_2.fastq.gz"
```

```         
mkdir Ngono/Ngono_snippy
cd Ngono/Ngono_snippy
parallel -j 4 --bar -a /Ngono/Ngono_IDs.txt "snippy --cpus 8 --minfrac 0.9 --mincov 10 --ref /NgonoNgono_reference.fasta --cleanup --outdir {} --prefix {} --R1 /Ngono/Ngono_fastqs/{}_1.fastq.gz --R2 /Ngono/Ngono_fastqs/{}_2.fastq.gz"
```

The *S. typhi* reference is str. CT18 (accession: NC_003198.1) and the
*N. gonorrhoaea* reference is NCCP11945 (accession: CP001050.1). For
both species, the \*\_ID.txt file is a text file where each line is the
base name of the read path, in this case just the accession ID.

Run Snippy-core:

```         
mkdir Typhi/Typhi_alignments
cd Typhi/Typhi_alignments
snippy-core Typhi/Typhi_snippy/* --ref Typhi/Typhi_reference.fasta
```

```         
mkdir Ngono/Ngono_alignments
cd Ngono/Ngono_alignments
snippy-core Ngono_snippy/* --ref Ngono_reference.fasta
```

Calculate stats for alignment quality:

```         
seqtk comp core.full.aln > core.full.stats.tsv
```

This was done for both *S. typhi* and *N. gonorrhoeae*.

Remove any failed isolates from full alignment:

```         
seqkit grep -f pass.txt  core.full.aln > passcov.core.full.aln
```

The list of pass genomes for *S. typhi* can be found here. The list of
pass genomes for *N. gonorrhoeae* can be found here.

## 3. Subset alignments:

Make new sub-directories for the subsetting:

```         
mkdir Typhi/Typhi_alignments/test_alignments
cd Typhi/Typhi_alignments/test_alignments

mkdir Ngono/Ngono_alignments/test_alignments
cd Ngono/Ngono_alignments/test_alignments
```
