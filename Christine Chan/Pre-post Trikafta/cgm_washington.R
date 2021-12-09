#CGM

#edit files



library('cgmanalysis')
#
  


cgmvariables(inputdirectory = "S:/PEDS/RI Biostatistics Core/Shared/Shared Projects/Meier/CF/2020.02.09 - Prepost Triakfta/Data From Washington/cgm/clean CGM/", 
             outputdirectory = "S:/PEDS/RI Biostatistics Core/Shared/Shared Projects/Meier/CF/2020.02.09 - Prepost Triakfta/Data From Washington/",
             outputname = "REDCap Upload_Washington")
)





setwd("S:/PEDS/RI Biostatistics Core/Shared/Shared Projects/Meier/CF/2020.02.09 - Prepost Triakfta/Data From Washington/cgm/")


data <- read.csv("148690_ 03_08-2020 CLARITY_Export__2021-04-01_164336.csv")
data$timestamp<- as.POSIXct(data$timestamp, format = "%m/%d/%Y %H:%M")
write.csv(data, "clean CGM/148690_ 03_08-2020 CLARITY_Export__2021-04-01_164336.csv")

data <- read.csv("148690_ 07_23-2020 CLARITY_Export__2021-04-01_164336.csv")
data$timestamp<- as.POSIXct(data$timestamp, format = "%m/%d/%Y %H:%M")
write.csv(data, "clean CGM/148690_ 07_23-2020 CLARITY_Export__2021-04-01_164336.csv")

data <- read.csv("148690_ 11-07-19-2020 CLARITY_Export__2021-04-01_164336.csv")
data$timestamp<- as.POSIXct(data$timestamp, format = "%m/%d/%Y %H:%M")
write.csv(data, "clean CGM/148690_ 11-07-19-2020 CLARITY_Export__2021-04-01_164336.csv")

