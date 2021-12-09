############pre/post trikaftka
# c. chan
##############################

setwd("S:/PEDS/RI Biostatistics Core/Shared/Shared Projects/Meier/CF/2020.02.09 - Prepost Triakfta/")

#cgm data
cgm_c <- read.csv("REDCap Upload.csv")
cgm_m <- read.csv("S:/PEDS/RI Biostatistics Core/Shared/Shared Projects/Meier/CF/2020.02.09 - Prepost Triakfta/Data From Montana/REDCap Upload_Montana.csv")

cgm <- rbind(cgm_c, cgm_m)


reg <- read.csv("Data From CHCO/Registry/Copy of Earliest Trikafta Dates in Registry_updated 2.2.21 cc modified_cfrdyn.csv")
a1c <- read.csv("Data From CHCO/Registry/Copy of A1C and OGTTs Before and After Trikafta_cc modified.csv")
weight <- read.csv("Data From CHCO/Registry/weightdata.csv")


#montana data
#total population

library("readxl")

reg_montana <- read.csv("S:/PEDS/RI Biostatistics Core/Shared/Shared Projects/Meier/CF/2020.02.09 - Prepost Triakfta/Data From Montana/NACFC patient population glycemic_updated.csv")

demo_adult <- read.csv("S:/PEDS/RI Biostatistics Core/Shared/Shared Projects/Meier/CF/2020.02.09 - Prepost Triakfta/Data From Montana/demo_adults.csv")
demo_kids <- read.csv("S:/PEDS/RI Biostatistics Core/Shared/Shared Projects/Meier/CF/2020.02.09 - Prepost Triakfta/Data From Montana/demo_kids.csv")

reg_montana$age <- ifelse(reg_montana$CFF.ID %in% demo_adult$CFF.ID, "Adult", 
                          ifelse(reg_montana$CFF.ID %in% demo_kids$CFF.ID, "Kids", "Check"))


reg_montana$trik <- as.Date(reg_montana$Trikafta.start.date,"%m/%d/%Y")

reg_montana$test <- as.Date(reg_montana$Date.of.Encounter,  "%m/%d/%Y")
reg_montana$prepost <- ifelse(reg_montana$trik > reg_montana$test, "before", "after")

reg_montana$diff <- reg_montana$trik-reg_montana$test 
reg_montana2 <- subset(reg_montana, abs(diff) <= 365)



reg_montana3 <- reg_montana2 %>% group_by(CFF.ID, prepost) %>% count()
reg_montana4 <- reg_montana3 %>% group_by(CFF.ID) %>% count()


#weight/fev

pft_adult <- read.csv("S:/PEDS/RI Biostatistics Core/Shared/Shared Projects/Meier/CF/2020.02.09 - Prepost Triakfta/Data From Montana/PFTs growth adult.csv")
pft_kids <- read.csv("S:/PEDS/RI Biostatistics Core/Shared/Shared Projects/Meier/CF/2020.02.09 - Prepost Triakfta/Data From Montana/PFTs kids.csv")


pft_montana <- rbind(pft_adult, pft_kids)
  
  
pft_montana_1 <- subset(pft_montana, pft_montana$CFF.ID %in% reg_montana$CFF.ID)

#age at pft
pft_montana_1$pft <- as.Date(pft_montana_1$Date.of.Encounter,  "%m/%d/%Y")

reg_montana_first <- reg_montana %>% group_by(CFF.ID) %>% filter(row_number()==1)

pft_montana_2 <- merge(pft_montana_1, reg_montana_first[,c("CFF.ID" ,"Date.Of.Birth..mm.dd.yyyy.", "trik")])

#need pfts within a year of trik

pft_montana_2$diff <-as.numeric(pft_montana_2$pft - pft_montana_2$trik)
pft_montana_3 <- subset(pft_montana_2, abs(diff) <= 365 )
pft_montana_3$prepost <- ifelse(pft_montana_3$trik > pft_montana_3$pft, "before", "after")
pft_montana_4 <- subset(pft_montana_3, pft_montana_3$prepost == "before")
pft_montana_5 <- pft_montana_4 %>% group_by(CFF.ID) %>% arrange(diff) %>% filter(row_number()==1)


pft_montana_5$DOB <- as.Date(pft_montana_5$Date.Of.Birth..mm.dd.yyyy.,  "%m/%d/%Y")

pft_montana_5$age <- as.numeric(pft_montana_5$pft-pft_montana_5$DOB)/365.25
  
pft_montana_5$BMI.Percentile

#need sex
demo_montana <- rbind(demo_kids[,c("CFF.ID","Gender")], demo_adult[,c("CFF.ID","Gender")])

analytic_montana <- merge(pft_montana_5, demo_montana ,by = "CFF.ID", all.x=T)

#need cfrd start date - don't have dates

#gtube status

gt_adult <- read.csv("S:/PEDS/RI Biostatistics Core/Shared/Shared Projects/Meier/CF/2020.02.09 - Prepost Triakfta/Data From Montana/gtubes_adult.csv")
gt_kids <- read.csv("S:/PEDS/RI Biostatistics Core/Shared/Shared Projects/Meier/CF/2020.02.09 - Prepost Triakfta/Data From Montana/GT users kids.csv")


gt_montana <- rbind(gt_adult, gt_kids)


gt_montana_1 <- merge(gt_montana, reg_montana_first[,c("CFF.ID" , "trik")])
gt_montana_1$gt <- as.Date(gt_montana_1$Date.of.Encounter,  "%m/%d/%Y")
gt_montana_1$diff <-as.numeric(gt_montana_1$gt - gt_montana_1$trik)
gt_montana_2 <- subset(gt_montana_1, abs(diff) <= 365 )
analytic_montana$gtube <- ifelse(analytic_montana$CFF.ID %in% gt_montana_2$CFF.ID, "Yes", "No")

#Insufficent

is_adult <- read.csv("S:/PEDS/RI Biostatistics Core/Shared/Shared Projects/Meier/CF/2020.02.09 - Prepost Triakfta/Data From Montana/pancreatic insufficient adult.csv")
is_kids <- read.csv("S:/PEDS/RI Biostatistics Core/Shared/Shared Projects/Meier/CF/2020.02.09 - Prepost Triakfta/Data From Montana/pancreatic insufficient kids.csv")

analytic_montana$is <- ifelse(analytic_montana$CFF.ID %in% c(is_adult$CFF.ID, is_kids$CFF.ID), "Insufficient", "Not")

#genotypes

g_adult <- read.csv("S:/PEDS/RI Biostatistics Core/Shared/Shared Projects/Meier/CF/2020.02.09 - Prepost Triakfta/Data From Montana/genotypes_adult.csv")
g_kids <- read.csv("S:/PEDS/RI Biostatistics Core/Shared/Shared Projects/Meier/CF/2020.02.09 - Prepost Triakfta/Data From Montana/genotypes kids.csv")[,1:3]

geno_montana <- rbind(g_adult,g_kids)


geno_montana$Genotypes1 <- geno_montana$Name.of.the.first.mutation

geno_montana$Genotypes2 <- geno_montana$Name.of.the.second.mutation

analytic_montana$genotype <- ifelse(analytic_montana$CFF.ID %in% geno_montana[geno_montana$genoRisk == "High", ]$CFF.ID, "High", 
                                    ifelse(analytic_montana$CFF.ID %in% geno_montana[geno_montana$genoRisk == "Low", ]$CFF.ID, "Low",   ""   ))




library(arsenal)
library(tidyverse)

#getting analytic cohort
reg1 <- subset(reg, reg$CFRD.yes.1 == 1)
#there are 30 people with cfrd in the database

a1c1 <- subset(a1c, a1c$Diabetes == 1)
a1c2 <- subset(a1c1, a1c1$MRN %in% reg1$MRN)

#need pre/post of triakftk
a1c2$trik <- as.Date(a1c2$Earliest.Trikafta.Date.in.PortCF, "%m/%d/%Y")
a1c2$test <- as.Date(a1c2$Date.of.A1C.or.OGTT,  "%m/%d/%Y")
a1c2$prepost <- ifelse(a1c2$trik > a1c2$test, "before", "after")

#who has before and after
a1c3 <- a1c2 %>% group_by(MRN, prepost) %>% count()
a1c4 <- a1c3 %>% group_by(MRN) %>% count()

a1c5 <- subset(a1c2, a1c2$MRN %in% a1c4[a1c4$n == 2,]$MRN)


#gcm cleaning 

out <- str_split(cgm$subject_id, "_")
cgm$ID <- do.call(rbind, out)[,1]
cgm$time <- tolower(do.call(rbind, out)[,2])

cgm0 <- subset(cgm, cgm$ID %in% reg1$CFF.ID)

cgm1 <- cgm0 %>% group_by(ID, time) %>% count()
cgm2 <- cgm1 %>% group_by(ID) %>% count()

#weight

weight1 <- subset(weight, weight$MRN %in% reg1$MRN)


reg1$a1c <- ifelse(reg1$MRN %in% a1c5$MRN, "Yes", "No")
reg1$cgm <- ifelse(reg1$CFF.ID %in% cgm2$ID, "Yes", "No")


######################
#table1
reg1$trek <-  as.Date(reg1$Earliest.Trikafta.Date.in.PortCF, "%m/%d/%Y")
weight1$trek <- as.Date(weight1$Earliest.Trikafta.Date.in.PCF, "%m/%d/%Y")
weight1$pft <- as.Date(weight1$PFT.Date, "%m/%d/%Y")
weight1$diff <- weight1$pft-weight1$trek

weight2 <- weight1  %>% arrange(as.numeric(diff))%>% group_by(MRN) %>%  filter(row_number()==1)

reg2 <- merge(reg1, weight2, by = "MRN", all.x = T)

reg2$age <- as.numeric(reg2$pft - as.Date(reg2$DOB, "%m/%d/%Y"))/365.25
library(PAutilities)
reg2$Sex_MM <- ifelse(reg2$Sex == "Male", "M", "F")

library(AGD)

bmi_levels <- c("Underweight", "Healthy weight", "Overweight", 
                "Obesity", "Severe obesity")
bmi_class <- c("Underweight", "Healthy weight", "Overweight","Class 1", "Class 2", "Class 3")
reg2$agemos <- reg2$age*12

reg2$Sex <- as.factor(reg2$Sex_MM)
levels(reg2$Sex) <- c("F", "M")
reg2$bmi <- reg2$BMI
reg3 <- reg2 %>%
  # the CDC growth charts are typically used for children 2 years or older
  # filter(agemos >= 24) %>%
  mutate(bmiz =  AGD::y2z(y = bmi, x = age, sex = Sex, ref = cdc.bmi),
         bmipct = pnorm(bmiz),
         z = qnorm(.95),
         p95 = AGD::z2y(z = z, x= age, sex = Sex, ref = cdc.bmi),
         # percentage of the 95th percentile
         bmipct95 = bmi/p95,
         # bmi category
         bmicat = factor(case_when(bmipct < .05 ~ "Underweight",
                                   bmipct < .85 ~ "Healthy weight",
                                   bmipct < .95 ~ "Overweight",
                                   bmipct95 < 1.2 ~ "Class 1",
                                   bmipct95 < 1.4 ~ "Class 2",
                                   bmipct95 >= 1.4 ~ "Class 3"),
                         levels = bmi_class))

#fev

library(rspiro)

reg3$ppFEV1 <- pctpred_GLI(reg3$age, reg3$Height/100, gender = ifelse(reg3$Sex_MM == "M", 1, 2) , 
                           ethnicity = 1, 
                           FEV1 = reg3$FEV1)

reg3$ppFVC <- pctpred_GLI(reg3$age, reg3$Height/100, gender = ifelse(reg3$Sex_MM == "M", 1, 2) , 
                           ethnicity = 1, 
                           FVC = reg3$FVC)

#
reg3$CFRD <- as.Date(reg3$CFRD.Diagnosis.Date, "%m/%d/%Y")
reg3$CFRD_duration <- as.numeric(reg3$trek.x-reg3$CFRD)/365.25



# 
# tab1 <- tableby(~age+bmipct + Weight + Sex + ppFEV1 + ppFVC + CFRD_duration +
#                   G.tube.in.past.12.months + Pancreatic.Status +
#                   genoRisk , data=reg3)


reg_tab1 <- reg3[,c("CFF.ID", "age", "bmipct", "Weight", "Sex", "ppFEV1", "ppFVC", "G.tube.in.past.12.months", "Pancreatic.Status", "genoRisk")]

reg_tab1$location <- rep("CHCO", nrow(reg_tab1))
reg_tab1$BMI.Value <- rep(NA, nrow(reg_tab1))
reg_tab1$age_category <- rep("Pediatric", nrow(reg_tab1))

analytic_montana$bmipct <- analytic_montana$BMI.Percentile/100
analytic_montana$Sex <- ifelse(analytic_montana$Gender == "Female", "F", "M")
analytic_montana$Weight <- analytic_montana$Weight.of.Patient 
analytic_montana$ppFEV1 <- analytic_montana$Percent.predicted.relative.to.predicted.FEV1..value
analytic_montana$ppFVC <- analytic_montana$Percent.predicted.relative.to.predicted.FVC.value
analytic_montana$G.tube.in.past.12.months <- analytic_montana$gtube 
analytic_montana$Pancreatic.Status <- analytic_montana$is
analytic_montana$genoRisk <- analytic_montana$genotype

analytic_montana$location <- rep("Montana", nrow(analytic_montana))

analytic_montana$age_category <- ifelse(analytic_montana$CFF.ID %in% demo_kids$CFF.ID, "Pediatric", "Adult")


analytic_montana1 <- analytic_montana[,c("CFF.ID", "age", "bmipct", "Weight", "Sex", "ppFEV1", "ppFVC", "G.tube.in.past.12.months", "Pancreatic.Status", "genoRisk",
                                         "location", "BMI.Value", "age_category")]


analytic_cm <- rbind(reg_tab1 , analytic_montana1)

tab1 <- tableby(~age+bmipct + Weight + Sex + ppFEV1 + ppFVC  +
                  G.tube.in.past.12.months + Pancreatic.Status +
                  genoRisk + location+BMI.Value + age_category, data=analytic_cm)




#####################
#table 2


a1c5$diff <- as.numeric(a1c5$trik - a1c5$test)
a1c6 <- subset(a1c5, abs(a1c5$diff) <= 365)



a1c7 <- a1c6 %>% group_by(MRN, prepost) %>%  count()

tab2 <- tableby(a1c7$prepost ~ a1c7$n)

before <- subset(a1c7, a1c7$prepost == "before")
before$pre <- before$n

after <- subset(a1c7, a1c7$prepost == "after")
after$post <- after$n


a <- merge(before, after, by = "MRN", all.y = T)
wilcox.test(a$pre,a$post, paired = T)



#test if difference

#merge back in the a1c for pre and post 
before <- subset(a1c6, a1c6$prepost == "before")
before1 <- before %>% arrange(diff) %>% group_by(MRN) %>% filter(row_number()==1) 

#time before
before_max <- before %>% group_by(MRN) %>% summarize(time = max(diff)/30.417)

summary(before_max$time)
sd(before_max$time)


after <- subset(a1c6, a1c6$prepost == "after")
after1 <- after %>% arrange(desc(diff)) %>% group_by(MRN) %>% filter(row_number()==1) 

after_max <- after %>% group_by(MRN) %>% summarize(time = max(abs(diff))/30.417)


summary(after_max$time)
sd(after_max$time)

time <- merge(before,after,by='MRN',all.y=T)

t.test(time$Hgb.A1C.x,time$Hgb.A1C.y, paired = T)




time <- merge(before_max,after_max,by='MRN',all.y=T)

t.test(time$time.x,time$time.y, paired = T)


##########################
#weight data
#need z score for weight
library("anthro")
weightz <- merge(weight1, reg1[,c("MRN", "Sex", "DOB")], by = "MRN", all.x=T)

weightz$age <- as.numeric(weightz$pft - as.Date(weightz$DOB, "%m/%d/%Y"))/365.25
library(PAutilities)
weightz$Sex_MM <- ifelse(weightz$Sex == "Male", "M", "F")

library(AGD)

bmi_levels <- c("Underweight", "Healthy weight", "Overweight", 
                "Obesity", "Severe obesity")
bmi_class <- c("Underweight", "Healthy weight", "Overweight","Class 1", "Class 2", "Class 3")
weightz$agemos <- weightz$age*12

weightz$Sex <- as.factor(weightz$Sex_MM)
levels(weightz$Sex) <- c("F", "M")
weightz$bmi <- weightz$BMI
weightz2 <- weightz %>%
  # the CDC growth charts are typically used for children 2 years or older
  # filter(agemos >= 24) %>%
  mutate(bmiz =  AGD::y2z(y = bmi, x = age, sex = Sex, ref = cdc.bmi),
         bmipct = pnorm(bmiz),
         z = qnorm(.95),
         p95 = AGD::z2y(z = z, x= age, sex = Sex, ref = cdc.bmi),
         # percentage of the 95th percentile
         bmipct95 = bmi/p95,
         # bmi category
         bmicat = factor(case_when(bmipct < .05 ~ "Underweight",
                                   bmipct < .85 ~ "Healthy weight",
                                   bmipct < .95 ~ "Overweight",
                                   bmipct95 < 1.2 ~ "Class 1",
                                   bmipct95 < 1.4 ~ "Class 2",
                                   bmipct95 >= 1.4 ~ "Class 3"),
                         levels = bmi_class))

weightz2$ppFEV1 <- pctpred_GLI(weightz2$age, weightz2$Height/100, gender = ifelse(weightz2$Sex_MM == "M", 1, 2) , 
                           ethnicity = 1, 
                           FEV1 = weightz2$FEV1)

weightz2$ppFVC <- pctpred_GLI(weightz2$age, weightz2$Height/100, gender = ifelse(weightz2$Sex_MM == "M", 1, 2) , 
                          ethnicity = 1, 
                          FVC = weightz2$FVC)



weigh_before <- merge(weightz2, before1[,c("MRN", "test")], by = "MRN", all.x = T)
weigh_before$weight_closest <- abs(as.numeric(weigh_before$pft-weigh_before$test))

weigh_before1 <- weigh_before %>% group_by(MRN) %>% arrange(weight_closest) %>% filter(row_number()==1)
weigh_before1$time <- rep("before",nrow(weigh_before1))


weigh_after <- merge(weightz2, after1[,c("MRN", "test")], by = "MRN", all.x = T)
weigh_after$weight_closest <- abs(as.numeric(weigh_after$pft-weigh_after$test))

weigh_after1 <- weigh_after %>% group_by(MRN) %>% arrange(weight_closest) %>% filter(row_number()==1)

weigh_after1$time <- rep("after",nrow(weigh_after1))


timing <- rbind(weigh_before1,weigh_after1)

tab2 <- tableby(time~Weight+ bmiz + ppFEV1+ppFVC, data=timing)

timing2 <- merge(weigh_before1,weigh_after1, by = "MRN", all.y=T)
wilcox.test(timing2$ppFEV1.x,timing2$ppFEV1.y, paired=T)

wilcox.test(timing2$ppFVC.x,timing2$ppFVC.y, paired=T)



#CGM data

out <- str_split(cgm$subject_id, "_")
cgm$ID <- do.call(rbind, out)[,1]
cgm$time <- tolower(do.call(rbind, out)[,2])

cgm0 <- subset(cgm, cgm$ID %in% reg1$CFF.ID)

cgm_temp <- merge(cgm, reg1, by.x="ID", by.y="CFF.ID", all.x=T)

cgm1 <- cgm0 %>% group_by(ID, time) %>% count()
cgm2 <- cgm1 %>% group_by(ID) %>% count()

View(cgm0[,c("subject_id", "ID", "time")])

#pull first post and then do an overall

cgm0$date <- as.Date(cgm0$date_cgm_placement)

cgm02 <- cgm0 %>% filter(time=="post") %>%  group_by(ID) %>% 
  arrange(date) %>% filter(row_number()==1)

cgm0_small <- rbind(cgm0[cgm0$time == "pre",],cgm02)
mycontrols  <- tableby.control( 
                               numeric.test="kwt", cat.test="chisq",
                               numeric.stats=c("N", "median", "q1q3"),
                               cat.stats=c("countpct"),
                               stats.labels=list(N='Count', median='Median', q1q3='Q1,Q3'))

tab3 <- tableby(time~ average_sensor
+ min_sensor
+ max_sensor
+ percent_time_over_120
+ percent_time_over_140
+ percent_time_over_200
+ avg_excur_over_140_per_day
+ avg_excur_over_200_per_day
+ percent_time_under_60
+ percent_time_under_70
+ average_auc_per_day
+ standard_deviation
+ r_mage, data=cgm0_small, control=mycontrols)

tab3 <- tableby(time~ average_sensor
                + min_sensor
                + max_sensor
                + percent_time_over_120
                + percent_time_over_140
                + percent_time_over_200
                + avg_excur_over_140_per_day
                + avg_excur_over_200_per_day
                + percent_time_under_60
                + percent_time_under_70
                + average_auc_per_day
                + standard_deviation
                + r_mage, data=cgm0[cgm0$time == "post",]
, control=mycontrols)



wilcox.test(cgm0_small$average_sensor~cgm0_small$time, paired=T)

