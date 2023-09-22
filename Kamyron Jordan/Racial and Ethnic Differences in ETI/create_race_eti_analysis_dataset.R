library(tidyverse)
library(lubridate)
library(readxl)
library(rspiro)
library(Hmisc)
# Import
annual <- read.csv("/Volumes/PEDS/RI Biostatistics Core/Shared/Shared Projects/Vigers/CF/Kamyron Jordan/Racial and Ethnic Differences in ETI/Data_Raw/DataDelivery_20230420/CFF21_Annualized_Del1.csv", na.strings = "")
encounter <- read.csv("/Volumes/PEDS/RI Biostatistics Core/Shared/Shared Projects/Vigers/CF/Kamyron Jordan/Racial and Ethnic Differences in ETI/Data_Raw/DataDelivery_20230420/CFF21_encountersMerged_Del1.csv", na.strings = "")
demo <- read.csv("/Volumes/PEDS/RI Biostatistics Core/Shared/Shared Projects/Vigers/CF/Kamyron Jordan/Racial and Ethnic Differences in ETI/Data_Raw/DataDelivery_20230420/CFF21_DemogCFDiag_Del1.csv", na.strings = "")
# Dates
demo$First_LungTransplantDate <- mdy(demo$First_LungTransplantDate)
demo$Modulator_trikafta_first_date <- mdy(demo$Modulator_trikafta_first_date)
encounter$encounterdate <- mdy(encounter$encounterdate)
# ETI eligibility
encounter$eti_elig <- "No"
encounter$eti_elig[encounter$encounterdate >= ("2019-10-21") &
  encounter$encounterage >= 12] <- "Yes"
encounter$eti_elig[encounter$encounterdate >= ("2021-06-09") &
  encounter$encounterage >= 6] <- "Yes"
encounter$eti_elig <- factor(encounter$eti_elig, levels = c("No", "Yes"))
annual$eti_elig <- "No"
annual$eti_elig[annual$ReviewYear >= 2019 & annual$Age_YrEnd >= 12] <- "Yes"
annual$eti_elig[annual$ReviewYear >= 2021 & annual$Age_YrEnd >= 6] <- "Yes"
annual$eti_elig <- factor(annual$eti_elig, levels = c("No", "Yes"))
# Find exact dates of eligibility (exact as their DOB estimate anyway)
encounter$approx_dob <- encounter$encounterdate %m-%
  months(as.integer(encounter$encounterage) * 12 +
    as.integer((encounter$encounterage * 12) %% 12))
encounter <- encounter %>%
  group_by(eDWID) %>%
  mutate(approx_dob = mean.Date(approx_dob))
encounter$eti_elig_date <- NA
# If 12 years or older on 2019-10-21, eligible right away
encounter$eti_elig_date[encounter$approx_dob <= "2007-10-21"] <- as.numeric(ymd("2019-10-21"))
# If they turned 12 between 2019-10-21 and 2021-06-09, eligible on their birthday
# i.e. if they were born between 2007-10-21 and 2009-06-09
encounter$eti_elig_date[encounter$approx_dob <= "2009-06-09" &
  encounter$approx_dob > "2007-10-21"] <-
  encounter$approx_dob[encounter$approx_dob <= "2009-06-09" &
    encounter$approx_dob > "2007-10-21"] + years(12)
# Anyone between the ages of 6 and 12 on 2021-06-09 became eligible that day
encounter$eti_elig_date[encounter$approx_dob > "2009-06-09" &
  encounter$approx_dob <= "2015-06-09"] <- as.numeric(ymd("2021-06-09"))
# Anyone who turned 6 after 2021-06-09 became eligible on their 6th birthday
encounter$eti_elig_date[encounter$approx_dob > "2015-06-09"] <-
  encounter$approx_dob[encounter$approx_dob > "2015-06-09"] + years(6)
# Convert back to date from numeric
encounter$eti_elig_date = as.Date(encounter$eti_elig_date,origin ="1970-01-01")

# Fix missing values for specific bacteria
bugs <- c(
  "staphylococcus_aureus", "haemophilus_influenzae",
  "pseudomonasaeruginosa", "burkho_complex", "othermicroorganisms1"
)
encounter[, bugs] <- lapply(encounter[, bugs], function(c) {
  c[!is.na(encounter$bacterialculturedone) & is.na(c)] <- 0
  return(c)
})
bug_types <- c("staphyl_type1", "staphyl_type2", "patype1", "patype2")
encounter[, bug_types] <- lapply(encounter[, bug_types], function(c) {
  c[is.na(encounter$bacterialculturedone)] <- NA
  return(c)
})
# Some variables are either missing or 1
encounter <- encounter %>% rename(Vx661comb = vx661comb, Vx445comb = vx445comb)
y_vars <- c(
  "bacterialculturedone", "pulmonarymeds_notonany", "tobi", "aztreonam",
  "Vx770", "Vx809comb", "Vx661comb", "Vx445comb", "dornasealfa",
  "hypertonicsaline", "acutehepatitis"
)
encounter[, y_vars] <- lapply(encounter[, y_vars], function(c) {
  c[is.na(c)] <- 0
  return(c)
})
yn_vars <- c(
  bugs, bug_types, y_vars, "hepatobiliary1_3", "acutehepatitis_type2",
  "hepatobiliary2_1", "hepatobiliary2_3", "pulmonarycomplications1",
  "medscurrentepisode6", "medscurrentepisode7", "isOnEnzymes"
)
encounter[, yn_vars] <- lapply(encounter[, yn_vars], factor, levels = 0:1, labels = c("No", "Yes"))
# Categorical variables - encounters
encounter$encounterlocation <- factor(encounter$encounterlocation,
  levels = 1:4,
  labels = c(
    "Clinic", "Hospital", "Home IV",
    "Other"
  )
)
encounter$cultureresults <- factor(encounter$cultureresults,
  levels = 1:3,
  labels = c(
    "No growth/sterile culture",
    "Normal flora",
    "Microorganisms"
  )
)
encounter$tobifrequency <- factor(encounter$tobifrequency,
  levels = 1:4,
  labels = c(
    "300 mg BID alternate month schedule",
    "300 mg BID continuous",
    "Other regimen (different dose or freq)",
    "Eradication"
  )
)
encounter$aztreonam_freq <- factor(encounter$aztreonam_freq,
  levels = 1:5,
  labels = c(
    "75 mg TID",
    "75 mg TID Alternate Month Schedule",
    "75 mg TID Continuous",
    "Other Regimen",
    "Eradication"
  )
)
encounter$dornase_frequency <- factor(encounter$dornase_frequency,
  levels = 1:3,
  labels = c(
    "2.5 mg qd",
    "2.5 mg BID",
    "other regimen (different dose or freq)"
  )
)
encounter$hypersalineconc <- factor(encounter$hypersalineconc,
  levels = 1:8,
  labels = c(
    "3", "4", "5", "6", "7", "8", "9", "10"
  )
)
encounter$hypersalinefreq <- factor(encounter$hypersalinefreq,
  levels = 1:3,
  labels = c(
    "QD",
    "BID",
    "Other"
  )
)
encounter$pe_assessment <- factor(encounter$pe_assessment,
  levels = 1:5,
  labels = c(
    "Absent",
    "Mild exacerbation",
    "Moderate exacerbation",
    "Severe exacerbation",
    "Don't know/unable to answer"
  )
)
# Categorical variables - annual
annual$Lung_Transplants_Ever[is.na(annual$Lung_Transplants_Ever)] <- 0
yn_vars <- c(
  paste0("insurance", 1:7), paste0("employment", 1:7),
  "Lung_Transplants_Ever", "noinsurance", "parentsinsuranceplan",
  "patientassistanceprogram", "pregnant"
)
annual[, yn_vars] <- lapply(annual[, yn_vars], factor,
  levels = 0:1,
  labels = c("No", "Yes")
)
annual$smoking <- factor(annual$smoking,
  levels = c(1:4),
  labels = c(
    "No",
    "Occasionally",
    "Yes, Regularly, less than 1 ppd",
    "Yes, Regularly, 1 ppd or more"
  )
)
annual$second_smoke <- factor(annual$second_smoke,
  levels = c(1:4),
  labels = c(
    "Daily",
    "Several Times Per Week",
    "Several Times Per Month or less",
    "Never"
  )
)
annual$smoking_household <- factor(annual$smoking_household,
  levels = c(1:3),
  labels = c("Yes", "No", "Unknown")
)
annual$cfrd_status_annual <- factor(annual$cfrd_status_annual,
  levels = 1:5,
  labels = c(
    "Normal Glucose Tolerance",
    "Impaired Glucose Tolerance",
    "CFRD",
    "Type 1 Diabetes",
    "Type 2 Diabetes"
  )
)
annual$Transplant_status <- factor(annual$Transplant_status,
  levels = 1:5,
  labels = c(
    "Not pertinent",
    "Accepted, on waiting list",
    "Evaluated, final decision pending",
    "Evaluated, rejected",
    "Had transplantation"
  )
)
edu_vars <- c("patient_education", "father_education", "mother_education")
annual[, edu_vars] <- lapply(annual[, edu_vars], factor,
  levels = 1:6,
  labels = c(
    "Less than High School",
    "High School diploma or equivalent",
    "Some College",
    "College Graduate",
    "Masters/Doctoral level degree",
    "Unknown/Not applicable"
  )
)
annual$family_income <- factor(annual$family_income,
  levels = 1:11,
  labels = c(
    "<$10,000",
    "$10,000 to $19,999",
    "$20,000 to $29,999",
    "$30,000 to $39,999",
    "$40,000 to $49,999",
    "$50,000 to $59,999",
    "$60,000 to $69,999",
    "$70,000 to $79,999",
    "$80,000 to $89,999",
    ">$90,000",
    "Unknown or Prefer not to Answer"
  )
)
annual$marital_status <- factor(annual$marital_status,
  levels = 1:7,
  labels = c(
    "Single (never married)",
    "Living Together",
    "Married",
    "Separated",
    "Divorced",
    "Widowed",
    "Unknown"
  )
)
# Categorical variables - demographics
yn_vars <- c(paste0("Race", 1:6), "WasGenotyped")
demo[, yn_vars] <- lapply(demo[, yn_vars], factor, levels = 0:1, labels = c("No", "Yes"))
demo$Gender <- factor(demo$Gender, levels = c("M", "F"), labels = c("Male", "Female"))
demo$Patient_Dx <- factor(demo$Patient_Dx,
  levels = 1:4,
  labels = c(
    "Cystic Fibrosis",
    "CFTR-related metabolic syndrome",
    "CFTR-related disorder",
    "CF, CRMS and CFTR-related disorder all ruled out"
  )
)
demo$Hispanicrace[is.na(demo$Hispanicrace)] <- 3
demo$Hispanicrace <- factor(demo$Hispanicrace,
  levels = 1:3,
  labels = c("Yes", "No", "Unknown")
)
demo$MutClass <- factor(demo$MutClass)
# Get long mutation lists - demographics
mutations <- read_excel("/Volumes/PEDS/RI Biostatistics Core/Shared/Shared Projects/Vigers/CF/Kamyron Jordan/Racial and Ethnic Differences in ETI/Data_Raw/Copy of Codes for CFFPR_2023.xlsx")
mutations <- mutations %>%
  filter(field_name == "mutation1") %>%
  select(code_value, code_meaning)
mut_vars <- paste0("Mutation", 1:3)
demo[, mut_vars] <- lapply(demo[, mut_vars], factor,
  levels = mutations$code_value,
  labels = mutations$code_meaning
)
demo$F508_num <- apply(demo[, mut_vars], 1, function(r) {
  sum(r == "F508del", na.rm = T)
})
demo$F508_num <- factor(demo$F508_num,
  levels = 0:3,
  labels = c("None", "Heterozygous", "Homozygous", "Homozygous")
)
# Race
races <- list(
  "Race1" = "White",
  "Race2" = "Black or African American",
  "Race3" = "American Indian or Alaska Native",
  "Race4" = "Asian",
  "Race5" = "Native Hawaiian or Other Pacific Islander",
  "Race6" = "Some other race"
)
demo$race <- apply(demo[, paste0("Race", 1:6)], 1, function(r) {
  w <- which(r == "Yes")
  if (length(w) > 1 | 6 %in% w) {
    return("Mixed/Other/Unknown Race")
  } else {
    return(as.character(races[w]))
  }
})
demo$race[demo$Hispanicrace == "Yes"] <- "Hispanic or Latino"
demo$race[demo$Hispanicrace == "Unknown"] <- "Mixed/Other/Unknown Race"
demo$race <- factor(demo$race,
  levels = c(
    "White", "Black or African American", "Hispanic or Latino", "Asian",
    "American Indian or Alaska Native",
    "Native Hawaiian or Other Pacific Islander", "Mixed/Other/Unknown Race"
  ),
  labels = c(
    "White", "Black or African American", "Hispanic or Latino", "Asian",
    "Indigenous/Mixed/Other/Unknown Race",
    "Indigenous/Mixed/Other/Unknown Race", "Indigenous/Mixed/Other/Unknown Race"
  )
)
# Create some of our own annualized variables
by_year <- encounter %>%
  mutate(across(contains("Vx"), ~ factor(.x, ordered = T))) %>%
  group_by(eDWID, reviewyear) %>%
  summarise(
    mean_ppFEV = mean(GLI_FEV1_pct_predicted, na.rm = T),
    mean_ppFVC = mean(GLI_FVC_pct_predicted, na.rm = T),
    weight_last = last(na.omit(weight)),
    weight_perc_last = last(na.omit(weightpercentile)),
    bmi_last = last(na.omit(bmivalue)),
    bmi_perc_last = last(na.omit(bmipercentile)),
    across(contains("Vx"), ~ max(.x)),
    .groups = "drop"
  ) %>%
  group_by(eDWID) %>%
  mutate(
    baseline_FEV = first(na.omit(mean_ppFEV)),
    baseline_FVC = first(na.omit(mean_ppFVC))
  ) %>%
  ungroup() %>%
  mutate(
    across(contains("Vx"), ~ factor(.x, ordered = F))
  )
annual <- full_join(annual, by_year, by = join_by(eDWID, ReviewYear == reviewyear))
# Manage labels (tried to do this programmatically but the data dictionary has
# some quirks and this ended up being faster)
labels <-
  list(
    "eDWID" = "eDWID", "reviewyear" = "Year", "encounterid" = "Encounter ID",
    "encounterdate" = "Encounter Date", "encounternum" = "Encounter Number",
    "encounterlocation" = "Encounter Location", "encounterage" = "Age",
    "height" = "Height (cm)", "heightpercentile" = "Height %ile",
    "htpct_zscore" = "Height Z-Score", "weight" = "Weight (kg)",
    "weightpercentile" = "Weight %ile", "wtpct_zscore" = "Weight Z-Score",
    "bmivalue" = "BMI", "bmipercentile" = "BMI %ile",
    "bacterialculturedone" = "Bacterial Culture Done?",
    "cultureresults" = "Culture Results",
    "staphylococcus_aureus" = "S. aureus detected",
    "staphyl_type1" = "MRSA", "staphyl_type2" = "MSSA",
    "haemophilus_influenzae" = "H. influenzae detected",
    "pseudomonasaeruginosa" = "P. aeruginosa detected",
    "patype1" = "Mucoid P. aeruginosa",
    "patype2" = "Non-Mucoid P. aeruginosa",
    "burkho_complex" = "B. cepacia complex",
    "othermicroorganisms1" = "A. xylosoxidans",
    "pulmonarymeds_notonany" = "Not on any pulmonary meds",
    "tobi" = "Tobramycin", "tobifrequency" = "Tobramycin frequency",
    "aztreonam" = "Aztreonam", "aztreonam_freq" = "Aztreonam frequency",
    "Vx770" = "Vx770", "Vx809comb" = "Vx809comb", "Vx661comb" = "Vx661comb",
    "Vx445comb" = "Vx445comb", "dornasealfa" = "Dornase alfa",
    "dornase_frequency" = "Dornase alfa frequency",
    "hypertonicsaline" = "Hypertonic saline",
    "hypersalineconc" = "Hypertonic saline concentration",
    "hypersalinefreq" = "Hypertonic saline frequency",
    "isOnEnzymes" = "Is on enzymes", "FVC" = "FVC",
    "GLI_FVC_pct_predicted" = "ppFVC", "FEV1" = "FEV1",
    "GLI_FEV1_pct_predicted" = "ppFEV1", "FEV1FVC" = "FEV1/FVC",
    "GLI_FEV1FVC_pct_predicted" = "ppFEV1/FVC",
    "hepatobiliary1_3" = "Liver disease, cirrhosis",
    "acutehepatitis" = "Acute hepatitis",
    "acutehepatitis_type2" = "Acute hepatitis type 2",
    "hepatobiliary2_1" = "Liver disease, non- cirrhosis",
    "hepatobiliary2_3" = "Liver disease, other",
    "pulmonarycomplications1" = "ABPA",
    "pe_assessment" = "Assessment of potential pulmonary exacerbation",
    "medscurrentepisode6" = "Inhaled antibiotic PLUS an oral quinolone antibiotic",
    "medscurrentepisode7" = "No medications prescribed during this episode",
    "eti_elig" = "Eligible for ETI",
    "ReviewYear" = "Year", "Age_YrEnd" = "Age at Year End",
    "smoking" = "Did patient smoke cigarettes?",
    "second_smoke" = "How often was this patient exposed to secondhand smoke?",
    "smoking_household" = "Does anyone in the patient's household smoke cigarettes?",
    "cfrd_status_annual" = "CFRD Status", "Transplant_status" = "Transplantation status",
    "Lung_Transplants_Ever" = "Lung Transplant Status",
    "insurance1" = "Health Insurance Policy (e.g. Private Insurance)",
    "insurance2" = "Medicare", "insurance3" = "Medicaid",
    "insurance4" = "State special needs program, e.g., BCMH, CCS, CRS, GHPP, etc.",
    "insurance5" = "TriCare or other military health plan",
    "insurance6" = "Indian Health Service", "insurance7" = "Other Insurance",
    "noinsurance" = "No Insurance",
    "parentsinsuranceplan" = "Patient is covered on parents' insurance plan",
    "patientassistanceprogram" = "Enrolled in Patient Assistance Program?",
    "patient_education" = "Education of Patient",
    "father_education" = "Father's education",
    "mother_education" = "Mother's education",
    "family_income" = "Total combined income of the household",
    "marital_status" = "Marital Status",
    "employment1" = "Part Time", "employment2" = "Full time homemaker",
    "employment3" = "Full time employment", "employment4" = "Unemployed",
    "employment5" = "Student", "employment6" = "Disabled", "employment7" = "Retired",
    "pregnant" = "Was patient pregnant during the reporting year?",
    "Patient_Dx" = "Patient Diagnosis", "DOB_Year" = "Year of Birth",
    "Gender" = "Gender",
    "Race1" = "White", "Race2" = "Black or African American",
    "Race3" = "American Indian or Alaska Native", "Race4" = "Asian",
    "Race5" = "Native Hawaiian or Other Pacific Islander",
    "Race6" = "Some other race", "race" = "Race/Ethnicity",
    "Hispanicrace" = "Is Patient of Hispanic Origin?",
    "Death_year" = "Year of Death", "Diagnosis_year" = "Year of Diagnosis",
    "Age_Diag" = "Age at Diagnosis", "WasGenotyped" = "Has this patient been genotyped?",
    "MutClass" = "Mutation class",
    "F508" = "F508", "F508_num" = "F508del Status",
    "Mutation1" = "Name of the first mutation",
    "Mutation2" = "Name of the second mutation",
    "Mutation3" = "Name of the third mutation (if any)",
    "First_LungTransplantDate" = "Date of First Lung Transplant",
    "Modulator_trikafta_first_date" = "Date of Trikafta Start",
    "mean_ppFEV" = "Mean ppFEV", "mean_ppFVC" = "Mean ppFVC",
    "weight_last" = "Weight at Last Visit",
    "weight_perc_last" = "Weight %ile at Last Visit",
    "bmi_last" = "BMI at Last Visit", "bmi_perc_last" = "BMI %ile at Last Visit",
    "baseline_FEV" = "Baseline FEV1", "baseline_FVC" = "Baseline FVC"
  )
# Merge
annual <- full_join(demo, annual, by = join_by(eDWID))
encounter <- full_join(demo, encounter, by = join_by(eDWID))
# Remove encounters with no date
encounter <- encounter %>% filter(!is.na(reviewyear))
# Labels
label(annual) <- labels[colnames(annual)]
label(demo) <- labels[colnames(demo)]
label(encounter) <- labels[colnames(encounter)]
# Make labels for tidyverse operations (a list to pass to rename())
tidy_labels <- names(labels)
names(tidy_labels) <- sapply(labels, "[[", 1)
# Save
save(annual, encounter, demo, labels, tidy_labels, by_year,
  file = "/Volumes/PEDS/RI Biostatistics Core/Shared/Shared Projects/Vigers/CF/Kamyron Jordan/Racial and Ethnic Differences in ETI/Data_Cleaned/analysis_dataset.RData"
)
