library(tidyverse)
library(rspiro)
# Import REDCap data
df <- readxl::read_excel("~/Library/CloudStorage/Dropbox/Work/Vigers/CF/Scott Sagel/PEx in CF/Data_Raw/ExacerbationsInCF222_DATA_2023-10-11_1252 All Data.xlsx")
# Separate datasets
demo <- df %>%
  filter(redcap_event_name == "demographics_arm_1") %>%
  select(
    sid, redcap_data_access_group, sex, race, ethnicity,
    mutation1, mutation2, contains("insurance")
  )
fevs <- c("fev1_admit", "fev1_discharge", paste0("fev1_baseline", 1:6))
df <- df %>%
  filter(redcap_event_name != "demographics_arm_1") %>%
  select(
    sid, redcap_repeat_instance, cftr_mod, cftr_mod_spec,
    admit_year:age_at_admit, height, height_baseline1,
    all_of(fevs),
    admit_cx_results___1:admit_cx_results___9
  )
# Format columns - race and sex should be formatted for ppFEV1 calculations
demo$sex <- factor(demo$sex, levels = c(2, 1), labels = c("Male", "Female"))
demo$race <- factor(demo$race,
  levels = c(1, 2, 4, 9, 3, 5:8),
  labels = c(
    "White", "Black or African-American", "NE Asian", "SE Asian",
    "Other/mixed", "Other/mixed", "Other/mixed", "Other/mixed", "Other/mixed"
  )
)
demo$ethnicity <- factor(demo$ethnicity,
  levels = 1:3,
  labels = c(
    "Hispanic or Latino", "Not Hispanic or Latino", "Unknown or not reported"
  )
)
demo$genotype <- rowSums(demo[, c("mutation1", "mutation2")] == 1)
demo$genotype <- factor(demo$genotype,
  levels = 0:2,
  labels = c("No F508del", "F508del heterozygous", "F508del homozygous")
)
demo[, c("mutation1", "mutation2")] <- NULL
# Combine insurance columns
ins <- c(
  "Private insurance", "Medicare", "Medicaid",
  "State special needs program (e.g. CHP+)",
  "Tricare/other military health plan", "Indian Health Service", "Other", "None"
)
demo$insurance <- apply(demo[, grep("insurance", colnames(demo))], 1, function(r) {
  i <- which(r == 1)
  if(all(r == 0)){i = length(ins)}
  return(paste0(ins[i], collapse = "/"))
})
demo$insurance <- as.factor(demo$insurance)
demo[, paste0("insurance___", 1:8)] <- NULL
# Merge everything back together and sort columns
df <- left_join(df, demo, join_by(sid))
df <- df %>% select(all_of(colnames(demo)), admit_year, everything())
# Calculate baseline FEV1 % predicted
fevs <- paste0("fev1_baseline", 1:6)
ppfevs <- paste0("pp", fevs)
df[, ppfevs] <- lapply(df[, fevs], function(c) {
  ppfev <- pctpred_GLI(
    age = as.numeric(df$age_at_admit),
    height = as.numeric(df$height_baseline1 / 100),
    gender = as.numeric(df$sex),
    ethnicity = as.numeric(df$race),
    FEV1 = as.numeric(c)
  )
  return(ppfev)
})
# Calculate admission and discharge FEV1 % predicted
fevs <- c("fev1_admit", "fev1_discharge")
ppfevs <- paste0("pp", fevs)
df[, ppfevs] <- lapply(df[, fevs], function(c) {
  ppfev <- pctpred_GLI(
    age = as.numeric(df$age_at_admit),
    height = as.numeric(df$height / 100),
    gender = as.numeric(df$sex),
    ethnicity = as.numeric(df$race),
    FEV1 = as.numeric(c)
  )
  return(ppfev)
})
# Average FEV1 at baseline
df$ppfev1_baseline <- rowMeans(df[, paste0("ppfev1_baseline", 1:6)], na.rm = T)
# Remove unnecessary columns
df <- df %>% select(
  -fev1_admit, -fev1_discharge, -height, -height_baseline1,
  -all_of(paste0("fev1_baseline", 1:6)),
  -all_of(paste0("ppfev1_baseline", 1:6))
)
# Microbiology
bugs <- paste0("admit_cx_results___", 1:9)
df[, bugs] <- lapply(df[, bugs], function(c) {
  factor(c, levels = 0:1, labels = c("Absent", "Present"))
})
# Site
df$redcap_data_access_group <- factor(df$redcap_data_access_group,
  levels = c("chco", "childrens_national", "orange_county", "rady", "seattle"),
  labels = c("Colorado", "CNH", "CHOC", "Rady", "Seattle")
)
# CFTR modulators
df$cftr_mod_spec[df$cftr_mod == 0] <- 0
df$cftr_mod <- factor(df$cftr_mod, levels = 0:1, labels = c("No", "Yes"))
df$cftr_mod_spec <- factor(df$cftr_mod_spec,
  levels = 0:4,
  labels = c("None", "Kalydeco", "Orkambi", "Symdeko", "Trikafta")
)
# Create summary dataset
summary_table <- df %>%
  mutate(ppfev1_diff = ppfev1_discharge - ppfev1_admit) %>%
  group_by(sid, redcap_data_access_group, admit_year) %>%
  summarise(
    num_hosp = n(),
    across(c(sex:insurance), ~ first(na.omit(.x))),
    across(admit_cx_results___1:admit_cx_results___9, ~ any(.x == "Present")),
    cftr_mod = any(cftr_mod == "Yes"),
    cftr_mod_spec = paste0(sort(unique(cftr_mod_spec)), collapse = "/"),
    across(c(age_at_admit, days_admit, ppfev1_admit:ppfev1_diff), ~ mean(.x, na.rm = T)),
    .groups = "drop"
  )
summary_table$cftr_mod <- factor(summary_table$cftr_mod,
  levels = c(F, T),
  labels = c("No", "Yes")
)
summary_table$cftr_mod_spec[summary_table$cftr_mod_spec == ""] <- NA
summary_table[, bugs] <- lapply(summary_table[, bugs], factor,
  levels = c(F, T), labels = c("Absent", "Present")
)
# Remove NaN values
df <- data.frame(lapply(df, function(c) {
  c[is.nan(c)] <- NA
  return(c)
}))
summary_table <- data.frame(lapply(summary_table, function(c) {
  c[is.nan(c)] <- NA
  return(c)
}))
# Labels
labels <- list(
  "sid" = "ID", "redcap_data_access_group" = "Site", "sex" = "Sex",
  "race" = "Race", "ethnicity" = "Ethnicity", "genotype" = "Genotype",
  "redcap_repeat_instance" = "Visit Number",
  "admit_cx_results___1" = "A. xylosoxidans",
  "admit_cx_results___2" = "B. cepacia complex",
  "admit_cx_results___3" = "H. influenzae",
  "admit_cx_results___4" = "Methicillin-resistant S. aureus",
  "admit_cx_results___5" = "Methicillin-susceptible S. aureus",
  "admit_cx_results___6" = "P. aeruginosa",
  "admit_cx_results___7" = "P. aeruginosa mucoid",
  "admit_cx_results___8" = "S. maltophilia",
  "admit_cx_results___9" = "Other bacteria",
  "admit_year" = "Year", "days_admit" = "Number of Days in Admit",
  "age_at_admit" = "Age", "height" = "Height",
  "ppfev1_admit" = "FEV1 % Predicted at Admit",
  "ppfev1_discharge" = "FEV1 % Predicted at Discharge",
  "ppfev1_baseline" = "Baseline FEV1 % Predicted",
  "ppfev1_diff" = "Change in FEV1 % Predicted",
  "cftr_mod" = "CFTR modulator (any)", "cftr_mod_spec" = "CFTR modulator",
  "num_hosp" = "Number of Hospitalizations",
  "insurance" = "Insurance"
)
# Remove rows with no admission year
df <- df %>% filter(!is.na(admit_year))
# Save
save(df, summary_table, labels,
  file = "~/Dropbox/Work/Vigers/CF/Scott Sagel/PEx in CF/Data_Cleaned/analysis_dataset.RData"
)
