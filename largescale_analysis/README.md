# Large Scale Alignments

This ReadMe will detail all code used to generate the large scale
alignments for both *Neisseria gonorrhoeae* and *Salmonella Typhi*.

The directory structure for this section of the project is as follows:

```         
large-scale_alignment
 -- Typhi
    -- Typhi_fastqs
    -- Typhi_snippy
    -- Typhi_alignments
       -- test_alignments
          --A
          --B
          --C
          --D
          --E
          --F
          --G
          --H
          --I
          --J
 -- Ngono
    -- Ngono_fastqs
    -- Ngono_snippy
    -- Ngono_alignments
       -- test_alignments
          --A
          --B
          --C
          --D
          --E
          --F
          --G
          --H
          --I
          --J
```

## 1. Download data

Make new directory to keep the reads in:

```         
mkdir Typhi/Typhi_fastqs
cd Typhi/Typhi_fastqs

mkdir Ngono/N_gono_fastqs
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

Run the script that subsets the alignments:

```         
parallel -j 10 -k --bar "bash Typhi/Typhi_alignments/subset.sh {}" ::: A B C D E F G H I J 

parallel -j 10 -k --bar "bash Ngono/Ngono_alignments/subset.sh {}" ::: A B C D E F G H I J 
```

This script will take the pass.core.full.aln file for each species and
make 10 alignments of 10,000 genomes each (Labelled from A to J). It
uses a random seed to generate each of these initial alignments as well
as all subsequent alignments. It then uses the first alignment of 10,000
genomes and randomly subsets that to a 7,500 genome alignment which it
uses as input for the next step etc until there are 44 alignments
ranging from 10,000 genomes to 25. The script is below but paths may
need to be changed to be run locally:

```         
#!/bin/bash

# Get the dataset letter from the command line argument
dataset_letter="$1"

# Make and move into directory
mkdir "$dataset_letter" && cd "$dataset_letter"
mkdir full && cd full

# Initial input file
input_file="Typhi/Typhi_alignments/passcov.core.full.aln"

# List of values to iterate over
values="10000 9750 9500 9250 9000 8750 8500 8250 8000 7750 7500 7250 7000 6750 6500 6250 6000 5750 5500 5250 5000 4750 4500 4250 4000 3750 3500 3250 3000 2750 2500 2250 2000 1750 1500 1250 1000 750 500 250 100 75 50 25"

for value in $values; do
    # Generate the output file name
    output_file="${dataset_letter}_${value}_full.fa"

    # Use seqtk to sample and save the subset
    seqtk sample -s "$RANDOM" "$input_file" "$value" > "$output_file"

    # Update the input file for the next iteration
    input_file="$output_file"
done
```

The same script is run for *N. gonorrhoeae* using the relevant input.

## 4. Run Core-SNP-filter

```         
parallel -j 10 -k --bar "bash Typhi/Typhi_alignments/calculate_SNPs.sh {}" ::: A B C D E F G H I J

parallel -j 10 -k --bar "bash Ngono/Ngono_alignments/calculate_SNPs.sh {}" ::: A B C D E F G H I J
```

Core-SNP-filter is run on each of the 44 alignments in the 10
replicates. It is run at core frequencies of 0.5, 0.6, 0.7, 0.8, 0.9,
0.95, 0.96, 0.97, 0.98, 0.99 and 1.0. It is also run on each alignment
twice, once removing invariant sites and a second time keeping all
invariant sites. This script does not keep the resulting alignments it
just writes the alignment length into a text file for plotting later.
The script is below but paths may need to be changed to be run locally:

```         
#!/bin/bash

# Check if a dataset argument is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <dataset>"
    exit 1
fi

# Assign the dataset argument to the variable
dataset="$1"

# new temp dir
TMPDIR=/Typhi/Typhi_alignments/tempdir/$dataset
export TMPDIR

# Path to the directory
directory="/Typhi/Typhi_alignments/$dataset"

#cd
cd "$directory"

# Function to perform coresnpfilter for a given coverage
perform_coresnpfilter() {
    threshold="$1"
    output_file_invariant="$dataset"_"$threshold"_invariant.txt
    output_file_NOinvariant="$dataset"_"$threshold"_NOinvariant.txt
    raw_file_invariant="$dataset"_"$threshold"_invariant_raw.txt
    raw_file_NOinvariant="$dataset"_"$threshold"_NOinvariant_raw.txt

    for i in 10000 9750 9500 9250 9000 8750 8500 8250 8000 7750 7500 7250 7000 6750 6500 6250 6000 5750 5500 5250 5000 4750 4500 4250 4000 3750 3500 3250 3000 2750 2500 2250 2000 1750 1500 1250 1000 750 500 250 100 75 50 25; do
        coresnpfilter -c "$threshold" full/"$dataset"_"${i}"_full.fa 1> /dev/null 2>> "$raw_file_invariant"
    done

    grep -e "input file" -e "output sequence length" "$raw_file_invariant" | sed '/^  input file:/N; s/\n/\t/' > "$output_file_invariant"

    for i in 10000 9750 9500 9250 9000 8750 8500 8250 8000 7750 7500 7250 7000 6750 6500 6250 6000 5750 5500 5250 5000 4750 4500 4250 4000 3750 3500 3250 3000 2750 2500 2250 2000 1750 1500 1250 1000 750 500 250 100 75 50 25; do
        coresnpfilter -e -c "$threshold" full/"$dataset"_"${i}"_full.fa 1> /dev/null 2>> "$raw_file_NOinvariant"
    done

    grep -e "input file" -e "output sequence length" "$raw_file_NOinvariant" | sed '/^  input file:/N; s/\n/\t/' > "$output_file_NOinvariant"
}

#Perform coresnpfilter for different thresholds
perform_coresnpfilter 1.0
perform_coresnpfilter 0.99
perform_coresnpfilter 0.98
perform_coresnpfilter 0.97
perform_coresnpfilter 0.96
perform_coresnpfilter 0.95
perform_coresnpfilter 0.90
perform_coresnpfilter 0.80
perform_coresnpfilter 0.70
perform_coresnpfilter 0.60
perform_coresnpfilter 0.50
```

The same script is run for *N. gonorrhoeae* using the relevant directory
paths.

The resulting text files are then concatenated and reformatted for ease.

The results for *S. typhi* can be found here.

The results for *N. gonorrhoeae* can be found here.