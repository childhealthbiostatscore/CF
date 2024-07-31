#-------------------------------------------------------------------------------
# Setup
#-------------------------------------------------------------------------------
# Libraries
library(tidyverse)
library(readxl)
library(childsds)
# Home directory
home_dir <- switch(Sys.info()["sysname"],
  "Darwin" = "/Users/timvigers/Library/CloudStorage/OneDrive-TheUniversityofColoradoDenver/Vigers/CF",
  "Windows" = "C:/Users/Tim/OneDrive - The University of Colorado Denver/Vigers/CF",
  "Linux" = "/home/timvigers/OneDrive/Vigers/CF"
)
setwd(home_dir)
#-------------------------------------------------------------------------------
# Insulin
#-------------------------------------------------------------------------------
# Import all files and combine
files <- list.files("./Christine Chan/EnVision CF/Data_Raw/EnVision insulin re-runs",
  full.names = T
)
dfs <- lapply(files, read.csv, na.strings = c("", -999.99))
insulin <- do.call(rbind, dfs)
# Only necessary columns
insulin <- insulin %>%
  select(LastName, TestName, Result.Numeric, Collection.Date) %>%
  rename(
    study_id = LastName, Timepoint = TestName, Insulin = Result.Numeric,
    Date = Collection.Date
  )
# Add re-runs
new_insulin <- read.csv("./Christine Chan/EnVision CF/Data_Raw/20240718 190422 IOWA results.csv")
new_insulin <- new_insulin %>%
  select(Patient.Name, Collection.Date, Test, Reported.As) %>%
  rename(
    study_id = Patient.Name, Date = Collection.Date, Timepoint = Test,
    Insulin = Reported.As
  )
insulin <- rbind(insulin, new_insulin)
# Format times/dates
insulin$Date <- lubridate::mdy(insulin$Date)
insulin$Timepoint <- sub("Insulin ", "", insulin$Timepoint)
insulin$Timepoint <- sub("Insulin-endo ", "", insulin$Timepoint)
insulin$Timepoint <- sub(" min", "", insulin$Timepoint)
insulin$Timepoint <- as.numeric(insulin$Timepoint)
#-------------------------------------------------------------------------------
# Catecholamines (Excel files needed some manual cleaning prior to this)
#-------------------------------------------------------------------------------
files <- list.files("./Christine Chan/EnVision CF/Data_Clean/Catecholamines",
  full.names = T
)
dfs <- lapply(files, read.csv)
catecholamines <- do.call(rbind, dfs)
catecholamines$Date <- mdy(catecholamines$Date)
colnames(catecholamines) <- c(
  "study_id", "Date", "Timepoint", "Norepinephrine", "Epinephrine"
)
#-------------------------------------------------------------------------------
# Glucose
#-------------------------------------------------------------------------------
redcap <- read.csv("./Christine Chan/EnVision CF/Data_Raw/EnvisionCF_DATA_2024-07-19_1236.csv",
  na.strings = ""
)
timepoints <- c(0, 10, 30, 60, 90, 120, 150, 180)
glucose <- redcap %>%
  select(
    study_id, date_visit,
    all_of(paste("timepoint", timepoints, "min", sep = "_"))
  ) %>%
  filter(!is.na(date_visit)) %>%
  pivot_longer(all_of(paste("timepoint", timepoints, "min", sep = "_")),
    names_to = "Timepoint", values_to = "Glucose"
  ) %>%
  rename(Date = date_visit) %>%
  filter(!is.na(Glucose))
glucose$Timepoint <- sub("timepoint_", "", glucose$Timepoint)
glucose$Timepoint <- sub("_min", "", glucose$Timepoint)
glucose$Timepoint <- as.numeric(glucose$Timepoint)
glucose$Date <- ymd(glucose$Date)
#-------------------------------------------------------------------------------
# Demographics
#-------------------------------------------------------------------------------
demo <- redcap %>%
  select(
    study_id, date_visit, age_visit, height, weight, sex, origin_race,
    ethnicity, redcap_data_access_group, cftr_mutation_1, cftr_mutation_2
  ) %>%
  filter(!is.na(date_visit)) %>%
  rename(Date = date_visit) %>%
  filter(!if_all(age_visit:ethnicity, is.na))
demo$Date <- ymd(demo$Date)
#-------------------------------------------------------------------------------
# Date fixes per Holly's 7/19 emails
#-------------------------------------------------------------------------------
insulin$Date[insulin$study_id == "CC0014" &
  insulin$Date == "2022-11-16"] <- "2022-11-21"
insulin$Date[insulin$study_id == "CC0026" &
  insulin$Date == "2021-05-26"] <- "2022-05-26"
insulin$Date[insulin$study_id == "CC0035" &
  insulin$Date == "2020-08-01"] <- "2020-08-10"
insulin$Date[insulin$study_id == "CC0041" &
  insulin$Date == "2021-09-30"] <- "2020-09-30"
insulin$Date[insulin$study_id == "CC0065" &
  insulin$Date == "2021-09-07"] <- "2021-09-08"
insulin$Date[insulin$study_id == "IA0002" &
  insulin$Date == "2021-10-28"] <- "2019-10-28"
insulin$Date[insulin$study_id == "IA0013" &
  insulin$Date == "2019-11-17"] <- "2019-11-07"
insulin$Date[insulin$study_id == "IA0034" &
  insulin$Date == "2019-10-30"] <- "2019-10-29"
insulin$Date[insulin$study_id == "IA0040" &
  insulin$Date == "2021-08-03"] <- "2020-08-03"
insulin$Date[insulin$study_id == "IA0068" &
  insulin$Date == "2020-08-10"] <- "2020-06-17"
insulin$Date[insulin$study_id == "MN0004" &
  insulin$Date == "2021-04-14"] <- "2021-04-21"
insulin$Date[insulin$study_id == "MN0004" &
  insulin$Date == "2021-04-14"] <- "2021-04-21"
insulin$Date[insulin$study_id == "MN0019" &
  insulin$Date == "2021-01-04"] <- "2021-01-06"
insulin$Date[insulin$study_id == "MN0020" &
  insulin$Date == "2021-06-19"] <- "2021-06-17"
insulin$Date[insulin$study_id == "MN0023" &
  insulin$Date == "2016-12-15"] <- "2019-12-05"
insulin$Date[insulin$study_id == "MN0046" &
  insulin$Date == "2020-04-02"] <- "2020-09-02"
insulin$Date[insulin$study_id == "MN0056" &
  insulin$Date == "2021-05-27"] <- "2021-05-26"
insulin$Date[insulin$study_id == "MN0078" &
  insulin$Date == "2021-09-16"] <- "2021-09-15"
insulin$Date[insulin$study_id == "WU0003" &
  insulin$Date == "2020-11-16"] <- "2020-11-19"
insulin$Date[insulin$study_id == "WU0004" &
  insulin$Date == "2019-08-29"] <- "2019-08-30"
insulin$Date[insulin$study_id == "WU0013" &
  insulin$Date == "2019-11-15"] <- "2019-11-05"
insulin$Date[insulin$study_id == "IA0103" &
  insulin$Date == "2021-07-26"] <- "2021-08-02"
insulin$study_id[insulin$study_id == "EVUI00001"] <- "IA0001"
insulin$study_id[insulin$study_id == "IA0119"] <- "ia0119"
insulin <-
  insulin[-which(insulin$study_id == "IA0075" & insulin$Date == "2020-02-18"), ]
insulin <-
  insulin[-which(insulin$study_id == "MN0010" & insulin$Date == "2020-01-14"), ]
catecholamines$Date[catecholamines$study_id == "IA0091" &
  catecholamines$Date == "2020-02-16"] <- "2020-12-16"
catecholamines$Date[catecholamines$study_id == "IA0096" &
  catecholamines$Date == "2021-01-09"] <- "2021-01-08"
catecholamines$Date[catecholamines$study_id == "IA0110" &
  catecholamines$Date == "2021-07-06"] <- "2021-07-08"
# Manually add insulin for IA005 6/22/20
ia005 <- data.frame(
  "study_id" = rep("IA0005", 8), "Date" = rep(ymd("2020-06-22"), 8),
  "Timepoint" = c(0, 10, 30, 60, 90, 120, 150, 180),
  "Insulin" = as.character(c(6, NA, 40, 49, 31, 26, 7, 6))
)
insulin <- rbind(insulin, ia005)
# Remove exact duplicates
insulin <- insulin %>% distinct()
# For duplicates with different insulin values, take the first (per Katie)
insulin <- insulin %>%
  group_by(study_id, Date, Timepoint) %>%
  summarise(Insulin = first(na.omit(Insulin)))
#-------------------------------------------------------------------------------
# Combine everything
#-------------------------------------------------------------------------------
# Merge
final_df <- full_join(glucose, insulin)
final_df <- full_join(final_df, catecholamines)
final_df <- full_join(final_df, demo)
#-------------------------------------------------------------------------------
# Calculated fields
#-------------------------------------------------------------------------------
# BMI
final_df$bmi <- final_df$weight / ((final_df$height^2) / 10000)
final_df$bmi_perc <- sds(
  value = final_df$bmi,
  age = ifelse(final_df$age_visit<20,final_df$age_visit,20),
  sex = final_df$sex, male = 1, female = 2,
  ref = cdc.ref, item = "bmi", type = "perc"
) * 100
# Check for hypoglycemia
final_df <- final_df %>%
  group_by(study_id, Date) %>%
  mutate(Hypo70 = any(Glucose < 70), Hypo60 = any(Glucose < 60))
# Format
final_df <- final_df %>%
  select(
    study_id, redcap_data_access_group, Date, age_visit, height, weight, bmi,
    bmi_perc, sex, origin_race, ethnicity, cftr_mutation_1, cftr_mutation_2,
    Timepoint, Glucose, Insulin, Norepinephrine, Epinephrine, Hypo60, Hypo70
  ) %>%
  filter(!is.na(Timepoint), !is.na(Date)) %>%
  arrange(study_id, Date, Timepoint)
final_df$redcap_data_access_group[final_df$study_id == "IA0005" |
  final_df$study_id == "ia0119"] <- "iowa"
# Write
write.csv(final_df,
  file = "./Christine Chan/EnVision CF/Data_Clean/analysis_dataset.csv",
  row.names = F, na = ""
)
