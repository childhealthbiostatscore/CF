# Libraries
library(tidyverse)
library(readxl)
# Home directory
home_dir <- switch(Sys.info()["sysname"],
                   "Darwin" = "/Users/timvigers/Dropbox/Work/Vigers/CF/Christine Chan/EnVision CF",
                   "Windows" = "C:/Users/timvigers/Dropbox/Work/Vigers/CF/Christine Chan/EnVision CF"
)
setwd(home_dir)
# Import OGTT data
ogtt_2021_04_13 = read_excel("Data_Raw/4-13-21-data-1_awn.xlsx")
# Remove 