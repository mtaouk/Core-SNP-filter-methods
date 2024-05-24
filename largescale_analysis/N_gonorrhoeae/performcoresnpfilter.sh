#!/bin/bash

# Function to perform coresnpfilter for a given coverage
perform_coresnpfilter() {
    threshold="$1"
    output_file="$threshold.fa"
    raw_file="$threshold"_raw.txt
    output_file2="$threshold.txt"

    for i in alfsnes2020.full.fa buckley2018.full.fa cehovin2018.full.fa demczuk2015.full.fa deSilva2016.full.fa didelot2016.full.fa ezewudo2015.full.fa fifer2018.full.fa golparian2020.full.fa grad2016.full.fa kwong2016.full.fa kwong2018.full.fa lan2020.full.fa less2018.full.fa mortimer2020.full.fa ryan2018.full.fa sanchezbuso2019.full.fa thomas2019.full.fa town2020.full.fa willimason2019.full.fa wind2017.full.fa yahara2018.full.fa; do
        dataset_name=$(basename "$i" .full.fa)
        coresnpfilter -e -c "$threshold" "$i" 1> "results/$dataset_name"_"$threshold".fasta 2>> "results/$raw_file"
    done

    grep -e "input file" -e "output sequence length" "results/$raw_file" | sed '/^  input file:/N; s/\n/\t/' > "results/$output_file2"
}

# Perform coresnpfilter for different thresholds
perform_coresnpfilter 0.9
perform_coresnpfilter 0.95
perform_coresnpfilter 1.0



