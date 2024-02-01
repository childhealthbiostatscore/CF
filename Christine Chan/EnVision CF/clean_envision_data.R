#-------------------------------------------------------------------------------
# Katie sent quite a few different files, which appear to have some overlap. So,
# I manually sorted the files into folders in Data_Clean prior to writing this
# R script.
#-------------------------------------------------------------------------------

#-------------------------------------------------------------------------------
# Setup
#-------------------------------------------------------------------------------
# Libraries
library(tidyverse)
library(readxl)
# Home directory
switch(Sys.info()[["sysname"]],
  Windows = {
    home_dir <- "C:/Users/timvigers/OneDrive-TheUniversityofColoradoDenver/Vigers/CF/Christine Chan/EnVision CF/Data_Clean"
  },
  Darwin = {
    home_dir <- "/Users/timvigers/Library/CloudStorage/OneDrive-TheUniversityofColoradoDenver/Vigers/CF/Christine Chan/EnVision CF/Data_Clean"
  }
)
setwd(home_dir)
# Variables to use across all spreadsheets
vars <- c("Insulin", "C-Peptide", "Glucagon", "GLP-1 Active", "GIP", "PP", "Active-Ghrelin")
#-------------------------------------------------------------------------------
# Hormones
#-------------------------------------------------------------------------------
# Cleaning function
clean_hOGTTs <- function(data) {
  # Remove empty rows
  data <- data[-which(rowSums(is.na(data)) == ncol(data)), ]
  # Split by ID
  ids <- which(data[, 3] == "Patient ID")
  data$ID <- NA
  data$ID[ids] <- ids
  data <- data %>% fill(ID, .direction = "down")
  data <- data.frame(data)
  s <- split.data.frame(data, data$ID)
  # Format each
  l <- lapply(s, function(d) {
    # Get column names, ID, etc.
    id <- d[1, 4]
    colnames(d) <- d[which(d[, 1] == "Well"), ]
    colnames(d)[2] <- "Timepoint"
    # Some of the files have "MN 0041" instead of Active-Ghrelin in names
    if ("MN 0041" %in% colnames(d)) {
      colnames(d)[which(colnames(d) == "MN 0041")] <- "Active-Ghrelin"
    }
    # More trimming
    d <- d[-which(d[, 1] == "Well"), ]
    d <- d[!is.na(d[, 2]), ]
    d$ID <- id
    # To dataframe
    d <- data.frame(d)
    # Select columns
    d <- d %>% select(
      ID, Timepoint, Insulin, C.Peptide, Glucagon, GLP.1.Active, GIP, PP,
      Active.Ghrelin
    )
    return(d)
  })
  l <- do.call(rbind, l)
  return(l)
}
# Apply to all files
files <- list.files("hOGTTs", full.names = T)
hormones <- lapply(files, function(f) {
  df <- read_excel(f, col_names = F)
  df <- clean_hOGTTs(df)
  return(df)
})
hormones <- do.call(rbind, hormones)
# Remove duplicate rows
hormones <- hormones %>% distinct()
#-------------------------------------------------------------------------------
# OGTTs
#-------------------------------------------------------------------------------
# Import OGTT YSI sheets
ogtt_ysi_ia <- read_excel("EnVision OGTT Results YSI.xlsx",
  sheet = "Iowa"
)
ogtt_ysi_co <- read_excel("EnVision OGTT Results YSI.xlsx",
  sheet = "Colorado"
)
ogtt_ysi_mn <- read_excel("EnVision OGTT Results YSI.xlsx",
  sheet = "Minnesota"
)
ogtt_ysi_wu <- read_excel("EnVision OGTT Results YSI.xlsx",
  sheet = "Wash U"
)
ogtt_ysi_yaling <- read_excel("EnVision OGTT Results YSI.xlsx",
  sheet = "Yaling results", skip = 1
)
# Format and combine
ogtt_ysi_ia <- ogtt_ysi_ia %>% select(Timepoints:`180`)
ogtt_ysi_ia <- ogtt_ysi_ia[-1, ]
colnames(ogtt_ysi_ia) <- c(
  "Subject ID",
  paste(c(0, 10, 30, 60, 90, 120, 150, 180), "min")
)
ogtt_ysi_co <- ogtt_ysi_co %>% select(`Subject ID`:`180 min`)
ogtt_ysi_mn <- ogtt_ysi_mn %>% select(`Subject ID`:`180 min`)
ogtt_ysi_wu <- ogtt_ysi_wu %>% select(`Subject ID`:`180 min`)
ogtt_ysi_yaling <- data.frame(t(ogtt_ysi_yaling))
ogtt_ysi_yaling$X <- rownames(ogtt_ysi_yaling)
colnames(ogtt_ysi_yaling) <- paste(ogtt_ysi_yaling[1, ], "min")
colnames(ogtt_ysi_yaling)[ncol(ogtt_ysi_yaling)] <- "Subject ID"
ogtt_ysi_yaling <- ogtt_ysi_yaling[-1, ]
ogtt_ysi_yaling <- ogtt_ysi_yaling %>% select(`Subject ID`, everything())
# To long
ogtt_ysi_co <- ogtt_ysi_co %>%
  pivot_longer(`0 min`:`180 min`,
    names_pattern = "(.*) min",
    names_to = "Timepoint", values_transform = as.character
  ) %>%
  rename("YSI Glucose" = value)
ogtt_ysi_ia <- ogtt_ysi_ia %>%
  pivot_longer(`0 min`:`180 min`,
    names_pattern = "(.*) min",
    names_to = "Timepoint", values_transform = as.character
  ) %>%
  rename("YSI Glucose" = value)
ogtt_ysi_mn <- ogtt_ysi_mn %>%
  pivot_longer(`0 min`:`180 min`,
    names_pattern = "(.*) min",
    names_to = "Timepoint", values_transform = as.character
  ) %>%
  rename("YSI Glucose" = value)
ogtt_ysi_wu <- ogtt_ysi_wu %>%
  pivot_longer(`0 min`:`180 min`,
    names_pattern = "(.*) min",
    names_to = "Timepoint", values_transform = as.character
  ) %>%
  rename("YSI Glucose" = value)
ogtt_ysi_yaling <- ogtt_ysi_yaling %>%
  pivot_longer(`0 min`:`180 min`,
    names_pattern = "(.*) min",
    names_to = "Timepoint", values_transform = as.character
  ) %>%
  rename("YSI Glucose (Yaling)" = value)
# Bind together
ysi <- ogtt_ysi_co %>%
  full_join(., ogtt_ysi_ia) %>%
  full_join(., ogtt_ysi_mn) %>%
  full_join(., ogtt_ysi_wu) %>%
  full_join(., ogtt_ysi_yaling)
#-------------------------------------------------------------------------------
# Catecholamines
#-------------------------------------------------------------------------------
# Function for these because lots of different files
clean_catechol <- function(data) {
  # Subset columns and rename
  d <- data[, c(1, 5, 12)]
  d <- data.frame(d)
  colnames(d) <- c("Timepoint", "NE", "EPI")
  # Find beginning of actual data
  start <- grep("120", d$Timepoint)[1] - 1
  d <- d[start:nrow(d), ]
  d <- d[-which(rowSums(is.na(d)) == ncol(d)), ]
  # Split by ID
  ids <- which(!d$Timepoint %in% c(120, 150, 180))
  d$split <- NA
  d$split[ids] <- ids
  d <- d %>% fill(split, .direction = "down")
  s <- split.data.frame(d, d$split)
  s <- lapply(s, function(dd) {
    id <- substr(dd[1, 1], 1, 6)
    dd$ID <- id
    dd[1, 1] <- 0
    dd <- dd %>% select(ID, Timepoint, EPI, NE)
    return(dd)
  })
  s <- do.call(rbind, s)
  return(s)
}
files <- list.files("Catecholamines", full.names = T)
files <- c(
  files,
  "Catecholamines/Results_VUMCHA_ASC-JC-4071_Catecholamine_J.Coffey_U.of_Iowa_11-19-20.xls",
  "Catecholamines/VUMCHA_ASC-HH-5765_Catecholamine_H.Hemann_U.of_Iowa_3-14-23.xls"
)
catecholamines <- lapply(files, function(f) {
  df <- read_excel(f)
  df <- clean_catechol(df)
  return(df)
})
catecholamines <- do.call(rbind, catecholamines)
# Write results
write.csv(hormones,
  file = "hormones_analysis_dataset.csv",
  row.names = F, na = ""
)
write.csv(ysi,
  file = "ogtt_ysi_analysis_dataset.csv",
  row.names = F, na = ""
)
write.csv(catecholamines,
  file = "catecholamines_analysis_dataset.csv",
  row.names = F, na = ""
)
#-------------------------------------------------------------------------------
# Data checking
#-------------------------------------------------------------------------------
# For Katie, pull:
# - Which subjects have no glucose values in their OGTT (they would have POC glucose, insulin, c-peptide, etc but no glucose value; these would only be 2023 visits)
# - Which subjects have c-peptide for time points 0-120, but no 150 and 180
# - Which subjects do not have insulin run at Colorado, but do have insulin run at iowa
missing_c_pep = hormones %>%
  filter(!Timepoint %in% c("Control 1","Control 2","no sample")) %>%
  mutate(Timepoint = factor(Timepoint,levels = paste(c(0, 10, 30, 60, 90, 120, 150, 180),"min"))) %>%
  group_by(ID) %>%
  count(Timepoint) %>%
  reframe(missing_150 = n[Timepoint=="0 min"] != n[Timepoint=="150 min"],
          missing_180 = n[Timepoint=="0 min"] != n[Timepoint=="180 min"]) %>%
  filter(missing_150 | missing_180)
write.csv(missing_c_pep,file = "missing_c_pep.csv",row.names = F,na = "")

