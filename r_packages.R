# List of regular R packages
cran <- c(
  "tidyverse", "gtsummary", "styler", "mcp", "segmented", "kableExtra",
  "redcapAPI", "caret", "lmerTest"
)
install.packages(cran)
# Bioconductor
bioc <- c("limma", "mixOmics")
BiocManager::install(bioc)