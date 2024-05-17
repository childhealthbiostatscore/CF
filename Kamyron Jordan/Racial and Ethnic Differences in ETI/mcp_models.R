# Setup
library(tidyverse)
library(mcp)
set.seed(1017)
# Paths
home_dir <- switch(Sys.info()["sysname"],
  "Darwin" = "/Users/timvigers/Library/CloudStorage/OneDrive-TheUniversityofColoradoDenver/Vigers/CF",
  "Windows" = "C:/Users/Tim/OneDrive - The University of Colorado Denver/Vigers/CF",
  "Linux" = "/home/timvigers/OneDrive/Vigers/CF"
)
setwd(home_dir)
# Data import
# Data cleaning code in racial_and_ethnic_differences_in_eti_outcomes.qmd
load("./Kamyron Jordan/Racial and Ethnic Differences in ETI/Data_Cleaned/cleaned_outcomes_dataset.RData")
# FEV1 single changepoint
fev1_single_cp_model <- list(
  gli_fev1_ppred_rn ~ 1 + Days,
  1 + (1 | eDWID) ~ 0 + Days # Varying change point by person
)
fev1_single_cp_fit <- mcp(fev1_single_cp_model, data = encounter %>% filter(!is.na(gli_fev1_ppred_rn)))
save(fev1_single_cp_fit, file = "./Kamyron Jordan/Racial and Ethnic Differences in ETI/Data_Cleaned/mcp/fev1_single_cp_fit.RData")
# FEV1 double changepoint
fev1_double_cp_model <- list(
  gli_fev1_ppred_rn ~ 1 + Days,
  1 + (1 | eDWID) ~ 0 + Days, # Varying change point by person
  1 + (1 | eDWID) ~ 0 + Days # Varying second change point by person (I think?)
)
fev1_double_cp_fit <- mcp(fev1_double_cp_model, data = encounter %>% filter(!is.na(gli_fev1_ppred_rn)))
save(fev1_double_cp_fit, file = "./Kamyron Jordan/Racial and Ethnic Differences in ETI/Data_Cleaned/mcp/fev1_double_cp_fit.RData")
