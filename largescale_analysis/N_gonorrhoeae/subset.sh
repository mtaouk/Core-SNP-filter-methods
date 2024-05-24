#!/bin/bash

# Get the dataset letter from the command line argument
dataset_letter="$1"

# Make and move into directory
mkdir "$dataset_letter" && cd "$dataset_letter"
mkdir full && cd full

# Initial input file
input_file="/home/taouk/core-genome/Ngonorrhoeae_alignments/test_alignments/noinvariant.passcov.core.full.aln"

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
