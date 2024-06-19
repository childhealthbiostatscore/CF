# List of regular R packages
cran <- c(
  "tidyverse", "gtsummary", "styler", "BiocManager", "mcp", "segmented",
  "kableExtra", "redcapAPI", "caret", "lmerTest"
)
install.packages(cran)
# Bioconductor
bioc <- c("limma", "mixOmics")
BiocManager::install(bioc)
