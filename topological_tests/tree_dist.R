library(ape)
library(phangorn)
library(tidyverse)

# Directory containing tarballed tree files
tree_dir <- "temporal/trees/"

# List all tarball files in the directory
tar_files <- list.files(tree_dir, pattern = "\\.tar\\.gz$", full.names = TRUE)

# Function calculates RF dist and records treatment. Used in loop below
calc_rf_distances <- function(trees) {
    distance <- c(0)
    treatment <- gsub(".+_", "", names(trees))
    n_tips <- length(trees[[1]]$tip.label)
    threshold <- as.numeric(gsub("_.+", "", names(trees))) / n_tips

    for (i in 1:(length(trees) - 1)) {
        distance <- c(
            RF.dist(trees[[i]], trees[[i + 1]], normalize = TRUE),
            distance
        )
    }

    return(
        data.frame(threshold = threshold, treatment = treatment, distance = distance)
    )
}

# tmp directory for unzipping. Delete later
system("mkdir tmp")

data <- list()
# Loop through all datasets
for (tar_file in tar_files) {
    untar(tar_file, exdir = "tmp")
    dataset <- gsub(basename(tar_file), pattern = ".tar.gz", replacement = "")

    tree_files_a <- list.files("tmp", pattern = "_a.newick$", full.names = TRUE)
    tree_files_b <- list.files("tmp", pattern = "_b.newick$", full.names = TRUE)
    tree_files_c <- list.files("tmp", pattern = "_c.newick$", full.names = TRUE)

    trees_a <- lapply(tree_files_a, function(f) read.tree(f))
    trees_b <- lapply(tree_files_b, function(f) read.tree(f))
    trees_c <- lapply(tree_files_c, function(f) read.tree(f))

    names(trees_c) <- gsub(".newick$", "", basename(tree_files_c))
    names(trees_b) <- gsub(".newick$", "", basename(tree_files_b))
    names(trees_a) <- gsub(".newick$", "", basename(tree_files_a))

    df_a <- calc_rf_distances(trees_a)
    df_b <- calc_rf_distances(trees_b)
    df_c <- calc_rf_distances(trees_c)

    df <- bind_rows(df_a, df_b, df_c)
    data[[dataset]] <- df

    system("rm tmp/*.newick")
}
system("rm -rf tmp")

# combine data
data <- bind_rows(data, .id = "dataset")

# Plot
ggplot(data, aes(x = threshold, y = distance, col = treatment)) +
    geom_vline(xintercept = 0.95) +
    geom_point(alpha = 0.4) +
    geom_line(alpha = 0.8) +
    ylim(0, 1) +
    labs(
        y = "RF Distance between consecutive trees)",
        x = "Threshold",
        color = "Replicate"
     ) +
    annotate("label", x = 0.8, y = 0.85, label = "95% Threshold") +
    facet_wrap(~dataset, nrow = 2, dir = "v") +
    theme_bw() +
    theme(
        legend.position = "bottom",
        text = element_text(size = 16)
    )
ggsave("figures/Topology-supp.pdf", dpi = 300)
ggsave("figures/Topology-supp.png", dpi = 300)
