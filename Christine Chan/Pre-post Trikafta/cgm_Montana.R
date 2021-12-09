#CGM

#edit files


library('cgmanalysis')
#
  


cgmvariables(inputdirectory = "S:/PEDS/RI Biostatistics Core/Shared/Shared Projects/Meier/CF/2020.02.09 - Prepost Triakfta/Data From Montana/CGM_Montana/clean CGM/", 
             outputdirectory = "S:/PEDS/RI Biostatistics Core/Shared/Shared Projects/Meier/CF/2020.02.09 - Prepost Triakfta/Data From Montana/",
             outputname = "REDCap Upload_Montana")
)





setwd("S:/PEDS/RI Biostatistics Core/Shared/Shared Projects/Meier/CF/2020.02.09 - Prepost Triakfta/Data From Montana/CGM_Montana/")


data <- read.csv("1002461_post.csv")
data$timestamp<- as.POSIXct(data$timestamp, format = "%m/%d/%Y %H:%M")
write.csv(data, "clean CGM/1002461_post.csv")

data <- read.csv("1002461_pre.csv")
data$timestamp<- as.POSIXct(data$timestamp, format = "%m/%d/%Y %H:%M")
write.csv(data, "clean CGM/1002461_pre.csv")

data <- read.csv("1008380_Post.csv")
data$timestamp<- as.POSIXct(data$timestamp, format = "%m/%d/%Y %H:%M")
write.csv(data, "clean CGM/1008380_Post.csv")

data <- read.csv("1008380_Pre.csv")
data$timestamp<- as.POSIXct(data$timestamp, format = "%m/%d/%Y %H:%M")
write.csv(data, "clean CGM/1008380_Pre.csv")

data <- read.csv("1044621_Post.csv")
data$timestamp<- as.POSIXct(data$timestamp, format = "%m/%d/%Y %H:%M")
write.csv(data, "clean CGM/1044621_Post.csv")

data <- read.csv("1044621_Pre.csv")
data$timestamp<- as.POSIXct(data$timestamp, format = "%m/%d/%Y %H:%M")
write.csv(data, "clean CGM/1044621_Pre.csv")

data <- read.csv("1340261_Post.csv")
data$timestamp<- as.POSIXct(data$timestamp, format = "%m/%d/%Y %H:%M")
write.csv(data, "clean CGM/1340261_Post.csv")

data <- read.csv("1340261_Pre.csv")
data$timestamp<- as.POSIXct(data$timestamp, format = "%m/%d/%Y %H:%M")
write.csv(data, "clean CGM/1340261_Pre.csv")

data <- read.csv("1544710_Post.csv")
data$timestamp<- as.POSIXct(data$timestamp, format = "%m/%d/%Y %H:%M")
write.csv(data, "clean CGM/1544710_Post.csv")

data <- read.csv("1544710_Pre.csv")
data$timestamp<- as.POSIXct(data$timestamp, format = "%m/%d/%Y %H:%M")
write.csv(data, "clean CGM/1544710_Pre.csv")

data <- read.csv("1544720_Post.csv")
data$timestamp<- as.POSIXct(data$timestamp, format = "%m/%d/%Y %H:%M")
write.csv(data, "clean CGM/1544720_Post.csv")

data <- read.csv("1544720_Pre.csv")
data$timestamp<- as.POSIXct(data$timestamp, format = "%m/%d/%Y %H:%M")
write.csv(data, "clean CGM/1544720_Pre.csv")



