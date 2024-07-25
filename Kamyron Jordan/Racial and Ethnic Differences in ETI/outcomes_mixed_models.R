library(lme4)
library(splines)
library(ggeffects)
# Paths
home_dir <- switch(Sys.info()["sysname"],
  "Darwin" = "/Users/timvigers/Library/CloudStorage/OneDrive-TheUniversityofColoradoDenver/Vigers/CF",
  "Windows" = "C:/Users/Tim/OneDrive - The University of Colorado Denver/Vigers/CF",
  "Linux" = "/home/timvigers/OneDrive/Vigers/CF"
)
setwd(home_dir)
# Load dataset
load("./Kamyron Jordan/Racial and Ethnic Differences in ETI/Data_Cleaned/outcomes_dataset.RData")
# Fit models
results <- lapply(continuous_outcomes, function(o) {
  # Formula
  f <-
    as.formula(paste0(
      o,
      "~ bs(Days, knots = 0, degree = 1) * Race + (1 | eDWID)"
    ))
  m <- lmer(f, data = encounter)
  # Predicted values
  pred <- predict_response(m, terms = c("Days[-1095,0,730]", "Race"))
  return(list(model = m, predictions = pred))
})
# Save
save(results,
  file = "./Kamyron Jordan/Racial and Ethnic Differences in ETI/Data_Cleaned/outcomes_lmm_results.RData"
)
