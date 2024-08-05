library(tidyverse)
library(lubridate)
library(parallel)
# Paths
home_dir <- switch(Sys.info()["sysname"],
  "Darwin" = "/Users/timvigers/Library/CloudStorage/OneDrive-TheUniversityofColoradoDenver/Vigers/CF",
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
# Merge
encounter <- left_join(
  encounter,
  demo %>% select(eDWID, Race, Modulator_trikafta_first_date)
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
# Hospitalization or home IVs
hospitalizations$CareEpi_StartDt <- mdy(hospitalizations$CareEpi_StartDt)
hospitalizations$CareEpi_EndDt <- mdy(hospitalizations$CareEpi_EndDt)
cl <- makeForkCluster(detectCores() * (2 / 4))
hosps <- parApply(cl, hospitalizations, 1, function(r) {
  which(encounter$eDWID == r["eDWID"] &
    encounter$encounterdate >= r["CareEpi_StartDt"] &
    encounter$encounterdate <= r["CareEpi_EndDt"])
})
stopCluster(cl)
hosps <- unique(unlist(hosps))
encounter$hospitalized <- "No"
encounter$hospitalized[hosps] <- "Yes"
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
# Lung function cutoffs
lower <- 20
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
# Flowchart
# Make labels
tots1 <- paste0(n_people_1, " People\n", n_enc_1, " Encounters")
no_date <- paste0(
  "No ETI Date:\n", n_people_no_eti_date, " People\n",
  length(no_eti_date), " Encounters"
)
tots2 <- paste0(n_people_2, " People\n", n_enc_2, " Encounters")
hosps <- paste0(
  "Care Episodes:\n", n_people_hosp, " People\n",
  length(hosp), " Encounters"
)
tots3 <- paste0(n_people_3, " People\n", n_enc_3, " Encounters")
pregs <- paste0(
  "Pregnancies:\n", n_people_preg, " People\n",
  length(preg), " Encounters"
)
tots4 <- paste0(n_people_4, " People\n", n_enc_4, " Encounters")
earlies <- paste0(
  "Visits > ", 365.25 * 3, " Days BEFORE ETI:\n", n_people_early, " People\n",
  length(early), " Encounters"
)
lates <- paste0(
  "Visits > ", 365.25 * 2, " Days AFTER ETI:\n", n_people_late, " People\n",
  length(late), " Encounters"
)
tots5 <- paste0(n_people_5, " People\n", n_enc_5, " Encounters")
no_posts <- paste0(
  "No Post-ETI Visits:\n", length(no_post), " People\n",
  length(no_post_visits), " Encounters (Pre-ETI)"
)
tots6 <- paste0(n_people_6, " People\n", n_enc_6, " Encounters")
fev1s <- paste0(
  length(low_fev1), " FEV1 < ", lower, "\n",
  length(high_fev1), " FEV1 > ", upper
)
fvcs <- paste0(
  length(low_fvc), " FVC < ", lower, "\n",
  length(high_fvc), " FVC > ", upper
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
  binary_outcomes,
  file = "./Kamyron Jordan/Racial and Ethnic Differences in ETI/Data_Cleaned/outcomes_dataset.RData"
)
