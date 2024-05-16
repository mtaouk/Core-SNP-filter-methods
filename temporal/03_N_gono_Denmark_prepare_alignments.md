# Paper

I used the dataset from this paper:
https://bmcgenomics.biomedcentral.com/articles/10.1186/s12864-020-6511-6

I got dates from Pathogenwatch:
https://pathogen.watch/genomes/all?collection=xazjz3gx75on-golparian-et-al-2020

And read links from EBI:
https://www.ebi.ac.uk/ena/browser/view/PRJEB4024





# Download reads

```bash
cd /home/wickr/Core_SNP_paper/dataset_2_N_gono_Denmark/reads
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2228978_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR439/ERR439284/ERR439284_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2228978_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR439/ERR439284/ERR439284_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2228979_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR439/ERR439285/ERR439285_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2228979_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR439/ERR439285/ERR439285_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2228980_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR439/ERR439286/ERR439286_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2228980_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR439/ERR439286/ERR439286_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2228981_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR439/ERR439287/ERR439287_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2228981_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR439/ERR439287/ERR439287_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2228982_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR439/ERR439288/ERR439288_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2228982_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR439/ERR439288/ERR439288_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2228984_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR439/ERR439290/ERR439290_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2228984_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR439/ERR439290/ERR439290_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2228985_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR439/ERR439291/ERR439291_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2228985_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR439/ERR439291/ERR439291_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2228986_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR439/ERR439292/ERR439292_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2228986_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR439/ERR439292/ERR439292_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2228987_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR439/ERR439293/ERR439293_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2228987_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR439/ERR439293/ERR439293_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2228988_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR439/ERR439294/ERR439294_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2228988_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR439/ERR439294/ERR439294_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2228989_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR439/ERR439295/ERR439295_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2228989_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR439/ERR439295/ERR439295_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2228990_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR439/ERR439296/ERR439296_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2228990_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR439/ERR439296/ERR439296_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2228991_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR439/ERR439297/ERR439297_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2228991_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR439/ERR439297/ERR439297_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2228995_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR439/ERR439301/ERR439301_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2228995_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR439/ERR439301/ERR439301_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2228996_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR439/ERR439302/ERR439302_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2228996_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR439/ERR439302/ERR439302_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2228998_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR439/ERR439304/ERR439304_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2228998_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR439/ERR439304/ERR439304_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2228999_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR439/ERR439305/ERR439305_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2228999_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR439/ERR439305/ERR439305_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229001_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR439/ERR439307/ERR439307_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229001_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR439/ERR439307/ERR439307_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229002_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR439/ERR439308/ERR439308_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229002_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR439/ERR439308/ERR439308_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229003_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR439/ERR439309/ERR439309_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229003_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR439/ERR439309/ERR439309_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229004_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR439/ERR439310/ERR439310_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229004_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR439/ERR439310/ERR439310_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229005_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR439/ERR439311/ERR439311_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229005_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR439/ERR439311/ERR439311_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229006_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR439/ERR439312/ERR439312_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229006_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR439/ERR439312/ERR439312_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229007_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR439/ERR439313/ERR439313_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229007_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR439/ERR439313/ERR439313_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229008_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR439/ERR439314/ERR439314_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229008_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR439/ERR439314/ERR439314_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229009_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR439/ERR439315/ERR439315_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229009_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR439/ERR439315/ERR439315_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229010_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR439/ERR439316/ERR439316_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229010_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR439/ERR439316/ERR439316_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229011_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR439/ERR439317/ERR439317_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229011_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR439/ERR439317/ERR439317_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229012_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR439/ERR439318/ERR439318_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229012_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR439/ERR439318/ERR439318_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229013_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR439/ERR439319/ERR439319_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229013_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR439/ERR439319/ERR439319_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229014_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR439/ERR439320/ERR439320_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229014_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR439/ERR439320/ERR439320_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229015_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR439/ERR439321/ERR439321_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229015_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR439/ERR439321/ERR439321_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229017_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR439/ERR439323/ERR439323_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229017_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR439/ERR439323/ERR439323_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229018_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR439/ERR439324/ERR439324_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229018_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR439/ERR439324/ERR439324_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229019_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR439/ERR439325/ERR439325_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229019_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR439/ERR439325/ERR439325_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229020_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR439/ERR439326/ERR439326_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229020_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR439/ERR439326/ERR439326_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229021_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR439/ERR439327/ERR439327_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229021_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR439/ERR439327/ERR439327_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229022_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR439/ERR439328/ERR439328_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229022_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR439/ERR439328/ERR439328_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229023_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR439/ERR439329/ERR439329_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229023_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR439/ERR439329/ERR439329_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229025_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR439/ERR439331/ERR439331_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229025_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR439/ERR439331/ERR439331_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229028_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR439/ERR439334/ERR439334_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229028_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR439/ERR439334/ERR439334_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229029_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR439/ERR439335/ERR439335_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229029_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR439/ERR439335/ERR439335_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229030_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR439/ERR439336/ERR439336_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229030_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR439/ERR439336/ERR439336_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229031_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR439/ERR439337/ERR439337_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229031_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR439/ERR439337/ERR439337_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229032_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR439/ERR439338/ERR439338_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229032_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR439/ERR439338/ERR439338_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229036_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR439/ERR439342/ERR439342_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229036_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR439/ERR439342/ERR439342_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229037_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR439/ERR439343/ERR439343_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229037_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR439/ERR439343/ERR439343_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229038_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR439/ERR439344/ERR439344_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229038_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR439/ERR439344/ERR439344_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229039_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR439/ERR439345/ERR439345_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229039_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR439/ERR439345/ERR439345_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229041_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR439/ERR439347/ERR439347_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229041_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR439/ERR439347/ERR439347_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229042_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR439/ERR439348/ERR439348_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229042_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR439/ERR439348/ERR439348_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229043_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR439/ERR439349/ERR439349_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229043_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR439/ERR439349/ERR439349_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229044_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR439/ERR439350/ERR439350_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229044_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR439/ERR439350/ERR439350_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229045_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR439/ERR439351/ERR439351_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229045_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR439/ERR439351/ERR439351_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229046_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR439/ERR439352/ERR439352_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229046_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR439/ERR439352/ERR439352_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229047_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR439/ERR439353/ERR439353_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229047_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR439/ERR439353/ERR439353_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229048_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR439/ERR439354/ERR439354_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229048_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR439/ERR439354/ERR439354_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229049_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR439/ERR439355/ERR439355_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229049_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR439/ERR439355/ERR439355_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229050_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR439/ERR439356/ERR439356_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229050_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR439/ERR439356/ERR439356_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229051_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR439/ERR439357/ERR439357_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229051_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR439/ERR439357/ERR439357_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229053_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR439/ERR439359/ERR439359_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229053_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR439/ERR439359/ERR439359_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229054_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR439/ERR439360/ERR439360_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229054_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR439/ERR439360/ERR439360_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229055_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR439/ERR439361/ERR439361_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229055_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR439/ERR439361/ERR439361_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229056_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR439/ERR439362/ERR439362_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229056_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR439/ERR439362/ERR439362_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229057_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR439/ERR439363/ERR439363_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229057_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR439/ERR439363/ERR439363_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229058_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR439/ERR439364/ERR439364_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229058_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR439/ERR439364/ERR439364_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229060_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR439/ERR439366/ERR439366_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229060_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR439/ERR439366/ERR439366_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229061_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR439/ERR439367/ERR439367_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229061_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR439/ERR439367/ERR439367_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229064_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR439/ERR439370/ERR439370_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229064_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR439/ERR439370/ERR439370_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229065_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR439/ERR439371/ERR439371_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229065_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR439/ERR439371/ERR439371_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229067_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR439/ERR439373/ERR439373_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229067_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR439/ERR439373/ERR439373_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229069_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR449/ERR449545/ERR449545_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229069_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR449/ERR449545/ERR449545_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229070_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR449/ERR449546/ERR449546_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229070_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR449/ERR449546/ERR449546_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229077_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR449/ERR449553/ERR449553_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229077_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR449/ERR449553/ERR449553_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229078_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR449/ERR449554/ERR449554_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229078_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR449/ERR449554/ERR449554_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229079_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR449/ERR449555/ERR449555_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229079_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR449/ERR449555/ERR449555_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229080_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR449/ERR449556/ERR449556_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229080_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR449/ERR449556/ERR449556_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229083_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR449/ERR449559/ERR449559_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229083_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR449/ERR449559/ERR449559_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229084_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR449/ERR449560/ERR449560_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229084_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR449/ERR449560/ERR449560_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229085_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR449/ERR449561/ERR449561_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229085_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR449/ERR449561/ERR449561_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229086_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR449/ERR449562/ERR449562_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229086_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR449/ERR449562/ERR449562_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229088_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR449/ERR449564/ERR449564_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229088_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR449/ERR449564/ERR449564_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229089_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR449/ERR449565/ERR449565_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229089_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR449/ERR449565/ERR449565_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229090_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR449/ERR449566/ERR449566_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229090_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR449/ERR449566/ERR449566_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229091_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR449/ERR449567/ERR449567_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229091_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR449/ERR449567/ERR449567_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229092_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR449/ERR449568/ERR449568_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229092_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR449/ERR449568/ERR449568_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229093_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR449/ERR449569/ERR449569_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229093_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR449/ERR449569/ERR449569_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229095_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR449/ERR449571/ERR449571_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229095_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR449/ERR449571/ERR449571_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229096_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR449/ERR449572/ERR449572_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229096_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR449/ERR449572/ERR449572_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229097_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR449/ERR449573/ERR449573_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229097_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR449/ERR449573/ERR449573_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229098_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR449/ERR449574/ERR449574_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229098_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR449/ERR449574/ERR449574_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229100_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR449/ERR449576/ERR449576_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229100_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR449/ERR449576/ERR449576_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229101_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR449/ERR449577/ERR449577_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229101_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR449/ERR449577/ERR449577_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229102_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR449/ERR449578/ERR449578_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229102_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR449/ERR449578/ERR449578_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229103_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR449/ERR449579/ERR449579_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229103_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR449/ERR449579/ERR449579_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229104_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR449/ERR449580/ERR449580_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229104_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR449/ERR449580/ERR449580_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229105_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR449/ERR449581/ERR449581_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229105_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR449/ERR449581/ERR449581_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229106_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR449/ERR449582/ERR449582_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229106_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR449/ERR449582/ERR449582_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229107_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR449/ERR449583/ERR449583_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229107_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR449/ERR449583/ERR449583_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229108_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR449/ERR449584/ERR449584_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229108_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR449/ERR449584/ERR449584_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229109_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR449/ERR449585/ERR449585_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229109_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR449/ERR449585/ERR449585_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229110_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR449/ERR449586/ERR449586_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229110_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR449/ERR449586/ERR449586_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229112_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR449/ERR449588/ERR449588_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229112_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR449/ERR449588/ERR449588_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229113_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR449/ERR449589/ERR449589_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229113_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR449/ERR449589/ERR449589_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229114_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR449/ERR449590/ERR449590_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229114_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR449/ERR449590/ERR449590_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229115_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR449/ERR449591/ERR449591_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229115_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR449/ERR449591/ERR449591_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229116_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR449/ERR449592/ERR449592_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2229116_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR449/ERR449592/ERR449592_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2298446_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR502/ERR502176/ERR502176_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2298446_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR502/ERR502176/ERR502176_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2298447_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR502/ERR502177/ERR502177_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2298447_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR502/ERR502177/ERR502177_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2298448_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR502/ERR502178/ERR502178_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2298448_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR502/ERR502178/ERR502178_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2298449_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR502/ERR502179/ERR502179_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2298449_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR502/ERR502179/ERR502179_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2298450_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR502/ERR502180/ERR502180_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2298450_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR502/ERR502180/ERR502180_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2298452_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR502/ERR502182/ERR502182_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2298452_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR502/ERR502182/ERR502182_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2298453_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR502/ERR502183/ERR502183_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2298453_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR502/ERR502183/ERR502183_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2298454_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR502/ERR502184/ERR502184_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2298454_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR502/ERR502184/ERR502184_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2298455_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR502/ERR502185/ERR502185_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2298455_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR502/ERR502185/ERR502185_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2298456_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR502/ERR502186/ERR502186_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2298456_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR502/ERR502186/ERR502186_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2298457_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR502/ERR502187/ERR502187_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2298457_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR502/ERR502187/ERR502187_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2298458_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR502/ERR502188/ERR502188_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2298458_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR502/ERR502188/ERR502188_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2298459_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR502/ERR502189/ERR502189_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2298459_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR502/ERR502189/ERR502189_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2298461_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR502/ERR502191/ERR502191_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2298461_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR502/ERR502191/ERR502191_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2298462_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR502/ERR502192/ERR502192_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2298462_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR502/ERR502192/ERR502192_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2298463_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR502/ERR502193/ERR502193_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2298463_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR502/ERR502193/ERR502193_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2298465_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR502/ERR502195/ERR502195_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2298465_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR502/ERR502195/ERR502195_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2298466_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR502/ERR502196/ERR502196_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2298466_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR502/ERR502196/ERR502196_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2298467_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR502/ERR502197/ERR502197_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2298467_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR502/ERR502197/ERR502197_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2298468_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR502/ERR502198/ERR502198_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2298468_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR502/ERR502198/ERR502198_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2298469_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR502/ERR502199/ERR502199_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2298469_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR502/ERR502199/ERR502199_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2298470_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR502/ERR502200/ERR502200_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2298470_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR502/ERR502200/ERR502200_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2298471_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR502/ERR502201/ERR502201_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2298471_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR502/ERR502201/ERR502201_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2298472_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR502/ERR502202/ERR502202_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2298472_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR502/ERR502202/ERR502202_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2298473_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR502/ERR502203/ERR502203_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2298473_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR502/ERR502203/ERR502203_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2298474_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR502/ERR502204/ERR502204_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2298474_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR502/ERR502204/ERR502204_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2298475_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR502/ERR502205/ERR502205_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2298475_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR502/ERR502205/ERR502205_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2298477_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR502/ERR502207/ERR502207_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2298477_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR502/ERR502207/ERR502207_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2298478_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR502/ERR502208/ERR502208_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2298478_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR502/ERR502208/ERR502208_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2298479_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR502/ERR502209/ERR502209_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2298479_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR502/ERR502209/ERR502209_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2298480_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR502/ERR502210/ERR502210_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2298480_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR502/ERR502210/ERR502210_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2298481_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR502/ERR502211/ERR502211_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2298481_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR502/ERR502211/ERR502211_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2298482_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR502/ERR502212/ERR502212_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2298482_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR502/ERR502212/ERR502212_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2298483_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR502/ERR502213/ERR502213_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2298483_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR502/ERR502213/ERR502213_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2298484_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR502/ERR502214/ERR502214_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2298484_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR502/ERR502214/ERR502214_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2298485_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR502/ERR502215/ERR502215_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2298485_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR502/ERR502215/ERR502215_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2298486_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR502/ERR502216/ERR502216_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2298486_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR502/ERR502216/ERR502216_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2298487_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR502/ERR502217/ERR502217_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2298487_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR502/ERR502217/ERR502217_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2298488_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR502/ERR502218/ERR502218_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2298488_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR502/ERR502218/ERR502218_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2298489_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR502/ERR502219/ERR502219_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2298489_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR502/ERR502219/ERR502219_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2298490_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR502/ERR502220/ERR502220_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2298490_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR502/ERR502220/ERR502220_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2298491_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR502/ERR502221/ERR502221_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2298491_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR502/ERR502221/ERR502221_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2298492_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR502/ERR502222/ERR502222_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2298492_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR502/ERR502222/ERR502222_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2298493_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR502/ERR502223/ERR502223_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2298493_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR502/ERR502223/ERR502223_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2298494_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR502/ERR502224/ERR502224_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2298494_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR502/ERR502224/ERR502224_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2298495_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR502/ERR502225/ERR502225_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2298495_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR502/ERR502225/ERR502225_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2298496_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR502/ERR502226/ERR502226_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2298496_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR502/ERR502226/ERR502226_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2298497_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR502/ERR502227/ERR502227_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2298497_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR502/ERR502227/ERR502227_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2298498_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR502/ERR502228/ERR502228_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2298498_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR502/ERR502228/ERR502228_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2298499_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR502/ERR502229/ERR502229_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2298499_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR502/ERR502229/ERR502229_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2298500_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR502/ERR502230/ERR502230_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2298500_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR502/ERR502230/ERR502230_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2298501_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR502/ERR502231/ERR502231_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2298501_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR502/ERR502231/ERR502231_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2298502_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR502/ERR502232/ERR502232_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2298502_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR502/ERR502232/ERR502232_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2298503_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR502/ERR502233/ERR502233_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2298503_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR502/ERR502233/ERR502233_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2298504_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR502/ERR502234/ERR502234_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2298504_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR502/ERR502234/ERR502234_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2298505_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR502/ERR502235/ERR502235_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2298505_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR502/ERR502235/ERR502235_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2298506_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR502/ERR502236/ERR502236_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2298506_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR502/ERR502236/ERR502236_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2298507_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR502/ERR502237/ERR502237_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2298507_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR502/ERR502237/ERR502237_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2738416_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR775/ERR775153/ERR775153_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2738416_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR775/ERR775153/ERR775153_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2738417_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR775/ERR775154/ERR775154_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2738417_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR775/ERR775154/ERR775154_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2738422_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR775/ERR775141/ERR775141_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2738422_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR775/ERR775141/ERR775141_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2738424_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR779/ERR779758/ERR779758_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2738424_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR779/ERR779758/ERR779758_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2738436_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR775/ERR775147/ERR775147_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2738436_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR775/ERR775147/ERR775147_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2738438_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR775/ERR775149/ERR775149_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2738438_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR775/ERR775149/ERR775149_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2738439_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR775/ERR775150/ERR775150_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2738439_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR775/ERR775150/ERR775150_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2738441_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR779/ERR779765/ERR779765_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2738441_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR779/ERR779765/ERR779765_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2738446_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR779/ERR779770/ERR779770_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2738446_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR779/ERR779770/ERR779770_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2738447_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR779/ERR779771/ERR779771_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2738447_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR779/ERR779771/ERR779771_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2738448_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR779/ERR779772/ERR779772_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2738448_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR779/ERR779772/ERR779772_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2738450_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR779/ERR779774/ERR779774_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2738450_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR779/ERR779774/ERR779774_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2738454_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR779/ERR779778/ERR779778_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2738454_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR779/ERR779778/ERR779778_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2738462_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR779/ERR779786/ERR779786_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2738462_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR779/ERR779786/ERR779786_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2738470_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR779/ERR779794/ERR779794_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2738470_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR779/ERR779794/ERR779794_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2738475_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR779/ERR779799/ERR779799_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2738475_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR779/ERR779799/ERR779799_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2738478_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR779/ERR779802/ERR779802_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2738478_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR779/ERR779802/ERR779802_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2738479_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR779/ERR779803/ERR779803_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2738479_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR779/ERR779803/ERR779803_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2738487_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR779/ERR779811/ERR779811_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2738487_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR779/ERR779811/ERR779811_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2738494_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR779/ERR779818/ERR779818_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2738494_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR779/ERR779818/ERR779818_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2738496_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR779/ERR779820/ERR779820_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2738496_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR779/ERR779820/ERR779820_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2738497_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR779/ERR779821/ERR779821_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2738497_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR779/ERR779821/ERR779821_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2738504_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR779/ERR779828/ERR779828_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2738504_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR779/ERR779828/ERR779828_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2738505_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR779/ERR779829/ERR779829_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2738505_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR779/ERR779829/ERR779829_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2738509_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR779/ERR779833/ERR779833_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2738509_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR779/ERR779833/ERR779833_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2738512_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR779/ERR779836/ERR779836_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2738512_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR779/ERR779836/ERR779836_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2738513_1.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR779/ERR779837/ERR779837_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMEA2738513_2.fastq.gz ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR779/ERR779837/ERR779837_2.fastq.gz
```

Sanity check that the downloads look good (`_1.fastq.gz` and `_2.fastq.gz` files have the same number of reads):
```bash
cd /home/wickr/Core_SNP_paper/dataset_2_N_gono_Denmark/reads
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

_Neisseria gonorrhoeae_ WHO O (same as in paper):
```bash
cd /home/wickr/Core_SNP_paper/dataset_2_N_gono_Denmark
wget https://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/900/087/625/GCF_900087625.2_WHOO/GCF_900087625.2_WHOO_genomic.fna.gz
gunzip -c GCF_900087625.2_WHOO_genomic.fna.gz | seqtk seq | head -n2 > reference.fasta
```




# Run Snippy on each sample

```bash
conda activate snippy

base_dir=/home/wickr/Core_SNP_paper/dataset_2_N_gono_Denmark

for s in SAMEA2228978 SAMEA2228979 SAMEA2228980 SAMEA2228981 SAMEA2228982 SAMEA2228984 SAMEA2228985 SAMEA2228986 SAMEA2228987 SAMEA2228988 SAMEA2228989 SAMEA2228990 SAMEA2228991 SAMEA2228995 SAMEA2228996 SAMEA2228998 SAMEA2228999 SAMEA2229001 SAMEA2229002 SAMEA2229003 SAMEA2229004 SAMEA2229005 SAMEA2229006 SAMEA2229007 SAMEA2229008 SAMEA2229009 SAMEA2229010 SAMEA2229011 SAMEA2229012 SAMEA2229013 SAMEA2229014 SAMEA2229015 SAMEA2229017 SAMEA2229018 SAMEA2229019 SAMEA2229020 SAMEA2229021 SAMEA2229022 SAMEA2229023 SAMEA2229025 SAMEA2229028 SAMEA2229029 SAMEA2229030 SAMEA2229031 SAMEA2229032 SAMEA2229036 SAMEA2229037 SAMEA2229038 SAMEA2229039 SAMEA2229041 SAMEA2229042 SAMEA2229043 SAMEA2229044 SAMEA2229045 SAMEA2229046 SAMEA2229047 SAMEA2229048 SAMEA2229049 SAMEA2229050 SAMEA2229051 SAMEA2229053 SAMEA2229054 SAMEA2229055 SAMEA2229056 SAMEA2229057 SAMEA2229058 SAMEA2229060 SAMEA2229061 SAMEA2229064 SAMEA2229065 SAMEA2229067 SAMEA2229069 SAMEA2229070 SAMEA2229077 SAMEA2229078 SAMEA2229079 SAMEA2229080 SAMEA2229083 SAMEA2229084 SAMEA2229085 SAMEA2229086 SAMEA2229088 SAMEA2229089 SAMEA2229090 SAMEA2229091 SAMEA2229092 SAMEA2229093 SAMEA2229095 SAMEA2229096 SAMEA2229097 SAMEA2229098 SAMEA2229100 SAMEA2229101 SAMEA2229102 SAMEA2229103 SAMEA2229104 SAMEA2229105 SAMEA2229106 SAMEA2229107 SAMEA2229108 SAMEA2229109 SAMEA2229110 SAMEA2229112 SAMEA2229113 SAMEA2229114 SAMEA2229115 SAMEA2229116 SAMEA2298446 SAMEA2298447 SAMEA2298448 SAMEA2298449 SAMEA2298450 SAMEA2298452 SAMEA2298453 SAMEA2298454 SAMEA2298455 SAMEA2298456 SAMEA2298457 SAMEA2298458 SAMEA2298459 SAMEA2298461 SAMEA2298462 SAMEA2298463 SAMEA2298465 SAMEA2298466 SAMEA2298467 SAMEA2298468 SAMEA2298469 SAMEA2298470 SAMEA2298471 SAMEA2298472 SAMEA2298473 SAMEA2298474 SAMEA2298475 SAMEA2298477 SAMEA2298478 SAMEA2298479 SAMEA2298480 SAMEA2298481 SAMEA2298482 SAMEA2298483 SAMEA2298484 SAMEA2298485 SAMEA2298486 SAMEA2298487 SAMEA2298488 SAMEA2298489 SAMEA2298490 SAMEA2298491 SAMEA2298492 SAMEA2298493 SAMEA2298494 SAMEA2298495 SAMEA2298496 SAMEA2298497 SAMEA2298498 SAMEA2298499 SAMEA2298500 SAMEA2298501 SAMEA2298502 SAMEA2298503 SAMEA2298504 SAMEA2298505 SAMEA2298506 SAMEA2298507 SAMEA2738416 SAMEA2738417 SAMEA2738422 SAMEA2738424 SAMEA2738436 SAMEA2738438 SAMEA2738439 SAMEA2738441 SAMEA2738446 SAMEA2738447 SAMEA2738448 SAMEA2738450 SAMEA2738454 SAMEA2738462 SAMEA2738470 SAMEA2738475 SAMEA2738478 SAMEA2738479 SAMEA2738487 SAMEA2738494 SAMEA2738496 SAMEA2738497 SAMEA2738504 SAMEA2738505 SAMEA2738509 SAMEA2738512 SAMEA2738513; do
    r1="$base_dir"/reads/"$s"_1.fastq.gz
    r2="$base_dir"/reads/"$s"_2.fastq.gz
    cd "$base_dir"/snippy
    mkdir "$s"; cd "$s"
    /home/wickr/miniconda3/envs/assembly/bin/fastp --in1 "$r1" --in2 "$r2" --out1 illumina_1.fastq.gz --out2 illumina_2.fastq.gz
done

for s in SAMEA2228978 SAMEA2228979 SAMEA2228980 SAMEA2228981 SAMEA2228982 SAMEA2228984 SAMEA2228985 SAMEA2228986 SAMEA2228987 SAMEA2228988 SAMEA2228989 SAMEA2228990 SAMEA2228991 SAMEA2228995 SAMEA2228996 SAMEA2228998 SAMEA2228999 SAMEA2229001 SAMEA2229002 SAMEA2229003 SAMEA2229004 SAMEA2229005 SAMEA2229006 SAMEA2229007 SAMEA2229008 SAMEA2229009 SAMEA2229010 SAMEA2229011 SAMEA2229012 SAMEA2229013 SAMEA2229014 SAMEA2229015 SAMEA2229017 SAMEA2229018 SAMEA2229019 SAMEA2229020 SAMEA2229021 SAMEA2229022 SAMEA2229023 SAMEA2229025 SAMEA2229028 SAMEA2229029 SAMEA2229030 SAMEA2229031 SAMEA2229032 SAMEA2229036 SAMEA2229037 SAMEA2229038 SAMEA2229039 SAMEA2229041 SAMEA2229042 SAMEA2229043 SAMEA2229044 SAMEA2229045 SAMEA2229046 SAMEA2229047 SAMEA2229048 SAMEA2229049 SAMEA2229050 SAMEA2229051 SAMEA2229053 SAMEA2229054 SAMEA2229055 SAMEA2229056 SAMEA2229057 SAMEA2229058 SAMEA2229060 SAMEA2229061 SAMEA2229064 SAMEA2229065 SAMEA2229067 SAMEA2229069 SAMEA2229070 SAMEA2229077 SAMEA2229078 SAMEA2229079 SAMEA2229080 SAMEA2229083 SAMEA2229084 SAMEA2229085 SAMEA2229086 SAMEA2229088 SAMEA2229089 SAMEA2229090 SAMEA2229091 SAMEA2229092 SAMEA2229093 SAMEA2229095 SAMEA2229096 SAMEA2229097 SAMEA2229098 SAMEA2229100 SAMEA2229101 SAMEA2229102 SAMEA2229103 SAMEA2229104 SAMEA2229105 SAMEA2229106 SAMEA2229107 SAMEA2229108 SAMEA2229109 SAMEA2229110 SAMEA2229112 SAMEA2229113 SAMEA2229114 SAMEA2229115 SAMEA2229116 SAMEA2298446 SAMEA2298447 SAMEA2298448 SAMEA2298449 SAMEA2298450 SAMEA2298452 SAMEA2298453 SAMEA2298454 SAMEA2298455 SAMEA2298456 SAMEA2298457 SAMEA2298458 SAMEA2298459 SAMEA2298461 SAMEA2298462 SAMEA2298463 SAMEA2298465 SAMEA2298466 SAMEA2298467 SAMEA2298468 SAMEA2298469 SAMEA2298470 SAMEA2298471 SAMEA2298472 SAMEA2298473 SAMEA2298474 SAMEA2298475 SAMEA2298477 SAMEA2298478 SAMEA2298479 SAMEA2298480 SAMEA2298481 SAMEA2298482 SAMEA2298483 SAMEA2298484 SAMEA2298485 SAMEA2298486 SAMEA2298487 SAMEA2298488 SAMEA2298489 SAMEA2298490 SAMEA2298491 SAMEA2298492 SAMEA2298493 SAMEA2298494 SAMEA2298495 SAMEA2298496 SAMEA2298497 SAMEA2298498 SAMEA2298499 SAMEA2298500 SAMEA2298501 SAMEA2298502 SAMEA2298503 SAMEA2298504 SAMEA2298505 SAMEA2298506 SAMEA2298507 SAMEA2738416 SAMEA2738417 SAMEA2738422 SAMEA2738424 SAMEA2738436 SAMEA2738438 SAMEA2738439 SAMEA2738441 SAMEA2738446 SAMEA2738447 SAMEA2738448 SAMEA2738450 SAMEA2738454 SAMEA2738462 SAMEA2738470 SAMEA2738475 SAMEA2738478 SAMEA2738479 SAMEA2738487 SAMEA2738494 SAMEA2738496 SAMEA2738497 SAMEA2738504 SAMEA2738505 SAMEA2738509 SAMEA2738512 SAMEA2738513; do
    cd "$base_dir"/snippy/"$s"
    snippy --outdir . --R1 illumina_1.fastq.gz --R2 illumina_2.fastq.gz --ref /home/wickr/Core_SNP_paper/dataset_2_N_gono_Denmark/reference.fasta --cpus 32 --force --cleanup
    rm illumina_*.fastq.gz
done
```




# Combine Snippy results

```bash
conda activate snippy
cd /home/wickr/Core_SNP_paper/dataset_2_N_gono_Denmark/snippy
snippy-core --ref /home/wickr/Core_SNP_paper/dataset_2_N_gono_Denmark/reference.fasta SAM*
snippy-clean_full_aln core.full.aln | seqtk seq | tail -n+3 > ../snippy.fasta
```

Clean up
```bash
cd /home/wickr/Core_SNP_paper/dataset_2_N_gono_Denmark
rm -r snippy
```




# Add dates to isolate names

```bash
cd /home/wickr/Core_SNP_paper/dataset_2_N_gono_Denmark
sed -i 's/SAMEA2228978/SAMEA2228978_1940/' snippy.fasta
sed -i 's/SAMEA2228979/SAMEA2228979_1940/' snippy.fasta
sed -i 's/SAMEA2228980/SAMEA2228980_1940/' snippy.fasta
sed -i 's/SAMEA2228981/SAMEA2228981_1940/' snippy.fasta
sed -i 's/SAMEA2228982/SAMEA2228982_1940/' snippy.fasta
sed -i 's/SAMEA2228984/SAMEA2228984_1941/' snippy.fasta
sed -i 's/SAMEA2228985/SAMEA2228985_1941/' snippy.fasta
sed -i 's/SAMEA2228986/SAMEA2228986_1941/' snippy.fasta
sed -i 's/SAMEA2228987/SAMEA2228987_1941/' snippy.fasta
sed -i 's/SAMEA2228988/SAMEA2228988_1941/' snippy.fasta
sed -i 's/SAMEA2228989/SAMEA2228989_1941/' snippy.fasta
sed -i 's/SAMEA2228990/SAMEA2228990_1941/' snippy.fasta
sed -i 's/SAMEA2228991/SAMEA2228991_1941/' snippy.fasta
sed -i 's/SAMEA2228995/SAMEA2228995_1942/' snippy.fasta
sed -i 's/SAMEA2228996/SAMEA2228996_1942/' snippy.fasta
sed -i 's/SAMEA2228998/SAMEA2228998_1943/' snippy.fasta
sed -i 's/SAMEA2228999/SAMEA2228999_1943/' snippy.fasta
sed -i 's/SAMEA2229001/SAMEA2229001_1946/' snippy.fasta
sed -i 's/SAMEA2229002/SAMEA2229002_1946/' snippy.fasta
sed -i 's/SAMEA2229003/SAMEA2229003_1946/' snippy.fasta
sed -i 's/SAMEA2229004/SAMEA2229004_1946/' snippy.fasta
sed -i 's/SAMEA2229005/SAMEA2229005_1947/' snippy.fasta
sed -i 's/SAMEA2229006/SAMEA2229006_1928/' snippy.fasta
sed -i 's/SAMEA2229007/SAMEA2229007_1932/' snippy.fasta
sed -i 's/SAMEA2229008/SAMEA2229008_1932/' snippy.fasta
sed -i 's/SAMEA2229009/SAMEA2229009_1932/' snippy.fasta
sed -i 's/SAMEA2229010/SAMEA2229010_1932/' snippy.fasta
sed -i 's/SAMEA2229011/SAMEA2229011_1932/' snippy.fasta
sed -i 's/SAMEA2229012/SAMEA2229012_1932/' snippy.fasta
sed -i 's/SAMEA2229013/SAMEA2229013_1930/' snippy.fasta
sed -i 's/SAMEA2229014/SAMEA2229014_1928/' snippy.fasta
sed -i 's/SAMEA2229015/SAMEA2229015_1931/' snippy.fasta
sed -i 's/SAMEA2229017/SAMEA2229017_1947/' snippy.fasta
sed -i 's/SAMEA2229018/SAMEA2229018_1947/' snippy.fasta
sed -i 's/SAMEA2229019/SAMEA2229019_1951/' snippy.fasta
sed -i 's/SAMEA2229020/SAMEA2229020_1951/' snippy.fasta
sed -i 's/SAMEA2229021/SAMEA2229021_1951/' snippy.fasta
sed -i 's/SAMEA2229022/SAMEA2229022_1951/' snippy.fasta
sed -i 's/SAMEA2229023/SAMEA2229023_1951/' snippy.fasta
sed -i 's/SAMEA2229025/SAMEA2229025_1953/' snippy.fasta
sed -i 's/SAMEA2229028/SAMEA2229028_1953/' snippy.fasta
sed -i 's/SAMEA2229029/SAMEA2229029_1953/' snippy.fasta
sed -i 's/SAMEA2229030/SAMEA2229030_1954/' snippy.fasta
sed -i 's/SAMEA2229031/SAMEA2229031_1954/' snippy.fasta
sed -i 's/SAMEA2229032/SAMEA2229032_1954/' snippy.fasta
sed -i 's/SAMEA2229036/SAMEA2229036_1954/' snippy.fasta
sed -i 's/SAMEA2229037/SAMEA2229037_1954/' snippy.fasta
sed -i 's/SAMEA2229038/SAMEA2229038_1954/' snippy.fasta
sed -i 's/SAMEA2229039/SAMEA2229039_1954/' snippy.fasta
sed -i 's/SAMEA2229041/SAMEA2229041_1955/' snippy.fasta
sed -i 's/SAMEA2229042/SAMEA2229042_1955/' snippy.fasta
sed -i 's/SAMEA2229043/SAMEA2229043_1955/' snippy.fasta
sed -i 's/SAMEA2229044/SAMEA2229044_1955/' snippy.fasta
sed -i 's/SAMEA2229045/SAMEA2229045_1955/' snippy.fasta
sed -i 's/SAMEA2229046/SAMEA2229046_1955/' snippy.fasta
sed -i 's/SAMEA2229047/SAMEA2229047_1955/' snippy.fasta
sed -i 's/SAMEA2229048/SAMEA2229048_1955/' snippy.fasta
sed -i 's/SAMEA2229049/SAMEA2229049_1955/' snippy.fasta
sed -i 's/SAMEA2229050/SAMEA2229050_1969/' snippy.fasta
sed -i 's/SAMEA2229051/SAMEA2229051_1956/' snippy.fasta
sed -i 's/SAMEA2229053/SAMEA2229053_1956/' snippy.fasta
sed -i 's/SAMEA2229054/SAMEA2229054_1956/' snippy.fasta
sed -i 's/SAMEA2229055/SAMEA2229055_1956/' snippy.fasta
sed -i 's/SAMEA2229056/SAMEA2229056_1956/' snippy.fasta
sed -i 's/SAMEA2229057/SAMEA2229057_1956/' snippy.fasta
sed -i 's/SAMEA2229058/SAMEA2229058_1956/' snippy.fasta
sed -i 's/SAMEA2229060/SAMEA2229060_1958/' snippy.fasta
sed -i 's/SAMEA2229061/SAMEA2229061_1958/' snippy.fasta
sed -i 's/SAMEA2229064/SAMEA2229064_1961/' snippy.fasta
sed -i 's/SAMEA2229065/SAMEA2229065_1961/' snippy.fasta
sed -i 's/SAMEA2229067/SAMEA2229067_1961/' snippy.fasta
sed -i 's/SAMEA2229069/SAMEA2229069_1963/' snippy.fasta
sed -i 's/SAMEA2229070/SAMEA2229070_1963/' snippy.fasta
sed -i 's/SAMEA2229077/SAMEA2229077_1964/' snippy.fasta
sed -i 's/SAMEA2229078/SAMEA2229078_1964/' snippy.fasta
sed -i 's/SAMEA2229079/SAMEA2229079_1964/' snippy.fasta
sed -i 's/SAMEA2229080/SAMEA2229080_1964/' snippy.fasta
sed -i 's/SAMEA2229083/SAMEA2229083_1936/' snippy.fasta
sed -i 's/SAMEA2229084/SAMEA2229084_1936/' snippy.fasta
sed -i 's/SAMEA2229085/SAMEA2229085_1944/' snippy.fasta
sed -i 's/SAMEA2229086/SAMEA2229086_1945/' snippy.fasta
sed -i 's/SAMEA2229088/SAMEA2229088_1965/' snippy.fasta
sed -i 's/SAMEA2229089/SAMEA2229089_1940/' snippy.fasta
sed -i 's/SAMEA2229090/SAMEA2229090_1965/' snippy.fasta
sed -i 's/SAMEA2229091/SAMEA2229091_1945/' snippy.fasta
sed -i 's/SAMEA2229092/SAMEA2229092_1945/' snippy.fasta
sed -i 's/SAMEA2229093/SAMEA2229093_1940/' snippy.fasta
sed -i 's/SAMEA2229095/SAMEA2229095_1941/' snippy.fasta
sed -i 's/SAMEA2229096/SAMEA2229096_1941/' snippy.fasta
sed -i 's/SAMEA2229097/SAMEA2229097_1941/' snippy.fasta
sed -i 's/SAMEA2229098/SAMEA2229098_1967/' snippy.fasta
sed -i 's/SAMEA2229100/SAMEA2229100_1968/' snippy.fasta
sed -i 's/SAMEA2229101/SAMEA2229101_1968/' snippy.fasta
sed -i 's/SAMEA2229102/SAMEA2229102_1968/' snippy.fasta
sed -i 's/SAMEA2229103/SAMEA2229103_1943/' snippy.fasta
sed -i 's/SAMEA2229104/SAMEA2229104_1979/' snippy.fasta
sed -i 's/SAMEA2229105/SAMEA2229105_1979/' snippy.fasta
sed -i 's/SAMEA2229106/SAMEA2229106_1979/' snippy.fasta
sed -i 's/SAMEA2229107/SAMEA2229107_1979/' snippy.fasta
sed -i 's/SAMEA2229108/SAMEA2229108_1979/' snippy.fasta
sed -i 's/SAMEA2229109/SAMEA2229109_1979/' snippy.fasta
sed -i 's/SAMEA2229110/SAMEA2229110_1979/' snippy.fasta
sed -i 's/SAMEA2229112/SAMEA2229112_1979/' snippy.fasta
sed -i 's/SAMEA2229113/SAMEA2229113_1979/' snippy.fasta
sed -i 's/SAMEA2229114/SAMEA2229114_1942/' snippy.fasta
sed -i 's/SAMEA2229115/SAMEA2229115_1943/' snippy.fasta
sed -i 's/SAMEA2229116/SAMEA2229116_1943/' snippy.fasta
sed -i 's/SAMEA2298446/SAMEA2298446_1997/' snippy.fasta
sed -i 's/SAMEA2298447/SAMEA2298447_1997/' snippy.fasta
sed -i 's/SAMEA2298448/SAMEA2298448_1998/' snippy.fasta
sed -i 's/SAMEA2298449/SAMEA2298449_1998/' snippy.fasta
sed -i 's/SAMEA2298450/SAMEA2298450_2000/' snippy.fasta
sed -i 's/SAMEA2298452/SAMEA2298452_2002/' snippy.fasta
sed -i 's/SAMEA2298453/SAMEA2298453_2002/' snippy.fasta
sed -i 's/SAMEA2298454/SAMEA2298454_2004/' snippy.fasta
sed -i 's/SAMEA2298455/SAMEA2298455_2004/' snippy.fasta
sed -i 's/SAMEA2298456/SAMEA2298456_2006/' snippy.fasta
sed -i 's/SAMEA2298457/SAMEA2298457_2006/' snippy.fasta
sed -i 's/SAMEA2298458/SAMEA2298458_2007/' snippy.fasta
sed -i 's/SAMEA2298459/SAMEA2298459_2007/' snippy.fasta
sed -i 's/SAMEA2298461/SAMEA2298461_2008/' snippy.fasta
sed -i 's/SAMEA2298462/SAMEA2298462_2009/' snippy.fasta
sed -i 's/SAMEA2298463/SAMEA2298463_2009/' snippy.fasta
sed -i 's/SAMEA2298465/SAMEA2298465_2010/' snippy.fasta
sed -i 's/SAMEA2298466/SAMEA2298466_2013/' snippy.fasta
sed -i 's/SAMEA2298467/SAMEA2298467_2013/' snippy.fasta
sed -i 's/SAMEA2298468/SAMEA2298468_2013/' snippy.fasta
sed -i 's/SAMEA2298469/SAMEA2298469_2013/' snippy.fasta
sed -i 's/SAMEA2298470/SAMEA2298470_2013/' snippy.fasta
sed -i 's/SAMEA2298471/SAMEA2298471_2013/' snippy.fasta
sed -i 's/SAMEA2298472/SAMEA2298472_2013/' snippy.fasta
sed -i 's/SAMEA2298473/SAMEA2298473_2013/' snippy.fasta
sed -i 's/SAMEA2298474/SAMEA2298474_2013/' snippy.fasta
sed -i 's/SAMEA2298475/SAMEA2298475_2013/' snippy.fasta
sed -i 's/SAMEA2298477/SAMEA2298477_2013/' snippy.fasta
sed -i 's/SAMEA2298478/SAMEA2298478_2013/' snippy.fasta
sed -i 's/SAMEA2298479/SAMEA2298479_2013/' snippy.fasta
sed -i 's/SAMEA2298480/SAMEA2298480_2013/' snippy.fasta
sed -i 's/SAMEA2298481/SAMEA2298481_2013/' snippy.fasta
sed -i 's/SAMEA2298482/SAMEA2298482_2013/' snippy.fasta
sed -i 's/SAMEA2298483/SAMEA2298483_1980/' snippy.fasta
sed -i 's/SAMEA2298484/SAMEA2298484_1980/' snippy.fasta
sed -i 's/SAMEA2298485/SAMEA2298485_1981/' snippy.fasta
sed -i 's/SAMEA2298486/SAMEA2298486_1981/' snippy.fasta
sed -i 's/SAMEA2298487/SAMEA2298487_1982/' snippy.fasta
sed -i 's/SAMEA2298488/SAMEA2298488_1982/' snippy.fasta
sed -i 's/SAMEA2298489/SAMEA2298489_1983/' snippy.fasta
sed -i 's/SAMEA2298490/SAMEA2298490_1983/' snippy.fasta
sed -i 's/SAMEA2298491/SAMEA2298491_1984/' snippy.fasta
sed -i 's/SAMEA2298492/SAMEA2298492_1984/' snippy.fasta
sed -i 's/SAMEA2298493/SAMEA2298493_1985/' snippy.fasta
sed -i 's/SAMEA2298494/SAMEA2298494_1985/' snippy.fasta
sed -i 's/SAMEA2298495/SAMEA2298495_1986/' snippy.fasta
sed -i 's/SAMEA2298496/SAMEA2298496_1986/' snippy.fasta
sed -i 's/SAMEA2298497/SAMEA2298497_1987/' snippy.fasta
sed -i 's/SAMEA2298498/SAMEA2298498_1990/' snippy.fasta
sed -i 's/SAMEA2298499/SAMEA2298499_1990/' snippy.fasta
sed -i 's/SAMEA2298500/SAMEA2298500_1991/' snippy.fasta
sed -i 's/SAMEA2298501/SAMEA2298501_1991/' snippy.fasta
sed -i 's/SAMEA2298502/SAMEA2298502_1992/' snippy.fasta
sed -i 's/SAMEA2298503/SAMEA2298503_1995/' snippy.fasta
sed -i 's/SAMEA2298504/SAMEA2298504_1995/' snippy.fasta
sed -i 's/SAMEA2298505/SAMEA2298505_1995/' snippy.fasta
sed -i 's/SAMEA2298506/SAMEA2298506_1996/' snippy.fasta
sed -i 's/SAMEA2298507/SAMEA2298507_1996/' snippy.fasta
sed -i 's/SAMEA2738416/SAMEA2738416_1962/' snippy.fasta
sed -i 's/SAMEA2738417/SAMEA2738417_1962/' snippy.fasta
sed -i 's/SAMEA2738422/SAMEA2738422_1951/' snippy.fasta
sed -i 's/SAMEA2738424/SAMEA2738424_1946/' snippy.fasta
sed -i 's/SAMEA2738436/SAMEA2738436_1942/' snippy.fasta
sed -i 's/SAMEA2738438/SAMEA2738438_1942/' snippy.fasta
sed -i 's/SAMEA2738439/SAMEA2738439_1942/' snippy.fasta
sed -i 's/SAMEA2738441/SAMEA2738441_1944/' snippy.fasta
sed -i 's/SAMEA2738446/SAMEA2738446_1962/' snippy.fasta
sed -i 's/SAMEA2738447/SAMEA2738447_1959/' snippy.fasta
sed -i 's/SAMEA2738448/SAMEA2738448_1959/' snippy.fasta
sed -i 's/SAMEA2738450/SAMEA2738450_1958/' snippy.fasta
sed -i 's/SAMEA2738454/SAMEA2738454_1957/' snippy.fasta
sed -i 's/SAMEA2738462/SAMEA2738462_1957/' snippy.fasta
sed -i 's/SAMEA2738470/SAMEA2738470_1944/' snippy.fasta
sed -i 's/SAMEA2738475/SAMEA2738475_1944/' snippy.fasta
sed -i 's/SAMEA2738478/SAMEA2738478_1943/' snippy.fasta
sed -i 's/SAMEA2738479/SAMEA2738479_1956/' snippy.fasta
sed -i 's/SAMEA2738487/SAMEA2738487_1945/' snippy.fasta
sed -i 's/SAMEA2738494/SAMEA2738494_1940/' snippy.fasta
sed -i 's/SAMEA2738496/SAMEA2738496_1940/' snippy.fasta
sed -i 's/SAMEA2738497/SAMEA2738497_1940/' snippy.fasta
sed -i 's/SAMEA2738504/SAMEA2738504_1941/' snippy.fasta
sed -i 's/SAMEA2738505/SAMEA2738505_1941/' snippy.fasta
sed -i 's/SAMEA2738509/SAMEA2738509_1943/' snippy.fasta
sed -i 's/SAMEA2738512/SAMEA2738512_1943/' snippy.fasta
sed -i 's/SAMEA2738513/SAMEA2738513_1943/' snippy.fasta
```



# Run Gubbins

```bash
cd /home/wickr/Core_SNP_paper/dataset_2_N_gono_Denmark
conda activate gubbins
run_gubbins.py snippy.fasta --prefix gubbins --threads 32 --filter-percentage 100
```




# Make a Gubbins alignment

```bash
mask_gubbins_aln.py --aln snippy.fasta --gff gubbins.recombination_predictions.gff --out snippy_gubbins.fasta
seqtk seq snippy_gubbins.fasta > temp.fasta; mv temp.fasta snippy_gubbins.fasta
```
