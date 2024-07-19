#-------------------------------------------------------------------------------
# Setup
#-------------------------------------------------------------------------------
# Libraries
library(tidyverse)
library(readxl)
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
# Remove exact duplicates
insulin <- insulin %>% distinct()
# For duplicates with different insulin values, take the first (per Katie)
insulin <- insulin %>%
  group_by(study_id, Date, Timepoint) %>%
  summarise(Insulin = first(na.omit(Insulin)))

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
    study_id, date_visit, age_visit, height, weight, sex, origin_race, ethnicity
  ) %>%
  filter(!is.na(date_visit)) %>%
  rename(Date = date_visit) %>%
  filter(!if_all(age_visit:ethnicity, is.na))
demo$Date <- ymd(demo$Date)

#-------------------------------------------------------------------------------
# Combine everything
#-------------------------------------------------------------------------------

# Merge
final_df <- full_join(glucose, insulin)
final_df <- full_join(final_df, catecholamines)
final_df <- full_join(final_df, demo)

# Format
final_df <- final_df %>%
  select(
    study_id, Date, age_visit, height, weight, sex, origin_race, ethnicity,
    Timepoint, Glucose, Insulin, Norepinephrine, Epinephrine
  ) %>%
  arrange(study_id, Date, Timepoint)

# Write
write.csv(final_df,
  file = "./Christine Chan/EnVision CF/Data_Clean/analysis_dataset.csv",
  row.names = F, na = ""
)
