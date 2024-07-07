library(tidyverse)
library(lubridate)
library(parallel)
# Paths
home_dir <- switch(Sys.info()["sysname"],
  "Darwin" = "/Users/timvigers/Library/CloudStorage/OneDrive-TheUniversityofColoradoDenver/Vigers/CF",
  "Windows" = "C:/Users/Tim/OneDrive - The University of Colorado Denver/Vigers/CF",
  "Linux" = "/home/timvigers/OneDrive/Vigers/CF"
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
    "Asian", "Other", "Other", "Other"
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
encounter$Days <- as.numeric(encounter$encounterdate - encounter$Modulator_trikafta_first_date)
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
# Remove impossible lung function values
encounter$gli_fev1_ppred_rn[encounter$gli_fev1_ppred_rn < 20 |
  encounter$gli_fev1_ppred_rn > 150] <- NA
encounter$gli_fvc_ppred_rn[encounter$gli_fvc_ppred_rn < 20 |
  encounter$gli_fvc_ppred_rn > 150] <- NA
encounter$gli_fev1fvc_ppred_rn[encounter$gli_fev1fvc_ppred_rn < 20 |
  encounter$gli_fev1fvc_ppred_rn > 150] <- NA
# Filter
encounter <- encounter %>%
  filter(
    !is.na(Days),
    Days >= -365.25 * 3 & Days <= 365.25 * 2,
    hospitalized == "No",
    pregnant != 1
  )
# List of outcomes
continuous_outcomes <- c(
  "gli_fev1_ppred_rn", "gli_fvc_ppred_rn", "gli_fev1fvc_ppred_rn",
  "bmipercentile", "heightpercentile", "weightpercentile"
)
binary_outcomes <- c(
  "staphylococcus_aureus", "haemophilus_influenzae", "pseudomonasaeruginosa",
  "burkho_complex"
)
# Save
save(encounter, continuous_outcomes, binary_outcomes,
  file = "./Kamyron Jordan/Racial and Ethnic Differences in ETI/Data_Cleaned/outcomes_dataset.RData"
)
