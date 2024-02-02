# Paper

I used the dataset from this paper:
https://journals.asm.org/doi/full/10.1128/mbio.00080-15

Dates were in this supp file:
https://journals.asm.org/doi/suppl/10.1128/mbio.00080-15/suppl_file/mbo004142208sd1.pdf

And read links from EBI:
https://www.ebi.ac.uk/ena/browser/view/PRJEB8247


I found 88 isolates in PRJEB8247, and these aren't quite the same as the 87 isolates in the study:
* I got two additional isolates, SAMEA3212921 (BPH0365) and SAMEA3212930 (BPH0366) that weren't in the study. These were listed as from being from Turkey and Hungary in the paper's supp.
* I'm missing one (JKD6008) that was in the study. Not sure why that one isn't in PRJEB8247.

These discrepancies don't worry me, so I'm just going ahead with the 88 isolates in PRJEB8247.




# Download reads

```bash
cd /home/wickr/Core_SNP_paper/dataset_3_S_aureus_ST239/reads

wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212882_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732857/ERR732857_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212882_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732857/ERR732857_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212883_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732860/ERR732860_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212883_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732860/ERR732860_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212884_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732887/ERR732887_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212884_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732887/ERR732887_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212885_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732861/ERR732861_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212885_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732861/ERR732861_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212886_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732877/ERR732877_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212886_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732877/ERR732877_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212887_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732884/ERR732884_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212887_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732884/ERR732884_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212888_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732867/ERR732867_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212888_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732867/ERR732867_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212889_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732863/ERR732863_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212889_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732863/ERR732863_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212890_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732866/ERR732866_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212890_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732866/ERR732866_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212891_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732859/ERR732859_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212891_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732859/ERR732859_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212892_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732878/ERR732878_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212892_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732878/ERR732878_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212893_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732824/ERR732824_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212893_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732824/ERR732824_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212894_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732894/ERR732894_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212894_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732894/ERR732894_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212895_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732892/ERR732892_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212895_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732892/ERR732892_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212896_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732870/ERR732870_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212896_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732870/ERR732870_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212897_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732864/ERR732864_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212897_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732864/ERR732864_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212898_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732890/ERR732890_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212898_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732890/ERR732890_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212899_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732835/ERR732835_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212899_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732835/ERR732835_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212900_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732880/ERR732880_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212900_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732880/ERR732880_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212901_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732891/ERR732891_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212901_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732891/ERR732891_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212902_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732862/ERR732862_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212902_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732862/ERR732862_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212903_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732845/ERR732845_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212903_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732845/ERR732845_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212904_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732827/ERR732827_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212904_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732827/ERR732827_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212905_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732852/ERR732852_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212905_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732852/ERR732852_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212906_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732865/ERR732865_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212906_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732865/ERR732865_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212907_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732879/ERR732879_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212907_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732879/ERR732879_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212908_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732841/ERR732841_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212908_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732841/ERR732841_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212909_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732889/ERR732889_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212909_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732889/ERR732889_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212910_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732858/ERR732858_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212910_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732858/ERR732858_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212911_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732825/ERR732825_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212911_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732825/ERR732825_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212912_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732893/ERR732893_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212912_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732893/ERR732893_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212913_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732828/ERR732828_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212913_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732828/ERR732828_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212914_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732896/ERR732896_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212914_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732896/ERR732896_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212915_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732847/ERR732847_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212915_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732847/ERR732847_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212916_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732899/ERR732899_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212916_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732899/ERR732899_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212917_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732856/ERR732856_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212917_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732856/ERR732856_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212918_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732833/ERR732833_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212918_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732833/ERR732833_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212919_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732822/ERR732822_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212919_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732822/ERR732822_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212920_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732876/ERR732876_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212920_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732876/ERR732876_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212921_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732813/ERR732813_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212921_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732813/ERR732813_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212922_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732873/ERR732873_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212922_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732873/ERR732873_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212923_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732885/ERR732885_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212923_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732885/ERR732885_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212924_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732855/ERR732855_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212924_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732855/ERR732855_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212925_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732831/ERR732831_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212925_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732831/ERR732831_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212926_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732854/ERR732854_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212926_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732854/ERR732854_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212927_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732869/ERR732869_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212927_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732869/ERR732869_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212928_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732820/ERR732820_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212928_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732820/ERR732820_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212929_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732874/ERR732874_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212929_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732874/ERR732874_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212930_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732814/ERR732814_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212930_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732814/ERR732814_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212931_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732816/ERR732816_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212931_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732816/ERR732816_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212932_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732871/ERR732871_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212932_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732871/ERR732871_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212933_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732888/ERR732888_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212933_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732888/ERR732888_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212934_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732838/ERR732838_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212934_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732838/ERR732838_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212935_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732851/ERR732851_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212935_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732851/ERR732851_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212936_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732842/ERR732842_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212936_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732842/ERR732842_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212937_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732821/ERR732821_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212937_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732821/ERR732821_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212938_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732815/ERR732815_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212938_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732815/ERR732815_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212939_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732886/ERR732886_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212939_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732886/ERR732886_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212940_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732819/ERR732819_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212940_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732819/ERR732819_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212941_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732875/ERR732875_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212941_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732875/ERR732875_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212942_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732843/ERR732843_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212942_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732843/ERR732843_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212943_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732882/ERR732882_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212943_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732882/ERR732882_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212944_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732848/ERR732848_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212944_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732848/ERR732848_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212945_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732846/ERR732846_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212945_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732846/ERR732846_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212946_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732883/ERR732883_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212946_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732883/ERR732883_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212947_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732868/ERR732868_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212947_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732868/ERR732868_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212948_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732834/ERR732834_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212948_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732834/ERR732834_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212949_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732829/ERR732829_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212949_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732829/ERR732829_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212950_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732872/ERR732872_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212950_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732872/ERR732872_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212951_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732844/ERR732844_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212951_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732844/ERR732844_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212952_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732832/ERR732832_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212952_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732832/ERR732832_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212953_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732895/ERR732895_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212953_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732895/ERR732895_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212954_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732840/ERR732840_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212954_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732840/ERR732840_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212955_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732818/ERR732818_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212955_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732818/ERR732818_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212956_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732817/ERR732817_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212956_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732817/ERR732817_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212957_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732826/ERR732826_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212957_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732826/ERR732826_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212958_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732837/ERR732837_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212958_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732837/ERR732837_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212959_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732850/ERR732850_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212959_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732850/ERR732850_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212960_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732898/ERR732898_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212960_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732898/ERR732898_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212961_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732830/ERR732830_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212961_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732830/ERR732830_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212962_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732836/ERR732836_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212962_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732836/ERR732836_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212963_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732900/ERR732900_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212963_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732900/ERR732900_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212964_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732897/ERR732897_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212964_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732897/ERR732897_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212965_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732853/ERR732853_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212965_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732853/ERR732853_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212966_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732849/ERR732849_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212966_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732849/ERR732849_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212967_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732823/ERR732823_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212967_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732823/ERR732823_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212968_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732881/ERR732881_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212968_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732881/ERR732881_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212969_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732839/ERR732839_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA3212969_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR732/ERR732839/ERR732839_2.fastq.gz
```

Sanity check that the downloads look good (`_1.fastq.gz` and `_2.fastq.gz` files have the same number of reads):
```bash
cd /home/wickr/Core_SNP_paper/dataset_3_S_aureus_ST239/reads
for s in $(ls *_1.fastq.gz | sed 's/_1.fastq.gz//'); do
    r1_count=$(fast_count "$s"_1.fastq.gz | cut -f2)
    r2_count=$(fast_count "$s"_2.fastq.gz | cut -f2)
    if [[ "$r1_count" == "$r2_count" ]]; then
        echo $s"\t"$r1_count"\tmatch"
    else
        echo $s"\t"$r1_count"\t"$r2_count"\tMISMATCH"
    fi
done
```




# Reference genome

This is the same reference genome used in [Sarah's paper](https://journals.asm.org/doi/full/10.1128/mbio.00080-15), isolate TW20 which is also ST239:
```bash
cd /home/wickr/Core_SNP_paper/dataset_3_S_aureus_ST239
wget https://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/000/027/045/GCF_000027045.1_ASM2704v1/GCF_000027045.1_ASM2704v1_genomic.fna.gz
gunzip -c GCF_000027045.1_ASM2704v1_genomic.fna.gz | seqtk seq | head -n2 > reference.fasta
```




# Run Snippy on each sample

```bash
conda activate snippy

base_dir=/home/wickr/Core_SNP_paper/dataset_3_S_aureus_ST239

for s in SAMEA3212882 SAMEA3212883 SAMEA3212884 SAMEA3212885 SAMEA3212886 SAMEA3212887 SAMEA3212888 SAMEA3212889 SAMEA3212890 SAMEA3212891 SAMEA3212892 SAMEA3212893 SAMEA3212894 SAMEA3212895 SAMEA3212896 SAMEA3212897 SAMEA3212898 SAMEA3212899 SAMEA3212900 SAMEA3212901 SAMEA3212902 SAMEA3212903 SAMEA3212904 SAMEA3212905 SAMEA3212906 SAMEA3212907 SAMEA3212908 SAMEA3212909 SAMEA3212910 SAMEA3212911 SAMEA3212912 SAMEA3212913 SAMEA3212914 SAMEA3212915 SAMEA3212916 SAMEA3212917 SAMEA3212918 SAMEA3212919 SAMEA3212920 SAMEA3212921 SAMEA3212922 SAMEA3212923 SAMEA3212924 SAMEA3212925 SAMEA3212926 SAMEA3212927 SAMEA3212928 SAMEA3212929 SAMEA3212930 SAMEA3212931 SAMEA3212932 SAMEA3212933 SAMEA3212934 SAMEA3212935 SAMEA3212936 SAMEA3212937 SAMEA3212938 SAMEA3212939 SAMEA3212940 SAMEA3212941 SAMEA3212942 SAMEA3212943 SAMEA3212944 SAMEA3212945 SAMEA3212946 SAMEA3212947 SAMEA3212948 SAMEA3212949 SAMEA3212950 SAMEA3212951 SAMEA3212952 SAMEA3212953 SAMEA3212954 SAMEA3212955 SAMEA3212956 SAMEA3212957 SAMEA3212958 SAMEA3212959 SAMEA3212960 SAMEA3212961 SAMEA3212962 SAMEA3212963 SAMEA3212964 SAMEA3212965 SAMEA3212966 SAMEA3212967 SAMEA3212968 SAMEA3212969; do
    r1="$base_dir"/reads/"$s"_1.fastq.gz
    r2="$base_dir"/reads/"$s"_2.fastq.gz
    cd "$base_dir"/snippy
    mkdir "$s"; cd "$s"
    /home/wickr/miniconda3/envs/assembly/bin/fastp --in1 "$r1" --in2 "$r2" --out1 illumina_1.fastq.gz --out2 illumina_2.fastq.gz
done

for s in SAMEA3212882 SAMEA3212883 SAMEA3212884 SAMEA3212885 SAMEA3212886 SAMEA3212887 SAMEA3212888 SAMEA3212889 SAMEA3212890 SAMEA3212891 SAMEA3212892 SAMEA3212893 SAMEA3212894 SAMEA3212895 SAMEA3212896 SAMEA3212897 SAMEA3212898 SAMEA3212899 SAMEA3212900 SAMEA3212901 SAMEA3212902 SAMEA3212903 SAMEA3212904 SAMEA3212905 SAMEA3212906 SAMEA3212907 SAMEA3212908 SAMEA3212909 SAMEA3212910 SAMEA3212911 SAMEA3212912 SAMEA3212913 SAMEA3212914 SAMEA3212915 SAMEA3212916 SAMEA3212917 SAMEA3212918 SAMEA3212919 SAMEA3212920 SAMEA3212921 SAMEA3212922 SAMEA3212923 SAMEA3212924 SAMEA3212925 SAMEA3212926 SAMEA3212927 SAMEA3212928 SAMEA3212929 SAMEA3212930 SAMEA3212931 SAMEA3212932 SAMEA3212933 SAMEA3212934 SAMEA3212935 SAMEA3212936 SAMEA3212937 SAMEA3212938 SAMEA3212939 SAMEA3212940 SAMEA3212941 SAMEA3212942 SAMEA3212943 SAMEA3212944 SAMEA3212945 SAMEA3212946 SAMEA3212947 SAMEA3212948 SAMEA3212949 SAMEA3212950 SAMEA3212951 SAMEA3212952 SAMEA3212953 SAMEA3212954 SAMEA3212955 SAMEA3212956 SAMEA3212957 SAMEA3212958 SAMEA3212959 SAMEA3212960 SAMEA3212961 SAMEA3212962 SAMEA3212963 SAMEA3212964 SAMEA3212965 SAMEA3212966 SAMEA3212967 SAMEA3212968 SAMEA3212969; do
    cd "$base_dir"/snippy/"$s"
    snippy --outdir . --R1 illumina_1.fastq.gz --R2 illumina_2.fastq.gz --ref "$base_dir"/reference.fasta --cpus 32 --force --cleanup && rm illumina_*.fastq.gz
done
```




# Combine Snippy results

```bash
conda activate snippy
cd /home/wickr/Core_SNP_paper/dataset_3_S_aureus_ST239/snippy
snippy-core --ref /home/wickr/Core_SNP_paper/dataset_3_S_aureus_ST239/reference.fasta SAM*
snippy-clean_full_aln core.full.aln | seqtk seq | tail -n+3 > ../snippy.fasta
```

Clean up
```bash
cd /home/wickr/Core_SNP_paper/dataset_3_S_aureus_ST239
rm -r snippy
```




# Add dates to isolate names

```bash
cd /home/wickr/Core_SNP_paper/dataset_3_S_aureus_ST239
sed -i 's/SAMEA3212882/SAMEA3212882_2008/' snippy.fasta
sed -i 's/SAMEA3212883/SAMEA3212883_1980/' snippy.fasta
sed -i 's/SAMEA3212884/SAMEA3212884_2007/' snippy.fasta
sed -i 's/SAMEA3212885/SAMEA3212885_1980/' snippy.fasta
sed -i 's/SAMEA3212886/SAMEA3212886_1982/' snippy.fasta
sed -i 's/SAMEA3212887/SAMEA3212887_2003/' snippy.fasta
sed -i 's/SAMEA3212888/SAMEA3212888_1998/' snippy.fasta
sed -i 's/SAMEA3212889/SAMEA3212889_1981/' snippy.fasta
sed -i 's/SAMEA3212890/SAMEA3212890_1998/' snippy.fasta
sed -i 's/SAMEA3212891/SAMEA3212891_2007/' snippy.fasta
sed -i 's/SAMEA3212892/SAMEA3212892_1982/' snippy.fasta
sed -i 's/SAMEA3212893/SAMEA3212893_2006/' snippy.fasta
sed -i 's/SAMEA3212894/SAMEA3212894_2003/' snippy.fasta
sed -i 's/SAMEA3212895/SAMEA3212895_2002/' snippy.fasta
sed -i 's/SAMEA3212896/SAMEA3212896_1982/' snippy.fasta
sed -i 's/SAMEA3212897/SAMEA3212897_1981/' snippy.fasta
sed -i 's/SAMEA3212898/SAMEA3212898_2003/' snippy.fasta
sed -i 's/SAMEA3212899/SAMEA3212899_2001/' snippy.fasta
sed -i 's/SAMEA3212900/SAMEA3212900_1982/' snippy.fasta
sed -i 's/SAMEA3212901/SAMEA3212901_2002/' snippy.fasta
sed -i 's/SAMEA3212902/SAMEA3212902_1981/' snippy.fasta
sed -i 's/SAMEA3212903/SAMEA3212903_2004/' snippy.fasta
sed -i 's/SAMEA3212904/SAMEA3212904_2002/' snippy.fasta
sed -i 's/SAMEA3212905/SAMEA3212905_2009/' snippy.fasta
sed -i 's/SAMEA3212906/SAMEA3212906_2009/' snippy.fasta
sed -i 's/SAMEA3212907/SAMEA3212907_1982/' snippy.fasta
sed -i 's/SAMEA3212908/SAMEA3212908_2005/' snippy.fasta
sed -i 's/SAMEA3212909/SAMEA3212909_2002/' snippy.fasta
sed -i 's/SAMEA3212910/SAMEA3212910_2008/' snippy.fasta
sed -i 's/SAMEA3212911/SAMEA3212911_2005/' snippy.fasta
sed -i 's/SAMEA3212912/SAMEA3212912_2002/' snippy.fasta
sed -i 's/SAMEA3212913/SAMEA3212913_2001/' snippy.fasta
sed -i 's/SAMEA3212914/SAMEA3212914_2001/' snippy.fasta
sed -i 's/SAMEA3212915/SAMEA3212915_2006/' snippy.fasta
sed -i 's/SAMEA3212916/SAMEA3212916_2004/' snippy.fasta
sed -i 's/SAMEA3212917/SAMEA3212917_2008/' snippy.fasta
sed -i 's/SAMEA3212918/SAMEA3212918_2000/' snippy.fasta
sed -i 's/SAMEA3212919/SAMEA3212919_2003/' snippy.fasta
sed -i 's/SAMEA3212920/SAMEA3212920_1982/' snippy.fasta
sed -i 's/SAMEA3212921/SAMEA3212921_1996/' snippy.fasta
sed -i 's/SAMEA3212922/SAMEA3212922_1982/' snippy.fasta
sed -i 's/SAMEA3212923/SAMEA3212923_2005/' snippy.fasta
sed -i 's/SAMEA3212924/SAMEA3212924_2008/' snippy.fasta
sed -i 's/SAMEA3212925/SAMEA3212925_2001/' snippy.fasta
sed -i 's/SAMEA3212926/SAMEA3212926_1998/' snippy.fasta
sed -i 's/SAMEA3212927/SAMEA3212927_1982/' snippy.fasta
sed -i 's/SAMEA3212928/SAMEA3212928_2004/' snippy.fasta
sed -i 's/SAMEA3212929/SAMEA3212929_1982/' snippy.fasta
sed -i 's/SAMEA3212930/SAMEA3212930_1996/' snippy.fasta
sed -i 's/SAMEA3212931/SAMEA3212931_2003/' snippy.fasta
sed -i 's/SAMEA3212932/SAMEA3212932_1982/' snippy.fasta
sed -i 's/SAMEA3212933/SAMEA3212933_2007/' snippy.fasta
sed -i 's/SAMEA3212934/SAMEA3212934_2004/' snippy.fasta
sed -i 's/SAMEA3212935/SAMEA3212935_2007/' snippy.fasta
sed -i 's/SAMEA3212936/SAMEA3212936_2005/' snippy.fasta
sed -i 's/SAMEA3212937/SAMEA3212937_2005/' snippy.fasta
sed -i 's/SAMEA3212938/SAMEA3212938_2005/' snippy.fasta
sed -i 's/SAMEA3212939/SAMEA3212939_2007/' snippy.fasta
sed -i 's/SAMEA3212940/SAMEA3212940_2005/' snippy.fasta
sed -i 's/SAMEA3212941/SAMEA3212941_1982/' snippy.fasta
sed -i 's/SAMEA3212942/SAMEA3212942_2004/' snippy.fasta
sed -i 's/SAMEA3212943/SAMEA3212943_2012/' snippy.fasta
sed -i 's/SAMEA3212944/SAMEA3212944_2007/' snippy.fasta
sed -i 's/SAMEA3212945/SAMEA3212945_2005/' snippy.fasta
sed -i 's/SAMEA3212946/SAMEA3212946_1998/' snippy.fasta
sed -i 's/SAMEA3212947/SAMEA3212947_1982/' snippy.fasta
sed -i 's/SAMEA3212948/SAMEA3212948_2000/' snippy.fasta
sed -i 's/SAMEA3212949/SAMEA3212949_2001/' snippy.fasta
sed -i 's/SAMEA3212950/SAMEA3212950_1982/' snippy.fasta
sed -i 's/SAMEA3212951/SAMEA3212951_2005/' snippy.fasta
sed -i 's/SAMEA3212952/SAMEA3212952_2001/' snippy.fasta
sed -i 's/SAMEA3212953/SAMEA3212953_2001/' snippy.fasta
sed -i 's/SAMEA3212954/SAMEA3212954_2004/' snippy.fasta
sed -i 's/SAMEA3212955/SAMEA3212955_2005/' snippy.fasta
sed -i 's/SAMEA3212956/SAMEA3212956_2003/' snippy.fasta
sed -i 's/SAMEA3212957/SAMEA3212957_2005/' snippy.fasta
sed -i 's/SAMEA3212958/SAMEA3212958_1999/' snippy.fasta
sed -i 's/SAMEA3212959/SAMEA3212959_2007/' snippy.fasta
sed -i 's/SAMEA3212960/SAMEA3212960_2003/' snippy.fasta
sed -i 's/SAMEA3212961/SAMEA3212961_1999/' snippy.fasta
sed -i 's/SAMEA3212962/SAMEA3212962_2001/' snippy.fasta
sed -i 's/SAMEA3212963/SAMEA3212963_2005/' snippy.fasta
sed -i 's/SAMEA3212964/SAMEA3212964_2001/' snippy.fasta
sed -i 's/SAMEA3212965/SAMEA3212965_2008/' snippy.fasta
sed -i 's/SAMEA3212966/SAMEA3212966_2008/' snippy.fasta
sed -i 's/SAMEA3212967/SAMEA3212967_2003/' snippy.fasta
sed -i 's/SAMEA3212968/SAMEA3212968_1982/' snippy.fasta
sed -i 's/SAMEA3212969/SAMEA3212969_1999/' snippy.fasta
```



# Run Gubbins

```bash
cd /home/wickr/Core_SNP_paper/dataset_3_S_aureus_ST239
conda activate gubbins
run_gubbins.py snippy.fasta --prefix gubbins --threads 32 --filter-percentage 100
```




# Make a Gubbins alignment

```bash
cd /home/wickr/Core_SNP_paper/dataset_3_S_aureus_ST239
mask_gubbins_aln.py --aln snippy.fasta --gff gubbins.recombination_predictions.gff --out snippy_gubbins.fasta
seqtk seq snippy_gubbins.fasta > temp.fasta; mv temp.fasta snippy_gubbins.fasta
```
