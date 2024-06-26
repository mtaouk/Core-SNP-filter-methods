# Large Scale Alignments

This ReadMe will detail all code used to generate the large scale
alignments for both *Neisseria gonorrhoeae* and *Salmonella Typhi*.

## 1. Download data

Make input to download reads and run using parallel:

```         
for i in $(cat Run_accessions.txt); do echo "fasterq-dump $i --split-3 --skip-technical" >> parallel_input.txt; done
```

```         
parallel -j 10 -k --bar {} :::: ../Ngonorrhoeae_working/parallel_input.txt 
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
