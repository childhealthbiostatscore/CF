# Setup
library(tidyverse)
library(mcp)
# Paths
home_dir <- switch(Sys.info()["sysname"],
  "Darwin" = "/Users/timvigers/Library/CloudStorage/OneDrive-TheUniversityofColoradoDenver/Vigers/CF",
  "Windows" = "C:/Users/Tim/OneDrive - The University of Colorado Denver/Vigers/CF",
  "Linux" = "/home/timvigers/OneDrive/Vigers/CF"
)
setwd(home_dir)
# Data import and seed.
# Data cleaning code in racial_and_ethnic_differences_in_eti_outcomes.qmd
load("./Kamyron Jordan/Racial and Ethnic Differences in ETI/Data_Cleaned/data_for_mcp.RData")
set.seed(1017)
# FEV1 single changepoint
fev1_single_cp_model <- list(
  gli_fev1_ppred_rn ~ 1, # intercept
  ~ 0 + Days # joined slope
)
fev1_single_cp_fit <- mcp(fev1_single_cp_model,
  data = cleaned, chains = 4, cores = 4
)
save(fev1_single_cp_fit, file = "./Kamyron Jordan/Racial and Ethnic Differences in ETI/Data_Cleaned/fev1_single_cp_fit.RData")
# FEV1 double changepoint
fev1_double_cp_model <- list(
  gli_fev1_ppred_rn ~ 1, # intercept
  ~ 0 + Days, # joined slope
  ~ 0 + Days # joined slope
)
fev1_double_cp_fit <- mcp(fev1_double_cp_model,
  data = cleaned, chains = 4, cores = 4
)
save(fev1_double_cp_fit, file = "./Kamyron Jordan/Racial and Ethnic Differences in ETI/Data_Cleaned/fev1_double_cp_fit.RData")
