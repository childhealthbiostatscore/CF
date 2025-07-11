library(tidyverse)
library(lubridate)
# Paths
home_dir <- switch(Sys.info()["sysname"],
  "Darwin" = "/Users/tim/Library/CloudStorage/OneDrive-TheUniversityofColoradoDenver/Vigers/CF",
  "Windows" = "C:/Users/Tim/OneDrive - The University of Colorado Denver/Vigers/CF",
  "Linux" = "/home/tim/CF"
)
setwd(home_dir)
# Import
encounter <- read.csv("./Kamyron Jordan/Racial and Ethnic Differences in ETI/Data_Raw/DataDelivery_20240125/CFF22_encountersMerged_Del1.csv",
  na.strings = ""
)
annual <- read.csv("./Kamyron Jordan/Racial and Ethnic Differences in ETI/Data_Raw/DataDelivery_20240125/CFF22_Annualized_Del1.csv",
  na.strings = ""
)
demo <- read.csv("./Kamyron Jordan/Racial and Ethnic Differences in ETI/Data_Raw/DataDelivery_20240125/CFF22_DemogCFDiag_Del1.csv",
  na.strings = ""
)
hospitalizations <- read.csv("./Kamyron Jordan/Racial and Ethnic Differences in ETI/Data_Raw/DataDelivery_20240125/CFF22_CareEpisodes_Del1.csv",
  na.strings = ""
)
# List of outcomes
continuous_outcomes <- c(
  "gli_fev1_ppred_rn", "gli_fvc_ppred_rn", "gli_fev1fvc_ppred_rn",
  "bmipercentile", "heightpercentile", "weightpercentile"
)
# Race variable
races <- list(
  "Race1" = "White",
  "Race2" = "Black or African American",
  "Race3" = "American Indian or Alaska Native",
  "Race4" = "Asian",
  "Race5" = "Native Hawaiian or Other Pacific Islander",
  "Race6" = "Some other race"
)
demo$Race <- apply(demo[, paste0("Race", 1:6)], 1, function(r) {
  w <- which(r == 1)
  if (length(w) > 1 | 6 %in% w) {
    return("Mixed/Other/Unknown Race")
  } else {
    return(as.character(races[w]))
  }
})
demo$Race[demo$Hispanicrace == 1] <- "Hispanic or Latino"
demo$Race[is.na(demo$Hispanicrace)] <- "Mixed/Other/Unknown Race"
demo$Race <- factor(demo$Race,
  levels = c(
    "White", "Black or African American", "Hispanic or Latino", "Asian",
    "American Indian or Alaska Native",
    "Native Hawaiian or Other Pacific Islander", "Mixed/Other/Unknown Race"
  ),
  labels = c(
    "Non-Hispanic White", "Black or African American", "Hispanic or Latino",
    "Other", "Other", "Other", "Other"
  )
)
# Insurance
ins_vars <- c(paste0("insurance", 1:7), "noinsurance")
ins <- c(
  "Health Insurance Policy (e.g. Private Insurance)", "Medicare", "Medicaid",
  "State special needs program, e.g., BCMH, CCS, CRS, GHPP, etc.",
  "TriCare or other military health plan",
  "Indian Health Service", "Other", "No Insurance"
)
annual$Insurance <- apply(annual[, ins_vars], 1, function(r) {
  w <- which(r == 1)
  if (length(w) == 0) {
    return(NA)
  } else if (length(w) > 1) {
    return("More than one")
  } else {
    return(ins[w])
  }
})
annual$Insurance <- factor(annual$Insurance,
  levels = c(
    "Health Insurance Policy (e.g. Private Insurance)",
    "Indian Health Service",
    "Medicaid",
    "Medicare",
    "More than one",
    "No Insurance",
    "Other",
    "State special needs program, e.g., BCMH, CCS, CRS, GHPP, etc.",
    "TriCare or other military health plan"
  ),
  labels = c(
    "Private", "Public", "Public", "Public", "More Than One", "No Insurance",
    "No Insurance", "Public", "Tricare"
  )
)
# Other factor variables
encounter$encounterlocation <- factor(encounter$encounterlocation,
  levels = 1:6, labels = c("Clinic", "Hospital", "Home IV", "Other", "5", "6")
)
encounter$bacterialculturedone[is.na(encounter$bacterialculturedone)] <- 0
encounter$bacterialculturedone <- factor(encounter$bacterialculturedone,
  levels = 0:1, labels = c("No", "Yes")
)
encounter$cultureresults <- factor(encounter$cultureresults,
  levels = 1:3,
  labels = c("No growth/sterile culture", "Normal flora", "Microorganisms")
)
# Pulmonary exacerbations
encounter$pe_assessment[encounter$pe_assessment == 5] <- NA
encounter$PEx <- factor(encounter$pe_assessment,
  levels = 1:4,
  labels = c(
    "Absent", "Mild, moderate, or severe exacerbation",
    "Mild, moderate, or severe exacerbation",
    "Mild, moderate, or severe exacerbation"
  )
)
# Merge
encounter <- left_join(
  encounter,
  demo %>% select(eDWID, Race, Gender, Modulator_trikafta_first_date)
)
encounter <- left_join(encounter,
  annual %>% select(eDWID, ReviewYear, Insurance, pregnant),
  by = join_by(eDWID, reviewyear == ReviewYear)
)
# Age group
encounter$age_group <- cut(encounter$encounterage,
  breaks = c(6, 12, 18, 30, Inf), right = F
)
# Days between encounter and first ETI
encounter$Modulator_trikafta_first_date <-
  mdy(encounter$Modulator_trikafta_first_date)
encounter$encounterdate <- mdy(encounter$encounterdate)
encounter$Days <- as.numeric(encounter$encounterdate -
  encounter$Modulator_trikafta_first_date)
encounter$age_eti_start <-
  round(encounter$encounterage - (encounter$Days / 365.25), 2)
encounter$age_eti_group <- cut(encounter$age_eti_start,
  breaks = c(-Inf, 18, Inf), right = FALSE
)
# Hospitalization or home IVs
hospitalizations$CareEpi_StartDt <- mdy(hospitalizations$CareEpi_StartDt)
hospitalizations$CareEpi_EndDt <- mdy(hospitalizations$CareEpi_EndDt)
hospitalizations <- hospitalizations %>%
  rowwise() %>%
  reframe(eDWID,
    encounterdate = seq(CareEpi_StartDt, CareEpi_EndDt, by = "day")
  ) %>%
  mutate(hospitalized = "Yes")
encounter <- 
  left_join(encounter, hospitalizations, by = join_by(eDWID, encounterdate))
# Variables for flowchart
n_enc_1 <- nrow(encounter)
n_people_1 <- length(unique(encounter$eDWID))
no_eti_date <- which(is.na(encounter$Modulator_trikafta_first_date))
n_people_no_eti_date <- length(unique(encounter$eDWID[no_eti_date]))
# Remove those without an ETI start date
encounter <- encounter[-no_eti_date, ]
n_enc_2 <- nrow(encounter)
n_people_2 <- length(unique(encounter$eDWID))
# Filter out hospitalizations
hosp <- which(encounter$hospitalized == "Yes" |
  encounter$encounterlocation %in% c("Hospital", "Home IV"))
n_people_hosp <- length(unique(encounter$eDWID[hosp]))
encounter <- encounter[-hosp, ]
n_enc_3 <- nrow(encounter)
n_people_3 <- length(unique(encounter$eDWID))
# Pregnancies
preg <- which(encounter$pregnant == 1)
n_people_preg <- length(unique(encounter$eDWID[preg]))
encounter <- encounter[-preg, ]
n_enc_4 <- nrow(encounter)
n_people_4 <- length(unique(encounter$eDWID))
# Days from ETI start
early <- which(encounter$Days < -365.25 * 3)
n_people_early <- length(unique(encounter$eDWID[early]))
late <- which(encounter$Days > 365.25 * 2)
n_people_late <- length(unique(encounter$eDWID[late]))
encounter <- encounter[-early, ]
encounter <- encounter[-late, ]
n_enc_5 <- nrow(encounter)
n_people_5 <- length(unique(encounter$eDWID))
# Lung function cutoffs
lower <- 10
upper <- 150
# Remove impossible lung function values
low_fev1 <- which(encounter$gli_fev1_ppred_rn < lower)
high_fev1 <- which(encounter$gli_fev1_ppred_rn > upper)
encounter$gli_fev1_ppred_rn[low_fev1] <- NA
encounter$gli_fev1_ppred_rn[high_fev1] <- NA
low_fvc <- which(encounter$gli_fvc_ppred_rn < lower)
high_fvc <- which(encounter$gli_fvc_ppred_rn > upper)
encounter$gli_fvc_ppred_rn[low_fvc] <- NA
encounter$gli_fvc_ppred_rn[high_fvc] <- NA
# Get some summary statistics by participant
t1_participant <- encounter %>%
  group_by(eDWID) %>%
  summarise(
    `Years With Data` = length(unique(reviewyear)),
    `Number of Encounters` = n(),
    `Number of Encounters Pre-ETI` = sum(Days <= 0),
    `Number of Encounters Post-ETI` = sum(Days > 0),
    Age = last(na.omit(encounterage[Days <= 0])),
    across(all_of(continuous_outcomes), \(x) last(na.omit(x[Days <= 0]))),
    Gender = names(sort(table(Gender), decreasing = TRUE))[1],
    Race = names(sort(table(Race), decreasing = TRUE))[1],
    Insurance = names(sort(table(Insurance), decreasing = TRUE))[1],
    .groups = "drop"
  )
no_post <- t1_participant$eDWID[t1_participant$`Number of Encounters Post-ETI` == 0]
no_post_visits <- which(encounter$eDWID %in% no_post)
encounter <- encounter[-no_post_visits, ]
n_enc_6 <- nrow(encounter)
n_people_6 <- length(unique(encounter$eDWID))
t1_participant <- t1_participant %>% filter(!eDWID %in% no_post)
# Flowchart
# Make labels
tots1 <- paste0(
  format(n_people_1, big.mark = ","), " People\n",
  format(n_enc_1, big.mark = ","), " Encounters"
)
no_date <- paste0(
  "No ETI Date:\n", format(n_people_no_eti_date, big.mark = ","), " People\n",
  format(length(no_eti_date), big.mark = ","), " Encounters"
)
tots2 <- paste0(
  format(n_people_2, big.mark = ","), " People\n",
  format(n_enc_2, , big.mark = ","), " Encounters"
)
hosps <- paste0(
  "Care Episodes:\n", format(n_people_hosp, big.mark = ","), " People\n",
  format(length(hosp), big.mark = ","), " Encounters"
)
tots3 <- paste0(
  format(n_people_3, big.mark = ","), " People\n",
  format(n_enc_3, big.mark = ","), " Encounters"
)
pregs <- paste0(
  "Pregnancies:\n", format(n_people_preg, big.mark = ","), " People\n",
  format(length(preg), big.mark = ","), " Encounters"
)
tots4 <- paste0(
  format(n_people_4, big.mark = ","), " People\n",
  format(n_enc_4, big.mark = ","), " Encounters"
)
earlies <- paste0(
  "Visits > ", format(365.25 * 3, big.mark = ","), " Days BEFORE ETI:\n",
  format(n_people_early, big.mark = ","), " People\n",
  format(length(early), big.mark = ","), " Encounters"
)
lates <- paste0(
  "Visits > ", format(365.25 * 2, big.mark = ","), " Days AFTER ETI:\n",
  format(n_people_late, big.mark = ","), " People\n",
  format(length(late), big.mark = ","), " Encounters"
)
tots5 <- paste0(
  format(n_people_5, big.mark = ","), " People\n",
  format(n_enc_5, big.mark = ","), " Encounters"
)
no_posts <- paste0(
  "No Post-ETI Visits:\n", format(length(no_post), big.mark = ","), " People\n",
  format(length(no_post_visits), big.mark = ","), " Encounters (Pre-ETI)"
)
tots6 <- paste0(
  format(n_people_6, big.mark = ","), " People\n",
  format(n_enc_6, big.mark = ","), " Encounters"
)
fev1s <- paste0(
  format(length(low_fev1), big.mark = ","), " FEV1 < ",
  format(lower, big.mark = ","), "\n",
  format(length(high_fev1), big.mark = ","), " FEV1 > ",
  format(upper, big.mark = ",")
)
fvcs <- paste0(
  format(length(low_fvc), big.mark = ","), " FVC < ",
  format(lower, big.mark = ","), "\n",
  format(length(high_fvc), big.mark = ","), " FVC > ",
  format(upper, big.mark = ",")
)
# Assemble the chart!
flow_chart <- tibble(
  from = c(
    tots1, tots1, tots2, tots2, tots3, tots3, tots4, tots4, tots4, tots5,
    tots5, tots6, tots6
  ),
  to = c(
    tots2, no_date, tots3, hosps, tots4, pregs, tots5, earlies, lates, tots6,
    no_posts, fev1s, fvcs
  )
)
# Save
save(encounter, t1_participant, flow_chart, continuous_outcomes,
  file = "./Kamyron Jordan/Racial and Ethnic Differences in ETI/Data_Cleaned/outcomes_dataset.RData"
)
