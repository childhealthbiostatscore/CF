library(tidyverse)
library(rspiro)
# Import REDCap data
redcap <- read.csv("~/Dropbox/Work/Vigers/CF/Scott Sagel/PEx in CF/Data_Raw/ExacerbationsInCF222_DATA_2023-10-04_1459.csv", na.strings = "")
# Separate demographics dataset
demo <- redcap %>%
  filter(redcap_event_name == "demographics_arm_1") %>%
  select(sid, redcap_data_access_group, sex, race, ethnicity, mutation1, mutation2)
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
# Remove CHCO REDCap data - there is some weird issue with the year of admission
# field, so Elin sent a complete file separately
chco <- redcap %>%
  filter(
    redcap_data_access_group == "chco",
    redcap_event_name != "demographics_arm_1"
  ) %>%
  select(
    sid, redcap_data_access_group, redcap_repeat_instance,
    admit_cx_results___1:admit_cx_results___9
  )
redcap <- redcap %>%
  filter(redcap_data_access_group != "chco") %>%
  # Also remove demographics
  filter(redcap_event_name != "demographics_arm_1") %>%
  # Limit data to necessary columns
  select(
    sid, redcap_data_access_group, redcap_repeat_instance,
    cftr_mod_spec, cftr_mod,
    admit_year:age_at_admit, height, fev1_admit, fev1_discharge,
    admit_cx_results___1:admit_cx_results___9
  )
# Import supplemental data from Elin
supplement <- readxl::read_excel("~/Dropbox/Work/Vigers/CF/Scott Sagel/PEx in CF/Data_Raw/ExacerbationsInCF222-Admissions and Inpatient Meds All Fields 2023 09 29.xlsx")
supplement <- supplement %>% select(
  sid, redcap_repeat_instance, cftr_mod_spec, cftr_mod,
  admit_year:age_at_admit, height, fev1_admit, fev1_discharge
)
# Merge everything together and sort columns
chco <- left_join(chco, supplement, by = join_by(sid, redcap_repeat_instance))
df <- bind_rows(chco, redcap)
df <- left_join(df, demo)
df <- df %>% select(all_of(colnames(demo)), admit_year, everything())
# Calculate FEV1 % predicted
df$ppfev1_admit <- pctpred_GLI(
  age = as.numeric(df$age_at_admit),
  height = as.numeric(df$height / 100),
  gender = as.numeric(df$sex),
  ethnicity = as.numeric(df$race),
  FEV1 = as.numeric(df$fev1_admit)
)
df$fev1_admit <- NULL
df$ppfev1_discharge <- pctpred_GLI(
  age = as.numeric(df$age_at_admit),
  height = as.numeric(df$height / 100),
  gender = as.numeric(df$sex),
  ethnicity = as.numeric(df$race),
  FEV1 = as.numeric(df$fev1_discharge)
)
df$fev1_discharge <- NULL
# Microbiology
bugs <- paste0("admit_cx_results___", 1:9)
df[, bugs] <- lapply(df[, bugs], function(c) {
  factor(c, levels = 0:1, labels = c("Absent", "Present"))
})
# Site
df$redcap_data_access_group <- factor(df$redcap_data_access_group,
  levels = c("chco", "childrens_national", "orange_county", "rady", "seattle"),
  labels = c("CHCO", "Children's National", "Orange County", "Rady", "Seattle")
)
# CFTR modulators
df$cftr_mod_spec[df$cftr_mod == 0] <- 0
df$cftr_mod <- factor(df$cftr_mod, levels = 0:1, labels = c("No", "Yes"))
df$cftr_mod_spec <- factor(df$cftr_mod_spec,
  levels = 0:4,
  labels = c("None", "Kalydeco", "Orkambi", "Symdeko", "Trikafta")
)
# Remove rows with no admission year
df <- df %>% filter(!is.na(admit_year))
# Create summary dataset
summary_table <- df %>%
  mutate(ppfev1_diff = ppfev1_discharge - ppfev1_admit) %>%
  group_by(sid, redcap_data_access_group, admit_year) %>%
  summarise(
    num_hosp = n(),
    across(c(sex:genotype), ~ first(na.omit(.x))),
    across(admit_cx_results___1:admit_cx_results___9, ~ any(.x == "Present")),
    cftr_mod = any(cftr_mod == "Yes"),
    cftr_mod_spec = paste0(sort(unique(cftr_mod_spec)), collapse = "/"),
    across(c(age_at_admit, days_admit, ppfev1_admit:ppfev1_diff), ~ mean(.x, na.rm = T)),
    .groups = "drop"
  )
summary_table$cftr_mod <- factor(summary_table$cftr_mod, levels = c(F, T), labels = c("No", "Yes"))
summary_table$cftr_mod_spec[summary_table$cftr_mod_spec == ""] <- NA
summary_table[, bugs] <- lapply(summary_table[, bugs], factor, levels = c(F, T), labels = c("Absent", "Present"))
# Remove NaN values
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
  "ppfev1_diff" = "Change in FEV1 % Predicted",
  "cftr_mod" = "CFTR modulator (any)", "cftr_mod_spec" = "CFTR modulator",
  "num_hosp" = "Number of Hospitalizations"
)
# Save
save(df, summary_table, labels,
  file = "~/Dropbox/Work/Vigers/CF/Scott Sagel/PEx in CF/Data_Cleaned/analysis_dataset.RData"
)
