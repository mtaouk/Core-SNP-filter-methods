# Paper

I used the dataset from this paper:
https://www.microbiologyresearch.org/content/journal/mgen/10.1099/mgen.0.000269

Dates were in the supp table:
https://www.microbiologyresearch.org/content/journal/mgen/10.1099/mgen.0.000269#supplementary_data

And read links from EBI:
https://www.ebi.ac.uk/ena/browser/view/PRJNA445436


There were 97 isolates in PRJNA445436, and I tossed out the one that didn't have paired-end reads (SAMN08784204) leaving me with 96.




# Download reads

```bash
cd /home/wickr/Core_SNP_paper/dataset_4_S_enterica_Kentucky/reads

wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784217_1.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/009/SRR6898489/SRR6898489_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784217_2.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/009/SRR6898489/SRR6898489_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784213_1.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/001/SRR6898491/SRR6898491_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784213_2.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/001/SRR6898491/SRR6898491_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784216_1.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/002/SRR6898492/SRR6898492_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784216_2.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/002/SRR6898492/SRR6898492_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784209_1.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/005/SRR6898495/SRR6898495_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784209_2.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/005/SRR6898495/SRR6898495_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784212_1.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/006/SRR6898496/SRR6898496_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784212_2.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/006/SRR6898496/SRR6898496_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784227_1.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/008/SRR6898498/SRR6898498_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784227_2.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/008/SRR6898498/SRR6898498_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784225_1.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/000/SRR6898500/SRR6898500_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784225_2.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/000/SRR6898500/SRR6898500_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784219_1.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/006/SRR6898506/SRR6898506_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784219_2.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/006/SRR6898506/SRR6898506_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784220_1.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/007/SRR6898507/SRR6898507_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784220_2.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/007/SRR6898507/SRR6898507_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784196_1.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/004/SRR6898514/SRR6898514_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784196_2.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/004/SRR6898514/SRR6898514_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784193_1.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/007/SRR6898517/SRR6898517_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784193_2.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/007/SRR6898517/SRR6898517_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784169_1.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/000/SRR6898530/SRR6898530_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784169_2.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/000/SRR6898530/SRR6898530_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784177_1.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/006/SRR6898536/SRR6898536_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784177_2.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/006/SRR6898536/SRR6898536_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784178_1.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/007/SRR6898537/SRR6898537_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784178_2.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/007/SRR6898537/SRR6898537_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784203_1.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/008/SRR6898538/SRR6898538_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784203_2.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/008/SRR6898538/SRR6898538_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784200_1.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/003/SRR6898543/SRR6898543_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784200_2.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/003/SRR6898543/SRR6898543_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784207_1.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/006/SRR6898546/SRR6898546_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784207_2.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/006/SRR6898546/SRR6898546_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784208_1.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/007/SRR6898547/SRR6898547_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784208_2.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/007/SRR6898547/SRR6898547_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784259_1.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/000/SRR6898550/SRR6898550_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784259_2.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/000/SRR6898550/SRR6898550_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784260_1.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/001/SRR6898551/SRR6898551_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784260_2.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/001/SRR6898551/SRR6898551_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784265_1.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/002/SRR6898552/SRR6898552_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784265_2.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/002/SRR6898552/SRR6898552_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784263_1.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/003/SRR6898553/SRR6898553_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784263_2.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/003/SRR6898553/SRR6898553_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784232_1.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/009/SRR6898559/SRR6898559_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784232_2.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/009/SRR6898559/SRR6898559_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784230_1.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/001/SRR6898561/SRR6898561_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784230_2.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/001/SRR6898561/SRR6898561_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784229_1.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/002/SRR6898562/SRR6898562_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784229_2.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/002/SRR6898562/SRR6898562_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784181_1.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/005/SRR6898565/SRR6898565_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784181_2.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/005/SRR6898565/SRR6898565_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784182_1.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/006/SRR6898566/SRR6898566_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784182_2.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/006/SRR6898566/SRR6898566_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784179_1.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/007/SRR6898567/SRR6898567_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784179_2.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/007/SRR6898567/SRR6898567_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784184_1.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/002/SRR6898572/SRR6898572_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784184_2.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/002/SRR6898572/SRR6898572_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784187_1.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/003/SRR6898573/SRR6898573_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784187_2.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/003/SRR6898573/SRR6898573_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784188_1.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/004/SRR6898574/SRR6898574_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784188_2.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/004/SRR6898574/SRR6898574_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784241_1.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/007/SRR6898577/SRR6898577_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784241_2.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/007/SRR6898577/SRR6898577_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784244_1.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/000/SRR6898580/SRR6898580_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784244_2.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/000/SRR6898580/SRR6898580_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784210_1.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/004/SRR6898494/SRR6898494_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784210_2.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/004/SRR6898494/SRR6898494_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784211_1.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/007/SRR6898497/SRR6898497_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784211_2.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/007/SRR6898497/SRR6898497_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784226_1.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/001/SRR6898501/SRR6898501_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784226_2.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/001/SRR6898501/SRR6898501_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784224_1.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/003/SRR6898503/SRR6898503_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784224_2.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/003/SRR6898503/SRR6898503_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784222_1.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/005/SRR6898505/SRR6898505_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784222_2.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/005/SRR6898505/SRR6898505_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784189_1.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/003/SRR6898513/SRR6898513_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784189_2.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/003/SRR6898513/SRR6898513_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784194_1.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/006/SRR6898516/SRR6898516_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784194_2.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/006/SRR6898516/SRR6898516_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784257_1.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/009/SRR6898519/SRR6898519_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784257_2.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/009/SRR6898519/SRR6898519_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784250_1.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/000/SRR6898520/SRR6898520_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784250_2.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/000/SRR6898520/SRR6898520_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784254_1.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/004/SRR6898524/SRR6898524_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784254_2.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/004/SRR6898524/SRR6898524_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784170_1.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/001/SRR6898531/SRR6898531_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784170_2.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/001/SRR6898531/SRR6898531_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784175_1.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/002/SRR6898532/SRR6898532_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784175_2.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/002/SRR6898532/SRR6898532_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784218_1.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/008/SRR6898488/SRR6898488_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784218_2.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/008/SRR6898488/SRR6898488_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784174_1.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/005/SRR6898535/SRR6898535_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784174_2.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/005/SRR6898535/SRR6898535_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784214_1.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/000/SRR6898490/SRR6898490_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784214_2.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/000/SRR6898490/SRR6898490_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784215_1.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/003/SRR6898493/SRR6898493_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784215_2.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/003/SRR6898493/SRR6898493_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784228_1.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/009/SRR6898499/SRR6898499_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784228_2.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/009/SRR6898499/SRR6898499_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784223_1.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/002/SRR6898502/SRR6898502_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784223_2.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/002/SRR6898502/SRR6898502_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784221_1.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/004/SRR6898504/SRR6898504_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784221_2.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/004/SRR6898504/SRR6898504_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784198_1.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/008/SRR6898508/SRR6898508_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784198_2.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/008/SRR6898508/SRR6898508_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784197_1.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/009/SRR6898509/SRR6898509_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784197_2.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/009/SRR6898509/SRR6898509_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784192_1.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/000/SRR6898510/SRR6898510_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784192_2.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/000/SRR6898510/SRR6898510_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784191_1.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/001/SRR6898511/SRR6898511_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784191_2.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/001/SRR6898511/SRR6898511_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784190_1.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/002/SRR6898512/SRR6898512_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784190_2.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/002/SRR6898512/SRR6898512_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784195_1.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/005/SRR6898515/SRR6898515_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784195_2.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/005/SRR6898515/SRR6898515_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784258_1.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/008/SRR6898518/SRR6898518_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784258_2.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/008/SRR6898518/SRR6898518_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784249_1.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/001/SRR6898521/SRR6898521_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784249_2.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/001/SRR6898521/SRR6898521_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784252_1.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/002/SRR6898522/SRR6898522_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784252_2.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/002/SRR6898522/SRR6898522_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784251_1.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/003/SRR6898523/SRR6898523_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784251_2.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/003/SRR6898523/SRR6898523_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784253_1.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/005/SRR6898525/SRR6898525_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784253_2.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/005/SRR6898525/SRR6898525_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784256_1.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/006/SRR6898526/SRR6898526_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784256_2.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/006/SRR6898526/SRR6898526_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784255_1.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/007/SRR6898527/SRR6898527_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784255_2.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/007/SRR6898527/SRR6898527_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784171_1.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/008/SRR6898528/SRR6898528_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784171_2.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/008/SRR6898528/SRR6898528_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784172_1.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/009/SRR6898529/SRR6898529_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784172_2.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/009/SRR6898529/SRR6898529_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784176_1.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/003/SRR6898533/SRR6898533_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784176_2.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/003/SRR6898533/SRR6898533_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784173_1.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/004/SRR6898534/SRR6898534_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784173_2.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/004/SRR6898534/SRR6898534_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784205_1.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/000/SRR6898540/SRR6898540_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784205_2.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/000/SRR6898540/SRR6898540_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784201_1.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/004/SRR6898544/SRR6898544_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784201_2.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/004/SRR6898544/SRR6898544_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784264_1.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/004/SRR6898554/SRR6898554_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784264_2.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/004/SRR6898554/SRR6898554_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784235_1.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/006/SRR6898556/SRR6898556_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784235_2.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/006/SRR6898556/SRR6898556_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784233_1.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/008/SRR6898558/SRR6898558_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784233_2.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/008/SRR6898558/SRR6898558_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784231_1.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/000/SRR6898560/SRR6898560_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784231_2.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/000/SRR6898560/SRR6898560_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784238_1.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/003/SRR6898563/SRR6898563_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784238_2.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/003/SRR6898563/SRR6898563_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784237_1.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/004/SRR6898564/SRR6898564_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784237_2.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/004/SRR6898564/SRR6898564_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784185_1.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/009/SRR6898569/SRR6898569_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784185_2.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/009/SRR6898569/SRR6898569_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784183_1.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/001/SRR6898571/SRR6898571_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784183_2.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/001/SRR6898571/SRR6898571_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784243_1.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/009/SRR6898579/SRR6898579_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784243_2.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/009/SRR6898579/SRR6898579_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784246_1.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/002/SRR6898582/SRR6898582_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784246_2.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/002/SRR6898582/SRR6898582_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784206_1.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/001/SRR6898541/SRR6898541_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784206_2.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/001/SRR6898541/SRR6898541_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784199_1.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/002/SRR6898542/SRR6898542_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784199_2.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/002/SRR6898542/SRR6898542_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784202_1.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/005/SRR6898545/SRR6898545_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784202_2.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/005/SRR6898545/SRR6898545_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784261_1.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/008/SRR6898548/SRR6898548_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784261_2.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/008/SRR6898548/SRR6898548_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784262_1.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/009/SRR6898549/SRR6898549_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784262_2.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/009/SRR6898549/SRR6898549_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784236_1.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/005/SRR6898555/SRR6898555_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784236_2.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/005/SRR6898555/SRR6898555_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784234_1.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/007/SRR6898557/SRR6898557_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784234_2.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/007/SRR6898557/SRR6898557_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784180_1.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/008/SRR6898568/SRR6898568_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784180_2.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/008/SRR6898568/SRR6898568_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784186_1.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/000/SRR6898570/SRR6898570_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784186_2.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/000/SRR6898570/SRR6898570_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784239_1.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/005/SRR6898575/SRR6898575_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784239_2.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/005/SRR6898575/SRR6898575_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784242_1.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/008/SRR6898578/SRR6898578_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784242_2.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/008/SRR6898578/SRR6898578_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784245_1.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/001/SRR6898581/SRR6898581_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784245_2.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/001/SRR6898581/SRR6898581_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784247_1.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/003/SRR6898583/SRR6898583_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784247_2.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/003/SRR6898583/SRR6898583_2.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784248_1.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/004/SRR6898584/SRR6898584_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784248_2.fastq.gz ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/004/SRR6898584/SRR6898584_2.fastq.gz

# This sample had three read files:
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784240.fastq.gz	ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/006/SRR6898576/SRR6898576.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784240_1.fastq.gz	ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/006/SRR6898576/SRR6898576_1.fastq.gz
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784240_2.fastq.gz	ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/006/SRR6898576/SRR6898576_2.fastq.gz
rm SAMN08784240.fastq.gz  # the unpaired file had very few reads

# And this sample had only one:
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -O SAMN08784204.fastq.gz	ftp.sra.ebi.ac.uk/vol1/fastq/SRR689/009/SRR6898539/SRR6898539.fastq.gz
rm SAMN08784204.fastq.gz
```

Sanity check that the downloads look good (`_1.fastq.gz` and `_2.fastq.gz` files have the same number of reads):
```bash
cd /home/wickr/Core_SNP_paper/dataset_4_S_enterica_Kentucky/reads
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

This is the same reference genome used in [Jane's paper](https://www.microbiologyresearch.org/content/journal/mgen/10.1099/mgen.0.000269), isolate 201001922 which is also _S. enterica_ Kentucky:
```bash
cd /home/wickr/Core_SNP_paper/dataset_4_S_enterica_Kentucky
wget https://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/003/030/965/GCF_003030965.1_ASM303096v1/GCF_003030965.1_ASM303096v1_genomic.fna.gz
gunzip -c GCF_003030965.1_ASM303096v1_genomic.fna.gz | seqtk seq | head -n2 > reference.fasta
```




# Run Snippy on each sample

```bash
conda activate snippy

base_dir=/home/wickr/Core_SNP_paper/dataset_4_S_enterica_Kentucky

for s in SAMN08784169 SAMN08784170 SAMN08784171 SAMN08784172 SAMN08784173 SAMN08784174 SAMN08784175 SAMN08784176 SAMN08784177 SAMN08784178 SAMN08784179 SAMN08784180 SAMN08784181 SAMN08784182 SAMN08784183 SAMN08784184 SAMN08784185 SAMN08784186 SAMN08784187 SAMN08784188 SAMN08784189 SAMN08784190 SAMN08784191 SAMN08784192 SAMN08784193 SAMN08784194 SAMN08784195 SAMN08784196 SAMN08784197 SAMN08784198 SAMN08784199 SAMN08784200 SAMN08784201 SAMN08784202 SAMN08784203 SAMN08784205 SAMN08784206 SAMN08784207 SAMN08784208 SAMN08784209 SAMN08784210 SAMN08784211 SAMN08784212 SAMN08784213 SAMN08784214 SAMN08784215 SAMN08784216 SAMN08784217 SAMN08784218 SAMN08784219 SAMN08784220 SAMN08784221 SAMN08784222 SAMN08784223 SAMN08784224 SAMN08784225 SAMN08784226 SAMN08784227 SAMN08784228 SAMN08784229 SAMN08784230 SAMN08784231 SAMN08784232 SAMN08784233 SAMN08784234 SAMN08784235 SAMN08784236 SAMN08784237 SAMN08784238 SAMN08784239 SAMN08784240 SAMN08784241 SAMN08784242 SAMN08784243 SAMN08784244 SAMN08784245 SAMN08784246 SAMN08784247 SAMN08784248 SAMN08784249 SAMN08784250 SAMN08784251 SAMN08784252 SAMN08784253 SAMN08784254 SAMN08784255 SAMN08784256 SAMN08784257 SAMN08784258 SAMN08784259 SAMN08784260 SAMN08784261 SAMN08784262 SAMN08784263 SAMN08784264 SAMN08784265; do
    r1="$base_dir"/reads/"$s"_1.fastq.gz
    r2="$base_dir"/reads/"$s"_2.fastq.gz
    cd "$base_dir"/snippy
    mkdir "$s"; cd "$s"
    /home/wickr/miniconda3/envs/assembly/bin/fastp --in1 "$r1" --in2 "$r2" --out1 illumina_1.fastq.gz --out2 illumina_2.fastq.gz
done

for s in SAMN08784169 SAMN08784170 SAMN08784171 SAMN08784172 SAMN08784173 SAMN08784174 SAMN08784175 SAMN08784176 SAMN08784177 SAMN08784178 SAMN08784179 SAMN08784180 SAMN08784181 SAMN08784182 SAMN08784183 SAMN08784184 SAMN08784185 SAMN08784186 SAMN08784187 SAMN08784188 SAMN08784189 SAMN08784190 SAMN08784191 SAMN08784192 SAMN08784193 SAMN08784194 SAMN08784195 SAMN08784196 SAMN08784197 SAMN08784198 SAMN08784199 SAMN08784200 SAMN08784201 SAMN08784202 SAMN08784203 SAMN08784205 SAMN08784206 SAMN08784207 SAMN08784208 SAMN08784209 SAMN08784210 SAMN08784211 SAMN08784212 SAMN08784213 SAMN08784214 SAMN08784215 SAMN08784216 SAMN08784217 SAMN08784218 SAMN08784219 SAMN08784220 SAMN08784221 SAMN08784222 SAMN08784223 SAMN08784224 SAMN08784225 SAMN08784226 SAMN08784227 SAMN08784228 SAMN08784229 SAMN08784230 SAMN08784231 SAMN08784232 SAMN08784233 SAMN08784234 SAMN08784235 SAMN08784236 SAMN08784237 SAMN08784238 SAMN08784239 SAMN08784240 SAMN08784241 SAMN08784242 SAMN08784243 SAMN08784244 SAMN08784245 SAMN08784246 SAMN08784247 SAMN08784248 SAMN08784249 SAMN08784250 SAMN08784251 SAMN08784252 SAMN08784253 SAMN08784254 SAMN08784255 SAMN08784256 SAMN08784257 SAMN08784258 SAMN08784259 SAMN08784260 SAMN08784261 SAMN08784262 SAMN08784263 SAMN08784264 SAMN08784265; do
    cd "$base_dir"/snippy/"$s"
    snippy --outdir . --R1 illumina_1.fastq.gz --R2 illumina_2.fastq.gz --ref "$base_dir"/reference.fasta --cpus 32 --force --cleanup && rm illumina_*.fastq.gz
done
```




# Combine Snippy results

```bash
conda activate snippy
cd /home/wickr/Core_SNP_paper/dataset_4_S_enterica_Kentucky/snippy
snippy-core --ref /home/wickr/Core_SNP_paper/dataset_4_S_enterica_Kentucky/reference.fasta SAM*
snippy-clean_full_aln core.full.aln | seqtk seq | tail -n+3 > ../snippy.fasta
```

Clean up
```bash
cd /home/wickr/Core_SNP_paper/dataset_4_S_enterica_Kentucky
rm -r snippy
```




# Add dates to isolate names

```bash
cd /home/wickr/Core_SNP_paper/dataset_4_S_enterica_Kentucky
sed -i 's/SAMN08784169/SAMN08784169_2015/' snippy.fasta
sed -i 's/SAMN08784170/SAMN08784170_2015/' snippy.fasta
sed -i 's/SAMN08784171/SAMN08784171_2012/' snippy.fasta
sed -i 's/SAMN08784172/SAMN08784172_2011/' snippy.fasta
sed -i 's/SAMN08784173/SAMN08784173_2012/' snippy.fasta
sed -i 's/SAMN08784174/SAMN08784174_2010/' snippy.fasta
sed -i 's/SAMN08784175/SAMN08784175_1937/' snippy.fasta
sed -i 's/SAMN08784176/SAMN08784176_1966/' snippy.fasta
sed -i 's/SAMN08784177/SAMN08784177_1976/' snippy.fasta
sed -i 's/SAMN08784178/SAMN08784178_1993/' snippy.fasta
sed -i 's/SAMN08784179/SAMN08784179_1994/' snippy.fasta
sed -i 's/SAMN08784180/SAMN08784180_1975/' snippy.fasta
sed -i 's/SAMN08784181/SAMN08784181_1961/' snippy.fasta
sed -i 's/SAMN08784182/SAMN08784182_2010/' snippy.fasta
sed -i 's/SAMN08784183/SAMN08784183_1985/' snippy.fasta
sed -i 's/SAMN08784184/SAMN08784184_1999/' snippy.fasta
sed -i 's/SAMN08784185/SAMN08784185_1997/' snippy.fasta
sed -i 's/SAMN08784186/SAMN08784186_1996/' snippy.fasta
sed -i 's/SAMN08784187/SAMN08784187_2000/' snippy.fasta
sed -i 's/SAMN08784188/SAMN08784188_2002/' snippy.fasta
sed -i 's/SAMN08784189/SAMN08784189_2001/' snippy.fasta
sed -i 's/SAMN08784190/SAMN08784190_1997/' snippy.fasta
sed -i 's/SAMN08784191/SAMN08784191_2005/' snippy.fasta
sed -i 's/SAMN08784192/SAMN08784192_2004/' snippy.fasta
sed -i 's/SAMN08784193/SAMN08784193_2008/' snippy.fasta
sed -i 's/SAMN08784194/SAMN08784194_2005/' snippy.fasta
sed -i 's/SAMN08784195/SAMN08784195_2005/' snippy.fasta
sed -i 's/SAMN08784196/SAMN08784196_2010/' snippy.fasta
sed -i 's/SAMN08784197/SAMN08784197_2011/' snippy.fasta
sed -i 's/SAMN08784198/SAMN08784198_2004/' snippy.fasta
sed -i 's/SAMN08784199/SAMN08784199_2004/' snippy.fasta
sed -i 's/SAMN08784200/SAMN08784200_2013/' snippy.fasta
sed -i 's/SAMN08784201/SAMN08784201_2011/' snippy.fasta
sed -i 's/SAMN08784202/SAMN08784202_2010/' snippy.fasta
sed -i 's/SAMN08784203/SAMN08784203_2009/' snippy.fasta
sed -i 's/SAMN08784205/SAMN08784205_2002/' snippy.fasta
sed -i 's/SAMN08784206/SAMN08784206_2005/' snippy.fasta
sed -i 's/SAMN08784207/SAMN08784207_2005/' snippy.fasta
sed -i 's/SAMN08784208/SAMN08784208_2010/' snippy.fasta
sed -i 's/SAMN08784209/SAMN08784209_2005/' snippy.fasta
sed -i 's/SAMN08784210/SAMN08784210_2006/' snippy.fasta
sed -i 's/SAMN08784211/SAMN08784211_2007/' snippy.fasta
sed -i 's/SAMN08784212/SAMN08784212_2012/' snippy.fasta
sed -i 's/SAMN08784213/SAMN08784213_2006/' snippy.fasta
sed -i 's/SAMN08784214/SAMN08784214_2009/' snippy.fasta
sed -i 's/SAMN08784215/SAMN08784215_2008/' snippy.fasta
sed -i 's/SAMN08784216/SAMN08784216_2011/' snippy.fasta
sed -i 's/SAMN08784217/SAMN08784217_2004/' snippy.fasta
sed -i 's/SAMN08784218/SAMN08784218_2010/' snippy.fasta
sed -i 's/SAMN08784219/SAMN08784219_2010/' snippy.fasta
sed -i 's/SAMN08784220/SAMN08784220_2005/' snippy.fasta
sed -i 's/SAMN08784221/SAMN08784221_2010/' snippy.fasta
sed -i 's/SAMN08784222/SAMN08784222_2005/' snippy.fasta
sed -i 's/SAMN08784223/SAMN08784223_2005/' snippy.fasta
sed -i 's/SAMN08784224/SAMN08784224_2009/' snippy.fasta
sed -i 's/SAMN08784225/SAMN08784225_2008/' snippy.fasta
sed -i 's/SAMN08784226/SAMN08784226_2006/' snippy.fasta
sed -i 's/SAMN08784227/SAMN08784227_2010/' snippy.fasta
sed -i 's/SAMN08784228/SAMN08784228_2010/' snippy.fasta
sed -i 's/SAMN08784229/SAMN08784229_2011/' snippy.fasta
sed -i 's/SAMN08784230/SAMN08784230_2011/' snippy.fasta
sed -i 's/SAMN08784231/SAMN08784231_2011/' snippy.fasta
sed -i 's/SAMN08784232/SAMN08784232_2010/' snippy.fasta
sed -i 's/SAMN08784233/SAMN08784233_2010/' snippy.fasta
sed -i 's/SAMN08784234/SAMN08784234_2010/' snippy.fasta
sed -i 's/SAMN08784235/SAMN08784235_2011/' snippy.fasta
sed -i 's/SAMN08784236/SAMN08784236_2010/' snippy.fasta
sed -i 's/SAMN08784237/SAMN08784237_2012/' snippy.fasta
sed -i 's/SAMN08784238/SAMN08784238_2012/' snippy.fasta
sed -i 's/SAMN08784239/SAMN08784239_2010/' snippy.fasta
sed -i 's/SAMN08784240/SAMN08784240_2009/' snippy.fasta
sed -i 's/SAMN08784241/SAMN08784241_2008/' snippy.fasta
sed -i 's/SAMN08784242/SAMN08784242_2007/' snippy.fasta
sed -i 's/SAMN08784243/SAMN08784243_2007/' snippy.fasta
sed -i 's/SAMN08784244/SAMN08784244_2012/' snippy.fasta
sed -i 's/SAMN08784245/SAMN08784245_2011/' snippy.fasta
sed -i 's/SAMN08784246/SAMN08784246_2011/' snippy.fasta
sed -i 's/SAMN08784247/SAMN08784247_2010/' snippy.fasta
sed -i 's/SAMN08784248/SAMN08784248_2009/' snippy.fasta
sed -i 's/SAMN08784249/SAMN08784249_2012/' snippy.fasta
sed -i 's/SAMN08784250/SAMN08784250_2013/' snippy.fasta
sed -i 's/SAMN08784251/SAMN08784251_2014/' snippy.fasta
sed -i 's/SAMN08784252/SAMN08784252_2010/' snippy.fasta
sed -i 's/SAMN08784253/SAMN08784253_2008/' snippy.fasta
sed -i 's/SAMN08784254/SAMN08784254_2008/' snippy.fasta
sed -i 's/SAMN08784255/SAMN08784255_2010/' snippy.fasta
sed -i 's/SAMN08784256/SAMN08784256_2010/' snippy.fasta
sed -i 's/SAMN08784257/SAMN08784257_2008/' snippy.fasta
sed -i 's/SAMN08784258/SAMN08784258_2007/' snippy.fasta
sed -i 's/SAMN08784259/SAMN08784259_2012/' snippy.fasta
sed -i 's/SAMN08784260/SAMN08784260_2010/' snippy.fasta
sed -i 's/SAMN08784261/SAMN08784261_2016/' snippy.fasta
sed -i 's/SAMN08784262/SAMN08784262_2016/' snippy.fasta
sed -i 's/SAMN08784263/SAMN08784263_2016/' snippy.fasta
sed -i 's/SAMN08784264/SAMN08784264_2016/' snippy.fasta
sed -i 's/SAMN08784265/SAMN08784265_2016/' snippy.fasta
```



# Run Gubbins

```bash
cd /home/wickr/Core_SNP_paper/dataset_4_S_enterica_Kentucky
conda activate gubbins
run_gubbins.py snippy.fasta --prefix gubbins --threads 32 --filter-percentage 100
```




# Make a Gubbins alignment

```bash
cd /home/wickr/Core_SNP_paper/dataset_4_S_enterica_Kentucky
mask_gubbins_aln.py --aln snippy.fasta --gff gubbins.recombination_predictions.gff --out snippy_gubbins.fasta
seqtk seq snippy_gubbins.fasta > temp.fasta; mv temp.fasta snippy_gubbins.fasta
```
