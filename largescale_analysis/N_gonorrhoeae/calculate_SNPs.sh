#!/bin/bash

# Check if a dataset argument is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <dataset>"
    exit 1
fi

# Assign the dataset argument to the variable
dataset="$1"

# new temp dir
TMPDIR=/home/taouk/core-genome/Ngonorrhoeae_alignments/test_alignment/tempdir/$dataset
export TMPDIR

# Path to the directory
directory="/home/taouk/core-genome/Ngonorrhoeae_alignments/test_alignments/$dataset"

#cd
cd "$directory"

# Function to perform coresnpfilter for a given coverage
perform_coresnpfilter() {
    threshold="$1"
    output_file="$dataset"_"$threshold".txt
    raw_file="$dataset"_"$threshold"_raw.txt

    for i in 10000 9750 9500 9250 9000 8750 8500 8250 8000 7750 7500 7250 7000 6750 6500 6250 6000 5750 5500 5250 5000 4750 4500 4250 4000 3750 3500 3250 3000 2750 2500 2250 2000 1750 1500 1250 1000 750 500 250 100 75 50 25; do
        coresnpfilter -e -c "$threshold" full/"$dataset"_"${i}"_full.fa 1> /dev/null 2>> "$raw_file"
    done

    grep -e "input file" -e "output sequence length" "$raw_file" | sed '/^  input file:/N; s/\n/\t/' > "$output_file"
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