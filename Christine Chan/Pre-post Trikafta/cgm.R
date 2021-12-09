#CGM

library('cgmanalysis')
#
  

cleandata(inputdirectory = "S:/PEDS/RI Biostatistics Core/Shared/Shared Projects/Meier/CF/2020.02.09 - Prepost Triakfta/CGM data/")

cgmvariables(inputdirectory = "S:/PEDS/RI Biostatistics Core/Shared/Shared Projects/Meier/CF/2020.02.09 - Prepost Triakfta/clean CGM/", 
             outputdirectory = "S:/PEDS/RI Biostatistics Core/Shared/Shared Projects/Meier/CF/2020.02.09 - Prepost Triakfta/",
             outputname = "REDCap Upload")

setwd("S:/PEDS/RI Biostatistics Core/Shared/Shared Projects/Meier/CF/2020.02.09 - Prepost Triakfta/"
)


setwd("S:/PEDS/RI Biostatistics Core/Shared/Shared Projects/Meier/CF/2020.02.09 - Prepost Triakfta/Data From CHCO/")

#chco

data <- read.csv("CGM data/Graceleyerly_post_12_4_2020.csv")
data$timestamp<- as.POSIXct(data$timestamp, format = "%m/%d/%Y %H:%M")
write.csv(data, "clean CGM/gl_post.csv")

data <- read.csv("CGM data/Graceleyerly_pre_2_28_2020.csv")
data$timestamp<- as.POSIXct(data$timestamp, format = "%m/%d/%Y %H:%M")
write.csv(data, "clean CGM/gl_pre.csv")

#for chco 
cleandata(inputdirectory = "S:/PEDS/RI Biostatistics Core/Shared/Shared Projects/Meier/CF/2020.02.09 - Prepost Triakfta/Data From CHCO/clean CGM/")

cgmvariables(inputdirectory = "S:/PEDS/RI Biostatistics Core/Shared/Shared Projects/Meier/CF/2020.02.09 - Prepost Triakfta/Data From CHCO/clean CGM/", 
             outputdirectory = "S:/PEDS/RI Biostatistics Core/Shared/Shared Projects/Meier/CF/2020.02.09 - Prepost Triakfta/Data From CHCO/",
             outputname = "REDCap Upload_chco")





data <- read.csv("CGM data/EthanWeatherstone_Pre.csv")
data$timestamp<- as.POSIXct(data$timestamp, format = "%m/%d/%Y %H:%M")
write.csv(data, "clean CGM/ew_pre.csv")
data <- read.csv("CGM data/BenjaminRusch_Post_9-24-2020.csv")
data$timestamp<- as.POSIXct(data$timestamp, format = "%m/%d/%Y %H:%M")
write.csv(data, "clean CGM/br_post2.csv")
data <- read.csv("CGM data/AndrewVaughn_Post_6-15-2020.csv")
data$timestamp<- as.POSIXct(data$timestamp, format = "%m/%d/%Y %H:%M")
write.csv(data, "clean CGM/av_post.csv")
data <- read.csv("CGM data/AlyssaTroyer_Post_10-6-2020.csv")
data$timestamp<- as.POSIXct(data$timestamp, format = "%m/%d/%Y %H:%M")
write.csv(data, "clean CGM/at_post.csv")




data <- read.csv("CGM data/NoahColbert_Pre_10-23-2019 (day light savings Nov3).csv")
data$timestamp<- as.POSIXct(data$timestamp, format = "%m/%d/%Y %H:%M")
write.csv(data, "clean CGM/nc_pre.csv")


#for Montana

setwd("S:/PEDS/RI Biostatistics Core/Shared/Shared Projects/Meier/CF/2020.02.09 - Prepost Triakfta/Data From Montana/CGM_Montana/")
data <- read.csv("1008380_Pre.csv")
data$timestamp<- as.POSIXct(data$timestamp, format = "%m/%d/%Y %H:%M")
write.csv(data, "clean CGM/1008380_Pre.csv")




cleandata(inputdirectory = "S:/PEDS/RI Biostatistics Core/Shared/Shared Projects/Meier/CF/2020.02.09 - Prepost Triakfta/Data From Montana/CGM_Montana/clean cgm/")

cgmvariables(inputdirectory = "S:/PEDS/RI Biostatistics Core/Shared/Shared Projects/Meier/CF/2020.02.09 - Prepost Triakfta/Data From Montana/CGM_Montana/clean CGM/", 
             outputdirectory = "S:/PEDS/RI Biostatistics Core/Shared/Shared Projects/Meier/CF/2020.02.09 - Prepost Triakfta/Data From Montana/CGM_Montana/",
             outputname = "REDCap Upload_mt")




