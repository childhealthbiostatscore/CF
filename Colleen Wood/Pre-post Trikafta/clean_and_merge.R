library(tidyverse)
library(lubridate)
library(childsds)
library(rspiro)
source("/home/timvigers/GitHub/CF/genotype_class_severity.R")
t1_variables <- c(
  "CFF ID", "Site", "Sex", "Race", "Genotypes1", "Genotypes2", "Pancreatic Status",
  "G-tube in past 12 months", "Time", "Age",
  "BMI Percentile", "Height", "Weight", "FEV1", "FVC", "HbA1c"
)
# CHCO
chco_a1c <- read_csv("/home/timvigers/OneDrive/Vigers/CF/Colleen Wood/Prepost Trikafta/Data_Cleaned/chco_glycemic.csv", show_col_types = F)
chco_a1c$Date <- parse_date_time(chco_a1c$Date, orders = "mdy")
chco_bmi <- read_csv("/home/timvigers/OneDrive/Vigers/CF/Colleen Wood/Prepost Trikafta/Data_Cleaned/chco_bmi_pft.csv", show_col_types = F)
chco_bmi$Date <- parse_date_time(chco_bmi$Date, orders = "mdy")
chco <- full_join(chco_a1c, chco_bmi)
# Fill CFF ID by MRN
chco <- chco %>%
  group_by(MRN) %>%
  fill(`CFF ID`, .direction = "downup") %>%
  ungroup() %>%
  filter(!is.na(`CFF ID`)) %>%
  select(-MRN)
# Add demographics, filter
chco_reg <- read_csv("/home/timvigers/OneDrive/Vigers/CF/Colleen Wood/Prepost Trikafta/Data_Cleaned/chco_registry.csv", show_col_types = F)
chco_reg$Start <- parse_date_time(chco_reg$Start, orders = "mdy")
chco_reg$DOB <- parse_date_time(chco_reg$DOB, orders = "mdy")
keep <- chco_reg %>%
  filter(!is.na(`CFRD Diagnosis Date`)) %>%
  pull(`CFF ID`)
exclude <- read_csv("/home/timvigers/OneDrive/Vigers/CF/Colleen Wood/Prepost Trikafta/Data_Cleaned/chco_insulin.csv", show_col_types = F)
exclude <- exclude %>%
  filter(!is.na(`Remove (see notes)`)) %>%
  pull(MRN)
exclude <- chco_reg$`CFF ID`[match(exclude, chco_reg$MRN)]
keep <- setdiff(keep, exclude)
chco <- left_join(chco, chco_reg) %>% filter(`CFF ID` %in% keep)
# Add missing variables
chco$Age <- round(as.numeric(difftime(chco$Date, chco$DOB, units = "days")) / 365.25, 1)
chco$Time <- as.numeric(difftime(chco$Date, chco$Start, units = "days"))
chco$Site <- "CHCO"
# BMI calculations
chco$age_for_bmi <- ifelse(chco$Age < 20, chco$Age, 20)
chco$`BMI Percentile` <- round(sds(chco$BMI,
  age = chco$age_for_bmi, item = "bmi", type = "perc",
  sex = chco$Sex, male = "Male", female = "Female",
  ref = cdc.ref
) * 100, 2)
# Montana
mon_bmi <- read_csv("/home/timvigers/OneDrive/Vigers/CF/Colleen Wood/Prepost Trikafta/Data_Cleaned/montana_bmi_pft.csv", show_col_types = F)
mon_bmi$Date <- parse_date_time(mon_bmi$Date, orders = "mdy")
mon_a1c <- read_csv("/home/timvigers/OneDrive/Vigers/CF/Colleen Wood/Prepost Trikafta/Data_Cleaned/montana_glycemic_registry.csv", show_col_types = F)
mon_a1c$Date <- parse_date_time(mon_a1c$Date, orders = "mdy")
mon_a1c$DOB <- parse_date_time(mon_a1c$DOB, orders = "mdy")
mon_a1c$HbA1c <- as.numeric(mon_a1c$HbA1c)
# Get start date and CFRD status
mon_starts <- mon_a1c %>%
  select(`CFF ID`, `CFRD Status`, Start) %>%
  distinct() %>%
  filter(`CFRD Status` == "CFRD with or without fasting hyperglycemia")
mon_starts$Start <- parse_date_time(mon_starts$Start, orders = "mdy")
# Remove unnecessary columns
mon_a1c <- mon_a1c %>% select(`CFF ID`, DOB, Date, HbA1c, `OGTT Fasting`, `OGTT Two Hour`)
# Merge and remove those without CFRD or start date
mon <- full_join(mon_bmi, mon_a1c)
mon <- mon %>% filter(`CFF ID` %in% mon_starts$`CFF ID`)
mon <- left_join(mon, mon_starts %>% select(`CFF ID`, Start))
# Add demographics
mon_demo <- read_csv("/home/timvigers/OneDrive/Vigers/CF/Colleen Wood/Prepost Trikafta/Data_Cleaned/montana_demo.csv", show_col_types = F)
mon_demo <- mon_demo %>% select(`CFF ID`, Race, Sex)
mon <- left_join(mon, mon_demo)
# Add genotypes
mon_geno <- read_csv("/home/timvigers/OneDrive/Vigers/CF/Colleen Wood/Prepost Trikafta/Data_Cleaned/montana_genotypes.csv", show_col_types = F)
mon <- left_join(mon, mon_geno)
# Add pancreatic and g tube status
mon_pan <- read_csv("/home/timvigers/OneDrive/Vigers/CF/Colleen Wood/Prepost Trikafta/Data_Cleaned/montana_pancreatic_insufficient.csv", show_col_types = F)
mon_pan <- mon_pan %>%
  select(-Date) %>%
  distinct()
mon_pan$`Pancreatic Status` <- "Insufficient"
mon_gtube <- read_csv("/home/timvigers/OneDrive/Vigers/CF/Colleen Wood/Prepost Trikafta/Data_Cleaned/montana_gtubes.csv", show_col_types = F)
mon_gtube <- mon_gtube %>%
  select(-Feeding, -Date) %>%
  distinct()
mon_gtube$`G-tube in past 12 months` <- "Yes"
mon <- left_join(mon, mon_pan)
mon <- left_join(mon, mon_gtube)
# Add missing variables
mon <- mon %>%
  group_by(`CFF ID`) %>%
  fill(Start, DOB, .direction = "downup")
mon$Time <- as.numeric(difftime(mon$Date, mon$Start, units = "days"))
mon$Age <- round(as.numeric(difftime(mon$Date, mon$DOB)) / 365.25, 1)
mon$Site <- "Montana"
# Fill in some missing
mon$`Pancreatic Status`[is.na(mon$`Pancreatic Status`)] <- "Sufficient"
# BMI calculations
mon$age_for_bmi <- ifelse(mon$Age < 20, mon$Age, 20)
mon$`BMI Percentile` <- round(sds(mon$BMI,
  age = mon$age_for_bmi, item = "bmi", type = "perc",
  sex = mon$Sex, male = "Male", female = "Female",
  ref = cdc.ref
) * 100, 2)
# UM
um_a1c <- read_csv("/home/timvigers/OneDrive/Vigers/CF/Colleen Wood/Prepost Trikafta/Data_Cleaned/um_a1cs.csv", show_col_types = F)
um_a1c$Age <- round(um_a1c$Age / 365.25, 1)
um_bmi <- read_csv("/home/timvigers/OneDrive/Vigers/CF/Colleen Wood/Prepost Trikafta/Data_Cleaned/um_bmi.csv", show_col_types = F)
um_bmi$Age <- round(um_bmi$Age / 365.25, 1)
um_ogtt <- read_csv("/home/timvigers/OneDrive/Vigers/CF/Colleen Wood/Prepost Trikafta/Data_Cleaned/um_ogtt.csv", show_col_types = F)
um_ogtt$Age <- round(um_ogtt$Age / 365.25, 1)
um_pft <- read_csv("/home/timvigers/OneDrive/Vigers/CF/Colleen Wood/Prepost Trikafta/Data_Cleaned/um_pfts.csv", show_col_types = F)
um_pft$Age <- round(um_pft$Age / 365.25, 1)
um_race <- read_csv("/home/timvigers/OneDrive/Vigers/CF/Colleen Wood/Prepost Trikafta/Data_Cleaned/um_race.csv", show_col_types = F)
um_demo <- read_csv("/home/timvigers/OneDrive/Vigers/CF/Colleen Wood/Prepost Trikafta/Data_Cleaned/um_demo.csv", show_col_types = F)
keep <- um_demo %>%
  filter(`CFRD Status` == "CFRD with or without fasting hyperglycemia") %>%
  pull(`CFF ID`)
um_demo <- um_demo %>%
  select(-`CFRD Status`) %>%
  rename(`G-tube in past 12 months` = `G tube in past 12 months`)
# Join
um <- reduce(list(um_a1c, um_bmi, um_ogtt, um_pft), full_join)
um <- left_join(um, um_race)
um <- left_join(um, um_demo)
um <- um %>%
  filter(`CFF ID` %in% keep, !is.na(Time)) %>%
  rename(Site = "site") %>%
  arrange(`CFF ID`, Time)
# BMI calculations
um$age_for_bmi <- ifelse(um$Age < 20, um$Age, 20)
um$`BMI Percentile` <- round(sds(um$BMI,
  age = um$age_for_bmi, item = "bmi", type = "perc",
  sex = um$Sex, male = "Male", female = "Female",
  ref = cdc.ref
) * 100, 2)
# UW
uw_bmi <- read_csv("/home/timvigers/OneDrive/Vigers/CF/Colleen Wood/Prepost Trikafta/Data_Cleaned/uw_bmi.csv", show_col_types = F)
uw_bmi$Date <- parse_date_time(uw_bmi$Date, orders = "mdy")
uw_glyc <- read_csv("/home/timvigers/OneDrive/Vigers/CF/Colleen Wood/Prepost Trikafta/Data_Cleaned/uw_glycemic.csv", show_col_types = F)
uw_glyc$Date <- parse_date_time(uw_glyc$Date, orders = "mdy")
uw_pft <- read_csv("/home/timvigers/OneDrive/Vigers/CF/Colleen Wood/Prepost Trikafta/Data_Cleaned/uw_pft.csv", show_col_types = F)
uw_pft$Date <- parse_date_time(uw_pft$Date, orders = "mdy")
uw_demo <- read_csv("/home/timvigers/OneDrive/Vigers/CF/Colleen Wood/Prepost Trikafta/Data_Cleaned/uw_demo.csv", show_col_types = F)
uw_demo <- uw_demo %>% select(`CFF ID`, Race, Sex)
# Get CFRD status and start date
uw_start <- read_csv("/home/timvigers/OneDrive/Vigers/CF/Colleen Wood/Prepost Trikafta/Data_Cleaned/uw_mods.csv", show_col_types = F)
uw_start$`Date of Encounter` <- parse_date_time(uw_start$`Date of Encounter`, orders = "mdy")
uw_start <- uw_start %>%
  arrange(`CFF ID`, `Date of Encounter`) %>%
  group_by(`CFF ID`) %>%
  filter(row_number() == 1) %>%
  select(`CFF ID`, `Date of Encounter`) %>%
  rename(Start = `Date of Encounter`)
uw_cfrd <- read_csv("/home/timvigers/OneDrive/Vigers/CF/Colleen Wood/Prepost Trikafta/Data_Cleaned/uw_cfrd.csv", show_col_types = F)
uw_cfrd <- uw_cfrd %>%
  filter(`CFRD Status` == "CFRD with or without fasting hyperglycemia") %>%
  select(`CFF ID`) %>%
  distinct() %>%
  pull(`CFF ID`)
keep <- unique(uw_cfrd, uw_start$`CFF ID`)
# Add genotypes
uw_geno <- read_csv("/home/timvigers/OneDrive/Vigers/CF/Colleen Wood/Prepost Trikafta/Data_Cleaned/uw_genotypes.csv", show_col_types = F)
# Pancreatic status
uw_pan <- read_csv("/home/timvigers/OneDrive/Vigers/CF/Colleen Wood/Prepost Trikafta/Data_Cleaned/uw_pancreatic.csv", show_col_types = F)
uw_pan <- uw_pan %>%
  select(-Date) %>%
  distinct() %>%
  mutate(`Pancreatic Status` = "Insufficient")
# G tubes
uw_gtube <- read_csv("/home/timvigers/OneDrive/Vigers/CF/Colleen Wood/Prepost Trikafta/Data_Cleaned/uw_gtubes.csv", show_col_types = F)
uw_gtube <- uw_gtube %>%
  select(`CFF ID`) %>%
  distinct() %>%
  mutate(`G-tube in past 12 months` = "Yes")
# Merge
uw <- reduce(list(uw_bmi, uw_glyc, uw_pft), full_join)
uw <- left_join(uw, uw_demo)
uw <- left_join(uw, uw_geno)
uw <- left_join(uw, uw_pan)
uw <- left_join(uw, uw_gtube)
uw <- left_join(uw, uw_start) %>% filter(`CFF ID` %in% keep)
# Other variables (no weight for this site)
uw$Time <- as.numeric(difftime(uw$Date, uw$Start, units = "days"))
uw$Site <- "UW"
uw$Weight <- NA
# BMI calculations
uw$age_for_bmi <- ifelse(uw$Age < 20, uw$Age, 20)
uw$`BMI Percentile 2` <- round(sds(uw$BMI,
  age = uw$age_for_bmi, item = "bmi", type = "perc",
  sex = uw$Sex, male = "Male", female = "Female",
  ref = cdc.ref
) * 100, 2)
uw$`BMI Percentile` <- coalesce(uw$`BMI Percentile`, uw$`BMI Percentile 2`)
# Put everything together
chco <- chco %>% select(all_of(t1_variables))
mon <- mon %>% select(all_of(t1_variables))
um <- um %>% select(all_of(t1_variables))
uw <- uw %>% select(all_of(t1_variables))
df <- bind_rows(chco, mon, um, uw) %>% arrange(`CFF ID`, Time)
# Age group
df$`Age Group` <- cut(df$Age,
  breaks = c(-Inf, 20, Inf),
  labels = c("Pedatric", "Adult"), right = F
)
# Race and sex
df$Race <- factor(df$Race,
  levels = c(
    "Black or African American", "Caucasian",
    "Other", "Some other race", "Two or more races", "White"
  ),
  labels = c(
    "Black", "Caucasian",
    "Other", "Other", "Other", "Caucasian"
  )
)
df$Sex <- factor(df$Sex, levels = c("Male", "Female"))
# FEV calculations
age <- df$Age
height <- df$Height / 100
race <- df$Race
old <- c("Caucasian", "Black", "Other")
new <- c(1, 2, 5)
race <- new[match(race, old)]
gender <- as.numeric(df$Sex)
df$ppFEV1 <- pctpred_GLI(age, height, gender = gender, ethnicity = race, FEV1 = df$FEV1)
df$ppFVC <- pctpred_GLI(age, height, gender = gender, ethnicity = race, FVC = df$FVC)
# Genotype severity
df$Genotypes1 <- cf_genotype_class_severity(df$Genotypes1)
df$Genotypes2 <- cf_genotype_class_severity(df$Genotypes2)
df <- df %>% unite(Genotype, Genotypes1, Genotypes2)
df$Genotype <- factor(df$Genotype,
  levels = c(
    "Mild_Severe", "Severe_Mild", "Severe_Severe",
    "Severe_Unknown", "Unknown_Unknown"
  ),
  labels = c("Low", "Low", "High", "Unknown", "Unknown")
)
# Other little cleaning things
df <- df %>% filter(Age > 0, !is.na(Time))
df$`G-tube in past 12 months`[is.na(df$`G-tube in past 12 months`)] <- "No"
# Pre-/post-modulator
df$`Pre or Post` <- factor(sign(df$Time), levels = -1:1, labels = c("Pre", "Pre", "Post"))
# Add insulin information
chco_ins <- read_csv("/home/timvigers/OneDrive/Vigers/CF/Colleen Wood/Prepost Trikafta/Data_Cleaned/chco_insulin.csv", show_col_types = F)
chco_ins$`CFF ID` <- chco_a1c$`CFF ID`[match(chco_ins$MRN, chco_a1c$MRN)]
chco_ins <- chco_ins %>%
  rename(
    TDD = `Total Daily Dose of insulin (units)`,
    `Long acting insulin dose` = `Long acting or total basal daily dose (units)`
  ) %>%
  select(`CFF ID`, `Pre or Post`, TDD, `Long acting insulin dose`) %>%
  filter(!is.na(`CFF ID`))
mon_ins <- read_csv("/home/timvigers/OneDrive/Vigers/CF/Colleen Wood/Prepost Trikafta/Data_Cleaned/montana_insulin.csv", show_col_types = F)
mon_ins <- mon_ins %>%
  rename(
    TDD = `Total Daily Dose of insulin (units)`,
    `Long acting insulin dose` = `Long acting or total basal daily dose (units)`
  ) %>%
  select(`CFF ID`, `Pre or Post`, TDD, `Long acting insulin dose`)
uw_ins <- read_csv("/home/timvigers/OneDrive/Vigers/CF/Colleen Wood/Prepost Trikafta/Data_Cleaned/uw_insulin.csv", show_col_types = F)
uw_ins <- uw_ins %>%
  rename(
    TDD = `Total Daily Dose of insulin (units)`,
    `Long acting insulin dose` = `Long acting or total basal daily dose (units)`
  ) %>%
  select(`CFF ID`, `Pre or Post`, TDD, `Long acting insulin dose`)
insulin <- bind_rows(chco_ins, mon_ins, uw_ins)
# Join
df <- left_join(df, insulin)
df$`Pre or Post` <- factor(df$`Pre or Post`, levels = c("Pre", "Post"))
# Get pre value closest to start, post value closest to 1 year from start
df$select_time <- df$Time
df$select_time[df$`Pre or Post` == "Post"] <- 365 - df$select_time[df$`Pre or Post` == "Post"]
df <- df %>%
  arrange(`CFF ID`, `Pre or Post`, select_time) %>%
  group_by(`CFF ID`, `Pre or Post`) %>%
  summarise(
    `Num. A1c Values` = sum(!is.na(HbA1c)),
    across(everything(), ~ last(na.omit(.x))),
    .groups = "keep"
  ) %>%
  filter(!is.na(HbA1c))
keep <- df %>%
  group_by(`CFF ID`) %>%
  summarise(n = n()) %>%
  filter(n == 2) %>%
  pull(`CFF ID`)
df <- df %>% filter(`CFF ID` %in% keep)
# CGM variables
cgm_vars <- c(
  "mean_sensor", "min_sensor", "max_sensor",
  "percent_time_over_180", "percent_time_70_180",
  "percent_time_over_120",
  "percent_time_over_140", "percent_time_over_200",
  "excursions_over_140", "excursions_over_200",
  "percent_time_under_60", "percent_time_under_70",
  "average_auc_per_day", "standard_deviation", "cv", "r_mage"
)
day_cgm <- c(
  "daytime_avg_sensor_glucose", "daytime_min_sensor_glucose",
  "daytime_max_sensor_glucose", "percent_time_over_180_day",
  "percent_time_70_180_day", "percent_time_over_200_day",
  "percent_time_under_60_day", "percent_time_under_70_day", 
  "percent_time_over_140_day","daytime_sd"
)
night_cgm <- c(
  "nighttime_avg_sens_glucose", "nighttime_min_sens_glucose",
  "nighttime_max_sens_glucose", "percent_time_over_180_night",
  "percent_time_70_180_night", "percent_time_over_200_night",
  "percent_time_under_60_night", "percent_time_under_70_night", 
  "percent_time_over_140_night","nighttime_sd"
)
# Add CGM information
cgmvariables("/home/timvigers/OneDrive/Vigers/CF/Colleen Wood/Prepost Trikafta/Data_Raw/Data From CHCO/clean CGM",
             "/home/timvigers/OneDrive/Vigers/CF/Colleen Wood/Prepost Trikafta/Data_Cleaned",outputname = "chco_cgm")
cgmvariables("/home/timvigers/OneDrive/Vigers/CF/Colleen Wood/Prepost Trikafta/Data_Raw/Data From Montana/CGM_Montana/clean CGM",
             "/home/timvigers/OneDrive/Vigers/CF/Colleen Wood/Prepost Trikafta/Data_Cleaned",outputname = "montana_cgm")
cgmvariables("/home/timvigers/OneDrive/Vigers/CF/Colleen Wood/Prepost Trikafta/Data_Raw/Data From Washington/cgm/clean CGM",
             "/home/timvigers/OneDrive/Vigers/CF/Colleen Wood/Prepost Trikafta/Data_Cleaned",outputname = "uw_cgm")
# CHCO
chco_cgm <- read_csv("/home/timvigers/OneDrive/Vigers/CF/Colleen Wood/Prepost Trikafta/Data_Cleaned/chco_cgm.csv", show_col_types = F)
chco_cgm = chco_cgm[-c(5,8,10,16,21),]
chco_cgm$`Pre or Post` <- factor(sapply(str_split(chco_cgm$subject_id, "_"), "[", 2),
                                 levels = c("post","Post","pre" ,"Pre" ),
                                 labels = c("Post","Post","Pre","Pre"))
chco_cgm$`CFF ID` <- sapply(str_split(chco_cgm$subject_id, "_"), "[", 1)
chco_cgm <- chco_cgm %>% select(`CFF ID`, `Pre or Post`, all_of(c(cgm_vars, day_cgm, night_cgm)))
# Montana
mon_cgm <- read_csv("/home/timvigers/OneDrive/Vigers/CF/Colleen Wood/Prepost Trikafta/Data_Cleaned/montana_cgm.csv", show_col_types = F)
mon_cgm$`Pre or Post` <- factor(sapply(str_split(mon_cgm$subject_id, "_"), "[", 2),
                                levels = c("post","Post","pre" ,"Pre" ),
                                labels = c("Post","Post","Pre","Pre"))
mon_cgm$`CFF ID` <- sapply(str_split(mon_cgm$subject_id, "_"), "[", 1)
mon_cgm <- mon_cgm %>% select(`CFF ID`, `Pre or Post`, all_of(c(cgm_vars, day_cgm, night_cgm)))
# UW
uw_cgm <- read_csv("/home/timvigers/OneDrive/Vigers/CF/Colleen Wood/Prepost Trikafta/Data_Cleaned/uw_cgm.csv", show_col_types = F)
uw_cgm = uw_cgm[-1,]
uw_cgm$`Pre or Post` <- factor(sapply(str_split(uw_cgm$subject_id, "_"), "[", 2),
                               levels = c("post","Post","pre" ,"Pre" ),
                               labels = c("Post","Post","Pre","Pre"))
uw_cgm$`CFF ID` <- sapply(str_split(uw_cgm$subject_id, "_"), "[", 1)
uw_cgm <- uw_cgm %>% select(`CFF ID`, `Pre or Post`, all_of(c(cgm_vars, day_cgm, night_cgm)))
# Put together
cgm <- bind_rows(chco_cgm, mon_cgm, uw_cgm)
# Add to DF
cgm$`CFF ID` <- as.numeric(cgm$`CFF ID`)
df <- left_join(df, cgm)
save(df, cgm_vars, day_cgm, night_cgm, file = "/home/timvigers/OneDrive/Vigers/CF/Colleen Wood/Prepost Trikafta/Data_Cleaned/analysis_dataset.rdata")
