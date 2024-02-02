#!/usr/bin/env Rscript

suppressMessages(library(ape))
suppressMessages(library(adephylo))

args = commandArgs(trailingOnly=TRUE)

for (file_path in args) {	
    tree <- read.tree(file_path)
    dates <- as.numeric(gsub("^.*_", "", tree$tip.label))
    tree <- rtt(tree, dates, objective="rsquared", opt.tol=.Machine$double.eps^0.5)
    distances <- suppressWarnings(distRoot(tree))
    r_squared <- summary(lm(data.frame(dates, distances)))$adj.r.squared
    cat(r_squared, "\n", sep="")
}
