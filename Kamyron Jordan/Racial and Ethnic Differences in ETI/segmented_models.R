# Setup
library(tidyverse)
library(nlme)
library(segmented)
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
# FEV1
# Basic linear mixed model
fev1_mod <- lm(gli_fev1_ppred_rn ~ Days, data = encounter, na.action = na.omit)
# Segmented model, one change point
fev1_single_cp_fit <- segmented(fev1_mod,
  seg.Z = ~Days, npsi = 1, control = seg.control(display = T)
)
save(fev1_single_cp_fit, file = "./Kamyron Jordan/Racial and Ethnic Differences in ETI/Data_Cleaned/segmented/fev1_single_cp_fit.RData")
# Segmented model, two change points
fev1_double_cp_fit <- segmented(fev1_mod,
  seg.Z = ~Days, npsi = 2, control = seg.control(display = T)
)
save(fev1_double_cp_fit, file = "./Kamyron Jordan/Racial and Ethnic Differences in ETI/Data_Cleaned/segmented/fev1_double_cp_fit.RData")
