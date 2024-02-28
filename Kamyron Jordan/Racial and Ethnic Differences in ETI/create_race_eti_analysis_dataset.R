library(tidyverse)
library(lubridate)
library(readxl)
library(rspiro)
library(Hmisc)
# Import
annual <- read.csv("/Users/timvigers/Library/CloudStorage/OneDrive-TheUniversityofColoradoDenver/Vigers/CF/Kamyron Jordan/Racial and Ethnic Differences in ETI/Data_Raw/DataDelivery_20240125/CFF22_Annualized_Del1.csv", na.strings = "")
encounter <- read.csv("/Users/timvigers/Library/CloudStorage/OneDrive-TheUniversityofColoradoDenver/Vigers/CF/Kamyron Jordan/Racial and Ethnic Differences in ETI/Data_Raw/DataDelivery_20240125/CFF22_encountersMerged_Del1.csv", na.strings = "")
demo <- read.csv("/Users/timvigers/Library/CloudStorage/OneDrive-TheUniversityofColoradoDenver/Vigers/CF/Kamyron Jordan/Racial and Ethnic Differences in ETI/Data_Raw/DataDelivery_20240125/CFF22_DemogCFDiag_Del1.csv", na.strings = "")
# Import responsive mutations list
responsive_mutations <- read.csv("/Users/timvigers/Library/CloudStorage/OneDrive-TheUniversityofColoradoDenver/Vigers/CF/Kamyron Jordan/Racial and Ethnic Differences in ETI/Data_Cleaned/eti_responsive_mutations.csv", header = F)
responsive_mutations <- unique(responsive_mutations$V1)
# Dates
demo$First_LungTransplantDate <- mdy(demo$First_LungTransplantDate)
demo$Modulator_trikafta_first_date <- mdy(demo$Modulator_trikafta_first_date)
encounter$encounterdate <- mdy(encounter$encounterdate)
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
  w <- which(r == 1)
  if (length(w) > 1 | 6 %in% w) {
    return("Mixed/Other/Unknown Race")
  } else {
    return(as.character(races[w]))
  }
})
demo$race[demo$Hispanicrace == 1] <- "Hispanic or Latino"
demo$race[is.na(demo$Hispanicrace)] <- "Mixed/Other/Unknown Race"
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
# Mutations
demo$MutClass <- factor(demo$MutClass)
# Get long mutation lists - demographics
mutations <- read_excel("/Users/timvigers/Library/CloudStorage/OneDrive-TheUniversityofColoradoDenver/Vigers/CF/Kamyron Jordan/Racial and Ethnic Differences in ETI/Data_Raw/Copy of Codes for CFFPR_2023.xlsx")
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
# Merge
encounter <- full_join(demo, encounter, by = join_by(eDWID))
# Remove encounters with no date
encounter <- encounter %>% filter(!is.na(reviewyear))
# Remove lung transplant, those who were lost to f/u, and those who were not genotyped
encounter <- encounter %>% filter(WasGenotyped == 1, is.na(First_LungTransplantDate))
# ETI eligibility
eti_12_up <- ymd("2019-10-21")
eti_12_up_expansion <- ymd("2020-12-21")
eti_6_up <- ymd("2021-06-09")
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
app_dobs$age_at_expansion <- as.numeric(eti_12_up_expansion - app_dobs$approx_dob) / 365.25
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
# Checking
f508 <- app_dobs %>% filter(Mutation1 == "F508del" | Mutation2 == "F508del" | Mutation3 == "F508del")
rare <- app_dobs %>% filter(Mutation1 != "F508del" & Mutation2 != "F508del" & Mutation3 != "F508del")
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
# Check rspiro with registry info
encounter$GLI_FEV1_pct_predicted_check <- pctpred_GLI(
  FEV1 = encounter$FEV1, age = encounter$encounterage,
  height = encounter$height / 100, gender = encounter$Gender,
  ethnicity = as.numeric(sapply(as.character(encounter$race), function(x) {
    switch(x,
      "White" = "1",
      "Black or African American" = "2",
      "Hispanic or Latino" = "5",
      "Asian" = "3",
      "Indigenous/Mixed/Other/Unknown Race" = "5"
    )
  }))
)
# Race free lung function equations
encounter$ppFEV1gl <- pctpred_GLIgl(
  FEV1 = encounter$FEV1, age = encounter$encounterage,
  height = encounter$height / 100, gender = encounter$Gender,
)
# Remove infinite values
encounter$GLI_FEV1_pct_predicted_check[is.infinite(encounter$GLI_FEV1_pct_predicted_check)]=NA
encounter$ppFEV1gl[is.infinite(encounter$ppFEV1gl)]=NA
# Labels
label(annual) <- labels[colnames(annual)]
label(demo) <- labels[colnames(demo)]
label(encounter) <- labels[colnames(encounter)]
# Make labels for tidyverse operations (a list to pass to rename())
tidy_labels <- names(labels)
names(tidy_labels) <- sapply(labels, "[[", 1)
# Save
save(annual, encounter, demo, labels, tidy_labels, by_year,
  file = "/Users/timvigers/Library/CloudStorage/OneDrive-TheUniversityofColoradoDenver/Vigers/CF/Kamyron Jordan/Racial and Ethnic Differences in ETI/Data_Cleaned/analysis_dataset.RData"
)