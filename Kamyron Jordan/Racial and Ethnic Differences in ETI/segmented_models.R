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
fev1_mod <- lme(gli_fev1_ppred_rn ~ Days,
  data = encounter, random = ~ 1 | eDWID,
  na.action = na.omit
)
# Segmented model
fev1_seg <- segmented(fev1_mod,
  seg.Z = ~Days, npsi = 2, random = list(eDWID = pdDiag(~ 1 + Days + U + G0)),
  control = seg.control(n.boot = 0, display = T)
)
save(fev1_seg, file = "./Kamyron Jordan/Racial and Ethnic Differences in ETI/Data_Cleaned/segmented/fev1_segmented_fit.RData")
