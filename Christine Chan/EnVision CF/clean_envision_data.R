# Libraries
library(tidyverse)
library(readxl)
# Home directory
home_dir <- switch(Sys.info()["sysname"],
  "Darwin" = "/Users/timvigers/Dropbox/Work/Vigers/CF/Christine Chan/EnVision CF",
  "Windows" = "C:/Users/timvigers/Dropbox/Work/Vigers/CF/Christine Chan/EnVision CF"
)
setwd(home_dir)
# Variables to use across all spreadsheets
vars <- c("Insulin", "C-Peptide", "Glucagon", "GLP-1 Active", "GIP", "PP", "Active-Ghrelin")
# Import 4/13/21 hormone data
hormones_2021_04_13 <- read_excel("Data_Raw/4-13-21-data-1_awn.xlsx")
# Remove empty lines
hormones_2021_04_13 <- hormones_2021_04_13[-which(rowSums(is.na(hormones_2021_04_13)) == ncol(hormones_2021_04_13)), ]
# Column names
colnames(hormones_2021_04_13) <- hormones_2021_04_13[2, ]
colnames(hormones_2021_04_13)[ncol(hormones_2021_04_13)] <- "Notes"
# Remove rows that match column names
hormones_2021_04_13 <- hormones_2021_04_13[-which(hormones_2021_04_13$Well == "Well"), ]
# Split by ID
ids <- hormones_2021_04_13$`Active-Ghrelin`[which(hormones_2021_04_13$`C-Peptide` == "Patient ID")]
hormones_2021_04_13$ID <- rep(ids, each = 9)
hormones <- split.data.frame(hormones_2021_04_13, hormones_2021_04_13$ID)
# Format each
hormones <- lapply(hormones, function(d) {
  d <- d[-1, ]
  d <- d %>% select(ID, Timepoint, all_of(vars), Notes)
})
hormones <- do.call(rbind, hormones)
# Import all hormones 5/20/20
all_hormones <- read_excel("Data_Raw/5_20_2020_all_hormones_2.xlsx")
all_hormones[1, ][which(all_hormones[1, ] == "90glucagon`120glucagon")] <- "90glucagon"
# Column names
n <- paste(
  gsub("[[:digit:]]", "", all_hormones[1, ]),
  str_extract(all_hormones[1, ], "[[:digit:]]{1,3}")
)
n <- make.names(gsub(" NA", "", n), unique = T)
all_hormones <- data.frame(all_hormones[-c(1, 2), ])
colnames(all_hormones) <- n
# Pivot to slightly long and rename
all_hormones <- all_hormones %>%
  select(-study_id.1, -study_id.2, -study_id.3) %>%
  pivot_longer(insulin.0:glptotal.180,
    names_to = c("hormone", "Timepoint"),
    names_pattern = "(.*)\\.(.*)"
  ) %>%
  pivot_wider(names_from = hormone, values_from = value) %>%
  rename(
    ID = study_id, Insulin = insulin, "C-Peptide" = cpeptide,
    Glucagon = glucagon, PP = pp, GIP = gip, Ghrelin = ghrelin,
    "GLP-1 Total" = glptotal
  )
# Import OGTT YSI sheets
ogtt_ysi_ia <- read_excel("Data_Raw/EnVision OGTT Results YSI.xlsx",
  sheet = "Iowa"
)
ogtt_ysi_co <- read_excel("Data_Raw/EnVision OGTT Results YSI.xlsx",
  sheet = "Colorado"
)
ogtt_ysi_mn <- read_excel("Data_Raw/EnVision OGTT Results YSI.xlsx",
  sheet = "Minnesota"
)
ogtt_ysi_wu <- read_excel("Data_Raw/EnVision OGTT Results YSI.xlsx",
  sheet = "Wash U"
)
ogtt_ysi_yaling <- read_excel("Data_Raw/EnVision OGTT Results YSI.xlsx",
  sheet = "Yaling results", skip = 1
)
# Format and combine
ogtt_ysi_ia <- ogtt_ysi_ia %>% select(Timepoints:`180`)
ogtt_ysi_ia = ogtt_ysi_ia[-1,]
colnames(ogtt_ysi_ia) = c("Subject ID",paste(c(0,10,30,60,90,120,150,180),"min"))
ogtt_ysi_co = ogtt_ysi_co %>% select(`Subject ID`:`180 min`)
ogtt_ysi_mn = ogtt_ysi_mn %>% select(`Subject ID`:`180 min`)
ogtt_ysi_wu = ogtt_ysi_wu %>% select(`Subject ID`:`180 min`)

ogtt_ysi_yaling = data.frame(t(ogtt_ysi_yaling) )
ogtt_ysi_yaling$X = rownames(ogtt_ysi_yaling)
colnames(ogtt_ysi_yaling) = paste(ogtt_ysi_yaling[1,],"min")
colnames(ogtt_ysi_yaling)[ncol(ogtt_ysi_yaling)] = "Subject ID"
ogtt_ysi_yaling = ogtt_ysi_yaling[-1,]
ogtt_ysi_yaling = ogtt_ysi_yaling%>%select(`Subject ID`,everything()) 
# Bind
