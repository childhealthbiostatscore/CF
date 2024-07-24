library(lme4)
library(ggeffects)
# Load dataset
load("./Kamyron Jordan/Racial and Ethnic Differences in ETI/Data_Cleaned/outcomes_dataset.RData")
# Make a dataframe for the levels we want predictions at
new_df <- expand.grid(
  Days = c(min(encounter$Days), 0, max(encounter$Days)),
  Race = unique(encounter$Race)
)
# Fit models
results <- lapply(continuous_outcomes, function(o) {
  # Formula
  f <-
    as.formula(paste0(
      o,
      "~ age_group + Insurance + bs(Days, knots = 0, degree = 1) * Race + (1 | eDWID)"
    ))
  m <- lmer(f, data = encounter)
  # Predicted values
  pred <- predict_response(m, terms = new_df)
  return(list(model = m, predictions = pred))
})
