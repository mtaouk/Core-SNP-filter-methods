Everything in this method was done for both the `snippy.fasta` and the `snippy_gubbins.fasta` alignments:
```bash
dataset=snippy
# dataset=snippy_gubbins
```



# Make core SNP alignments

I produced core SNP alignments at various thresholds corresponding to each step (0/154, 1/154, 2/154 ... 153/154, 154/154):
```bash
coresnpfilter -e "$dataset".fasta | gzip > no_invariant.fasta.gz

for n in 000 001 002 003 004 005 006 007 008 009 010 011 012 013 014 015 016 017 018 019 020 021 022 023 024 025 026 027 028 029 030 031 032 033 034 035 036 037 038 039 040 041 042 043 044 045 046 047 048 049 050 051 052 053 054 055 056 057 058 059 060 061 062 063 064 065 066 067 068 069 070 071 072 073 074 075 076 077 078 079 080 081 082 083 084 085 086 087 088 089 090 091 092 093 094 095 096 097 098 099 100 101 102 103 104 105 106 107 108 109 110 111 112 113 114 115 116 117 118 119 120 121 122 123 124 125 126 127 128 129 130 131 132 133 134 135 136 137 138 139 140 141 142 143 144 145 146 147 148 149 150 151 152 153 154; do
    c=$(printf "%0.4f" $(bc <<< "scale=4; "$n"/154"))
    coresnpfilter -e -c "$c" no_invariant.fasta.gz | gzip > "$n".fasta.gz
done

rm no_invariant.fasta.gz
```



# Run IQ-TREE

I used TVM+F+ASC+R2 because that seemed to be the most popular model according to IQ-TREE's ModelFinder. Since the process isn't deterministic, I did three trees for each (a, b and c). I also used `-B 1000` to get ultrafast bootstrap approximations (UFBoot) for each node.

```bash
N=12
(
for n in 000 001 002 003 004 005 006 007 008 009 010 011 012 013 014 015 016 017 018 019 020 021 022 023 024 025 026 027 028 029 030 031 032 033 034 035 036 037 038 039 040 041 042 043 044 045 046 047 048 049 050 051 052 053 054 055 056 057 058 059 060 061 062 063 064 065 066 067 068 069 070 071 072 073 074 075 076 077 078 079 080 081 082 083 084 085 086 087 088 089 090 091 092 093 094 095 096 097 098 099 100 101 102 103 104 105 106 107 108 109 110 111 112 113 114 115 116 117 118 119 120 121 122 123 124 125 126 127 128 129 130 131 132 133 134 135 136 137 138 139 140 141 142 143 144 145 146 147 148 149 150 151 152 153 154; do
    ((i=i%N)); ((i++==0)) && wait
    {iqtree2 -s "$n".fasta.gz -m TVM+F+ASC+R2 -T 1 -B 1000 --prefix iqtree_a_"$n"; FastRoot.py -i iqtree_a_"$n".treefile > "$n"_a.newick; mv iqtree_a_"$n".log "$n"_a.log; rm iqtree_a_"$n".*} &
    {iqtree2 -s "$n".fasta.gz -m TVM+F+ASC+R2 -T 1 -B 1000 --prefix iqtree_b_"$n"; FastRoot.py -i iqtree_b_"$n".treefile > "$n"_b.newick; mv iqtree_b_"$n".log "$n"_b.log; rm iqtree_b_"$n".*} &
    {iqtree2 -s "$n".fasta.gz -m TVM+F+ASC+R2 -T 1 -B 1000 --prefix iqtree_c_"$n"; FastRoot.py -i iqtree_c_"$n".treefile > "$n"_c.newick; mv iqtree_c_"$n".log "$n"_c.log; rm iqtree_c_"$n".*} &
done
)
```


This `rsquared.R` script gives an R^2 value for an input tree:
```R
#!/usr/bin/env Rscript

suppressMessages(library(ape))
suppressMessages(library(adephylo))

args = commandArgs(trailingOnly=TRUE)
tree <- read.tree(args[1])
dates <- as.numeric(gsub("^.*_", "", tree$tip.label))
tree <- rtt(tree, dates, objective="rsquared")
r_squared <- summary(lm(data.frame(dates, distRoot(tree))))$adj.r.squared
cat(r_squared, "\n", sep="")
```

Get the R^2 value for each tree:
```bash
../../scripts/rsquared.R *.newick
```

Get the mean bootstrap for each tree:
```bash
../../scripts/mean_bootstrap.R *.newick
```

Get the log-likelihood for each tree:
```bash
for l in *.log; do
    cat "$l" | grep "Optimal log-likelihood:" | tail -n1 | grep -oP "\-[\d\.]+"
done
```

Get the number of unique sequences in each alignment:
```bash
for a in *.fasta.gz; do
    printf $a"\t"
    zgrep -v ">" "$a" | tr '-' 'N' | sort | uniq | wc -l
done
```

```bash
mkdir S_pneumo_PMEN1_"$dataset"
mv *.fasta.gz *.newick S_pneumo_PMEN1_"$dataset"
```
