#!/usr/bin/env Rscript

suppressMessages(library(ape))

args = commandArgs(trailingOnly=TRUE)


for (file_path in args) {	
    tree <- read.tree(file_path)
    bootstraps <- as.numeric(tree$node.label)
    bootstraps <- bootstraps[!is.na(bootstraps)]
    cat(mean(bootstraps), "\n", sep="")
}
