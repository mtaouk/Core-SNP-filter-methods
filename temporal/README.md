This directory contains the full computational methods and results for the temporal-signal tests in this study:
* Methods are presented in Markdown files:
  * The `*_prepare_alignments.md` files contain commands for downloading reads, performing QC, aligning to a reference, calling SNPs with [Snippy](https://github.com/tseemann/snippy) and filtering recombination with [Gubbins](https://github.com/nickjcroucher/gubbins).
  * The `*_core_snps_and_build_trees.md` files contain commands for creating the core-SNP alignments, building the trees with [IQ-TREE](https://github.com/iqtree/iqtree2) and assessing the results.
* Results are presented in a single Excel file: `results.xlsx`.
* The `scripts` directory contains custom R scripts used in the methods.
* The `trees` directory contains tarballs of all newick files.
