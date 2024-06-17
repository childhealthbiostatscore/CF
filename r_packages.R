# List of regular R packages
cran <- c(
  "tidyverse", "gtsummary", "styler", "BiocManager", "rjags", "mcp",
  "segmented", "kableExtra"
)
install.packages(cran)
# Bioconductor
bioc <- c("limma", "mixOmics")
BiocManager::install(bioc)
