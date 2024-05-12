library(tidyverse)
library(lubridate)
library(readxl)
library(rspiro)
library(Hmisc)
# Paths
home_dir <- switch(Sys.info()["sysname"],
  "Darwin" = "/Users/timvigers/Library/CloudStorage/OneDrive-TheUniversityofColoradoDenver/Vigers/CF",
  "Windows" = "C:/Users/Tim/OneDrive - The University of Colorado Denver/Vigers/CF",
  "Linux" ="/home/timvigers/OneDrive/Vigers/CF"
)
setwd(home_dir)
# Import
annual <- read.csv("./Kamyron Jordan/Racial and Ethnic Differences in ETI/Data_Raw/DataDelivery_20240125/CFF22_Annualized_Del1.csv", na.strings = "")
encounter <- read.csv("./Kamyron Jordan/Racial and Ethnic Differences in ETI/Data_Raw/DataDelivery_20240125/CFF22_encountersMerged_Del1.csv", na.strings = "")
demo <- read.csv("./Kamyron Jordan/Racial and Ethnic Differences in ETI/Data_Raw/DataDelivery_20240125/CFF22_DemogCFDiag_Del1.csv", na.strings = "")
# Import responsive mutations list
responsive_mutations <- read.csv("./Kamyron Jordan/Racial and Ethnic Differences in ETI/Data_Cleaned/eti_responsive_mutations.csv", header = F)
responsive_mutations <- unique(responsive_mutations$V1)
# Dates
demo$First_LungTransplantDate <- mdy(demo$First_LungTransplantDate)
demo$Modulator_trikafta_first_date <- mdy(demo$Modulator_trikafta_first_date)
encounter$encounterdate <- mdy(encounter$encounterdate)
eti_12_up <- ymd("2019-10-21")
eti_12_up_expansion <- ymd("2020-12-21")
eti_6_up <- ymd("2021-06-09")
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
encounter[, yn_vars] <- lapply(encounter[, yn_vars], factor,
  levels = 0:1, labels = c("No", "Yes")
)
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
ins_vars <- c(paste0("insurance", 1:7), "noinsurance")
ins <- c(
  "Health Insurance Policy (e.g. Private Insurance)", "Medicare", "Medicaid",
  "State special needs program, e.g., BCMH, CCS, CRS, GHPP, etc.",
  "TriCare or other military health plan",
  "Indian Health Service", "Other", "No Insurance"
)
annual$Insurance <- apply(annual[, ins_vars], 1, function(r) {
  w <- which(r == "Yes")
  if (length(w) == 0) {
    return(NA)
  } else if (length(w) > 1) {
    return("More than one")
  } else {
    return(ins[w])
  }
})
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
mutations <- read_excel("./Kamyron Jordan/Racial and Ethnic Differences in ETI/Data_Raw/Copy of Codes for CFFPR_2023.xlsx")
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
    "Non-Hispanic White", "Black or African American", "Hispanic or Latino", "Asian",
    "Other", "Other", "Other"
  )
)
# Merge
annual <- full_join(demo, annual, by = join_by(eDWID))
encounter <- full_join(demo, encounter, by = join_by(eDWID))
# Add insurance, etc. to encounter data
encounter <- left_join(
  encounter,
  annual %>%
    select(eDWID, ReviewYear, Insurance, family_income, all_of(edu_vars)),
  by = join_by(eDWID, reviewyear == ReviewYear)
)
# Remove encounters with no date
encounter <- encounter %>% filter(!is.na(reviewyear))
# Remove lung transplant, those who were lost to f/u, and those who were not genotyped
encounter <- encounter %>% filter(WasGenotyped == "Yes", is.na(First_LungTransplantDate))
annual <- annual %>% filter(WasGenotyped == "Yes", is.na(First_LungTransplantDate))
# ETI eligibility
encounter$eti_elig <- apply(encounter, 1, function(r) {
  # Format variables
  age <- as.numeric(r["encounterage"])
  date <- r["encounterdate"]
  # Start with not eligible by default
  elig <- "No"
  # Get mutations
  muts <- r[grep("Mutation", names(r))]
  # Start with first approval
  if (date >= eti_12_up & age >= 12 & "F508del" %in% muts) {
    elig <- "Yes"
  }
  # Next, eligible if over 12 and mutation in expanded list
  else if (date >= eti_12_up_expansion & age >= 12 & any(muts %in% responsive_mutations)) {
    elig <- "Yes"
  }
  # Next approved for 6 and up with F508del or other responsive mutation
  else if (date >= eti_6_up & age >= 6 & any(muts %in% responsive_mutations)) {
    elig <- "Yes"
  }
  return(elig)
}, simplify = T)
# Find approximate date of eligibility for survival analysis - approximate DOB first
encounter <- encounter %>%
  mutate(approx_dob = encounterdate %m-% months(as.integer(encounterage) * 12 +
    as.integer((encounterage * 12) %% 12))) %>%
  group_by(eDWID) %>%
  mutate(approx_dob = mean.Date(approx_dob)) %>%
  ungroup()
app_dobs <- encounter %>%
  group_by(eDWID) %>%
  filter(row_number() == 1) %>%
  select(eDWID, approx_dob, contains("Mutation"))
app_dobs$age_at_first <- as.numeric(eti_12_up - app_dobs$approx_dob) / 365.25
app_dobs$age_at_expansion <-
  as.numeric(eti_12_up_expansion - app_dobs$approx_dob) / 365.25
app_dobs$age_at_second <- as.numeric(eti_6_up - app_dobs$approx_dob) / 365.25
# For each person, get date they became eligible
app_dobs$eti_elig_date <- apply(app_dobs, 1, function(r) {
  # Format date
  dob <- ymd(r["approx_dob"])
  age_first <- as.numeric(r["age_at_first"])
  age_expansion <- as.numeric(r["age_at_expansion"])
  age_second <- as.numeric(r["age_at_second"])
  # Start with not eligible by default
  date_elig <- NA
  # Get mutations
  muts <- r[grep("Mutation", names(r))]
  # F508del logic first
  if ("F508del" %in% muts) {
    # If they were age 12 or older at first approval, they became eligible that day
    if (age_first >= 12) {
      date_elig <- eti_12_up
    }
    # If they turned 12 between first and second approvals, eligible on birthday
    else if (age_first < 12 & age_second > 12) {
      date_elig <- dob + years(12)
    }
    # If they were under 12 and >= 6 on second approval, eligible on that day
    else if (age_second < 12 & age_second >= 6) {
      date_elig <- eti_6_up
    }
    # If they were under 6 at second approval, become eligible on 6th birthday
    else if (age_second < 6) {
      date_elig <- dob + years(6)
    }
  }
  # Rare mutation logic
  else if (any(muts %in% responsive_mutations)) {
    # If they were age 12 or older at expansion, they became eligible that day
    if (age_expansion >= 12) {
      date_elig <- eti_12_up_expansion
    }
    # If they turned 12 between expansion and second approval, eligible on birthday
    else if (age_expansion < 12 & age_second > 12) {
      date_elig <- dob + years(12)
    }
    # If they were under 12 and >= 6 on second approval, eligible on that day
    else if (age_expansion < 12 & age_second >= 6) {
      date_elig <- eti_6_up
    }
    # If they were under 6 at second approval, become eligible on 6th birthday
    else if (age_second < 6) {
      date_elig <- dob + years(6)
    }
  }
  return(date_elig)
}, simplify = T)
# Convert back to date from numeric
app_dobs$eti_elig_date <- as.Date(app_dobs$eti_elig_date, origin = "1970-01-01")
# Add approximate eligibility date to encounters
app_dobs <- app_dobs %>% select(eDWID, eti_elig_date)
encounter <- full_join(encounter, app_dobs, by = join_by(eDWID))
encounter$approx_dob <- NULL
# Create some of our own annualized variables
by_year <- encounter %>%
  group_by(eDWID, reviewyear) %>%
  summarise(
    mean_ppFEV = mean(GLI_FEV1_pct_predicted, na.rm = T),
    mean_ppFVC = mean(GLI_FVC_pct_predicted, na.rm = T),
    mean_ppFEV_rn = mean(gli_fev1_ppred_rn, na.rm = T),
    mean_ppFVC_rn = mean(gli_fvc_ppred_rn, na.rm = T),
    weight_last = last(na.omit(weight)),
    weight_perc_last = last(na.omit(weightpercentile)),
    bmi_last = last(na.omit(bmivalue)),
    bmi_perc_last = last(na.omit(bmipercentile)),
    Vx445comb = case_when("Yes" %in% Vx445comb ~ "Yes", .default = "No"),
    .groups = "drop"
  )
annual <- full_join(annual, by_year, by = join_by(eDWID, ReviewYear == reviewyear))
# ETI eligibility by year
annual$eti_elig <- apply(annual, 1, function(r) {
  # Format variables
  age <- as.numeric(r["Age_YrEnd"])
  date <- r["ReviewYear"]
  # Start with not eligible by default
  elig <- "No"
  # Get mutations
  muts <- r[grep("Mutation", names(r))]
  # Start with first approval
  if (date >= year(eti_12_up) & age >= 12 & "F508del" %in% muts) {
    elig <- "Yes"
  }
  # Next, eligible if over 12 and mutation in expanded list
  else if (date >= year(eti_12_up_expansion) & age >= 12 & any(muts %in% responsive_mutations)) {
    elig <- "Yes"
  }
  # Next approved for 6 and up with F508del or other responsive mutation
  else if (date >= year(eti_6_up) & age >= 6 & any(muts %in% responsive_mutations)) {
    elig <- "Yes"
  }
  return(elig)
}, simplify = T)
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
    "Vx770" = "Prescribed Ivacaftor", "Vx809comb" = "Prescribed Lumacaftor/Ivacaftor",
    "Vx661comb" = "Prescribed Tezacaftor/Ivacaftor",
    "Vx445comb" = "Prescribed Elexacaftor/Tezacaftor/Ivacaftor",
    "dornasealfa" = "Dornase alfa",
    "dornase_frequency" = "Dornase alfa frequency",
    "hypertonicsaline" = "Hypertonic saline",
    "hypersalineconc" = "Hypertonic saline concentration",
    "hypersalinefreq" = "Hypertonic saline frequency",
    "isOnEnzymes" = "Is on enzymes", "FVC" = "FVC",
    "GLI_FVC_pct_predicted" = "ppFVC", "FEV1" = "FEV1",
    "GLI_FEV1_pct_predicted" = "ppFEV1", "FEV1FVC" = "FEV1/FVC",
    "GLI_FEV1FVC_pct_predicted" = "ppFEV1/FVC",
    "gli_fev1_ppred_rn" = "ppFEV1 (Race Neutral)", "gli_fvc_ppred_rn" = "ppFVCrn",
    "gli_fev1fvc_ppred_rn" = "ppFEV1/FVCrn",
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
    "Insurance" = "Insurance",
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
    "Race1" = "Non-Hispanic White", "Race2" = "Black or African American",
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
    "mean_ppFEV_rn" = "Mean ppFEVrn", "mean_ppFVC_rn" = "Mean ppFVCrn",
    "weight_last" = "Weight at Last Visit",
    "weight_perc_last" = "Weight %ile at Last Visit",
    "bmi_last" = "BMI at Last Visit", "bmi_perc_last" = "BMI %ile at Last Visit",
    "baseline_FEV" = "Baseline FEV1", "baseline_FVC" = "Baseline FVC",
    "eti_elig_date" = "Approximate Date of ETI Eligibility"
  )
# Apply labels
label(annual) <- labels[colnames(annual)]
label(demo) <- labels[colnames(demo)]
label(encounter) <- labels[colnames(encounter)]
# Make labels for tidyverse operations (a list to pass to rename())
tidy_labels <- names(labels)
names(tidy_labels) <- sapply(labels, "[[", 1)
# Save
save(annual, encounter, demo, labels, tidy_labels, by_year,
  file = "./Kamyron Jordan/Racial and Ethnic Differences in ETI/Data_Cleaned/prescription_dataset.RData"
)
