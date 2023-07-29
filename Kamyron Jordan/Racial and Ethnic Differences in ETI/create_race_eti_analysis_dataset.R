library(tidyverse)
library(lubridate)
library(readxl)
library(Hmisc)
# Import
annual <- read.csv("/Users/timvigers/Documents/Work/Vigers/CF/Kamyron Jordan/Racial and Ethnic Differences in ETI/Data_Raw/DataDelivery_20230420/CFF21_Annualized_Del1.csv", na.strings = "")
encounter <- read.csv("/Users/timvigers/Documents/Work/Vigers/CF/Kamyron Jordan/Racial and Ethnic Differences in ETI/Data_Raw/DataDelivery_20230420/CFF21_encountersMerged_Del1.csv", na.strings = "")
demo <- read.csv("/Users/timvigers/Documents/Work/Vigers/CF/Kamyron Jordan/Racial and Ethnic Differences in ETI/Data_Raw/DataDelivery_20230420/CFF21_DemogCFDiag_Del1.csv", na.strings = "")
# Categorical variables - encounters
bugs = c("staphylococcus_aureus", "haemophilus_influenzae",
         "pseudomonasaeruginosa","burkho_complex","othermicroorganisms1")
encounter[,bugs] = lapply(encounter[,bugs],function(c){
  c[!is.na(encounter$bacterialculturedone) & is.na(c)] <- 0
  return(c)
})
bug_types = c("staphyl_type1","staphyl_type2","patype1","patype2")
encounter[,bug_types] = lapply(encounter[,bug_types],function(c){
  c[is.na(encounter$bacterialculturedone)] = NA
  return(c)
})



yn_vars <- c()

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
demo$Hispanicrace <- factor(demo$Hispanicrace,
  levels = 1:3,
  labels = c("Yes", "No", "Unknown")
)
demo$MutClass <- factor(demo$MutClass)
# Get long mutation lists
mutations <- read_excel("/Users/timvigers/Documents/Work/Vigers/CF/Kamyron Jordan/Racial and Ethnic Differences in ETI/Data_Raw/Copy of Codes for CFFPR_2023.xlsx")
mutations <- mutations %>%
  filter(field_name == "mutation1") %>%
  select(code_value, code_meaning)
mut_vars <- paste0("Mutation", 1:3)
demo[, mut_vars] <- lapply(demo[, mut_vars], factor,
  levels = mutations$code_value,
  labels = mutations$code_meaning
)
# Dates
demo$First_LungTransplantDate <- mdy(demo$First_LungTransplantDate)
demo$Modulator_trikafta_first_date <- mdy(demo$Modulator_trikafta_first_date)
# Manage labels (tried to do this programmatically but the data dictionary has
# some quirks and this ended up being faster)
encounter_labels <-
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
    "Vx770" = "Ivacaftor", "Vx809comb" = "Orkambi", "vx661comb" = "Symdeko",
    "vx445comb" = "Trikafta", "dornasealfa" = "Dornase alfa",
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
    "medscurrentepisode7" = "No medications prescribed during this episode"
  )
annual_labels <-
  list(
    "eDWID" = "eDWID", "ReviewYear" = "Review Year", "Age_YrEnd" = "Age at Year End",
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
    "pregnant" = "Was patient pregnant during the reporting year?"
  )
demo_labels <-
  list(
    "eDWID" = "eDWID", "Patient_Dx" = "Patient Diagnosis", "DOB_Year" = "Year of Birth",
    "Gender" = "Gender",
    "Race1" = "White", "Race2" = "Black or African American",
    "Race3" = "American Indian or Alaska Native", "Race4" = "Asian",
    "Race5" = "Native Hawaiian or Other Pacific Islander",
    "Race6" = "Some other race", "Hispanicrace" = "Is Patient of Hispanic Origin?",
    "Death_year" = "Year of Death", "Diagnosis_year" = "Year of Diagnosis",
    "Age_Diag" = "Age at Diagnosis", "WasGenotyped" = "Has this patient been genotyped?",
    "MutClass" = "Mutation class", "F508" = "Number of F508del mutations",
    "Mutation1" = "Name of the first mutation",
    "Mutation2" = "Name of the second mutation",
    "Mutation3" = "Name of the third mutation (if any)",
    "First_LungTransplantDate" = "Date of First Lung Transplant",
    "Modulator_trikafta_first_date" = "Date of Trikafta Start"
  )
# Apply labels
label(annual) <- annual_labels[colnames(annual)]
label(demo) <- demo_labels[colnames(demo)]
label(encounter) = encounter_labels[colnames(encounter)]
# Merge
df <- full_join(demo, annual, by = join_by(eDWID))
# Save
save(df, file = "/Users/timvigers/Documents/Work/Vigers/CF/Kamyron Jordan/Racial and Ethnic Differences in ETI/Data_Cleaned/analysis_dataset.RData")
