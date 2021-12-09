############pre/post trikaftka
# c. chan
##############################
library(dplyr)
setwd("S:/PEDS/RI Biostatistics Core/Shared/Shared Projects/Meier/CF/2020.02.09 - Prepost Triakfta/")

#cgm data
cgm_c <- read.csv("REDCap Upload.csv")
cgm_m <- read.csv("Data From Montana/CGM_Montana/REDCap Upload_mt.csv")
cgm_w <- read.csv("Data From Washington/REDCap Upload_Washington.csv")

cgm <- rbind(cgm_c, cgm_m,cgm_w )

#all updated from here up!


`%!in%` = Negate(`%in%`)
reg0 <- read.csv("Data From CHCO/Registry/Copy of Earliest Trikafta Dates in Registry_updated 2.2.21 cc modified_cfrdyn.csv")
#need to get rid of those two
reg <- subset(reg0, reg0$MRN %!in% c("1714343", "787372") )

a1c <- read.csv("Data From CHCO/Copy of A1C and OGTTs Before and After Trikafta_cc modified 8.25.20.csv")
weight <- read.csv("Data From CHCO/Registry/weightdata.csv")


#montana data
#total population

library("readxl")

reg_montana <- read.csv("S:/PEDS/RI Biostatistics Core/Shared/Shared Projects/Meier/CF/2020.02.09 - Prepost Triakfta/Data From Montana/Copy of Paper patient population glycemic (+hofer).csv")

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

pft_adult <- read.csv("S:/PEDS/RI Biostatistics Core/Shared/Shared Projects/Meier/CF/2020.02.09 - Prepost Triakfta/Data From Montana/Copy of PFTs growth adult (+hofer).csv")
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




geno_montana$class2 <- ifelse(geno_montana$Genotypes2 %in% c('1717-1G->A', '1717-1G-A',  'G542X', 'Q493X', 'R1162X', 'R553X', 'R553x', 'W1089X', 'W1282X', '1078delT', 'R75X',
                                                             '3659delC', '621+1G->T', '621+1G>T', '394delTT', '3120 + 1g->A', '1154InsTC',  '1154insTC', '1213delT',
                                                             '1259insA', '1288insTA', '3791delC', 'E60X', 'K710X', '2184delA', 'CFTRdele2,3', '663delT', 'Glu528',
                                                             '1461ins4', '306insA', 'R709X', 'CFTRdele22-24', '2711delT', '2183AA- >G'), "I", 
                              ifelse(geno_montana$Genotypes2 %in% c('F508', 'F508del', 'F508del ', 'G85E', 'I507', 'I 507', 'N1303K', 'A559T', 'R560T', 'A561E'), 
                                     "II", 
                                     ifelse(geno_montana$Genotypes2 %in% c('G551D', 'G551S', 'S549N'), "III", 
                                            ifelse(geno_montana$Genotypes2 %in% c('R334W', 'R347P', 'R117H', 'R117C', 'P67L', 'L206W', 'I206w', 'D614G', 'R347H', 'D1152H', '3849+10kbC>T'), 
                                                   "IV", 
                                                   ifelse(geno_montana$Genotypes2 %in% c('A455E', '2789+5G->A', '3849+10CT', '3849+10kbC->T', '711+3A->G', '1898+5G->T',
                                                                                         'P574H', '3272-26A->G5'), "V" , "")))))   

geno_montana$severity2 <- ifelse(geno_montana$Genotypes2 %in% c('1717-1G->A', '1717-1G-A',  'G542X', 'Q493X', 'R1162X', 'R553X', 'R553x', 'W1089X', 'W1282X', '1078delT', 'R75X',
                                                                '3659delC', '621+1G->T', '621+1G>T', '394delTT', '3120 + 1g->A', '1154InsTC',  '1154insTC', '1213delT',
                                                                '1259insA', '1288insTA', '3791delC', 'E60X', 'K710X', '2184delA', 'CFTRdele2,3', '663delT', 'Glu528',
                                                                '1461ins4', '306insA', 'R709X', 'CFTRdele22-24', '2711delT', '2183AA- >G','F508', 'F508del', 'F508del ', 'G85E', 
                                                                'I507', 'I 507', 'N1303K', 'A559T', 'R560T', 'A561E','G551D', 'G551S', 'S549N','1898+1G->A', '2143delT', '2183AA-G',
                                                                '2183delAA->G', '2184insA', 'S434X',
                                                                '2585delT', '3120+1G->A',  '3905insT',  '406-1G->A', '712-1G->T', 'L1245X', 'Q2X', 'R1158X',
                                                                'R851X', 'V520F', 'L1077P', 'S489X', 'F311del', 'W846X', 'M1101K', '2622+1G->A', 'S945L', 
                                                                "Y1092X", "R1066C", "G178R", "2957delT", "CFTRdele1", 'W1204X', "q493x", "W57G", "1585-8G>A", "1717-8G->A","G1244E"), 
                                 "Severe", 
                                 ifelse(geno_montana$Genotypes2 %in% c('R334W', 'R347P', 'R117H', 'R117C', 'P67L', 'L206W', 'I206w', 'D614G', 'R347H', 'D1152H', '3849+10kbC>T', "D110H", "R1070W",
                                                                       'A455E', '2789+5G->A', '3849+10CT', '3849+10kbC->T', '711+3A->G', '1898+5G->T',
                                                                       'P574H', '3272-26A->G5','3849G->A', 'H199Y', 'H199y',  'S492F', 'S531P',
                                                                       'L1335P', 'R352Q', "D1270N", "2789+2insA", "3849+10kbc->T", "Q98R", "Phe1052Val", 
                                                                       "F1052V", "Tyr1014Cys", "Y1014C", "T338I", "5T", "c.2249C>T", "P750L"), "Mild" ,
                                        
                                        ifelse(geno_montana$Genotypes2 %in% c(  '1262insA', 'I506T', '3363delGT' , 'Q1209P', '3349insT', 'G178R', 'L467P', '317insC', 'I336K',	
                                                                                'ex14a', '3500-2A->G', 'c.3407_3422del16', '3349insT', '1248+1G->A', 'M470V', '1812-1G->A',
                                                                                'del X22-24', 'Q237H', 'Q237H', 'W57G', '1078delA', 'G178R', '2957delT', 'G576A',
                                                                                'other', 'Other', 'Unknown', 'unknown', 'CFTRdele1', '1811+1.6kb A->', 'UNK', "I336K", "M470V", "S1235R", "M470V", "F508C",
                                                                                "R1066H", "P205S"), 
                                               "Unk","")))




geno_montana$class1 <- ifelse(geno_montana$Genotypes1 %in% c('1717-1G->A', '1717-1G-A',  'G542X', 'Q493X', 'R1162X', 'R553X', 'R553x', 'W1089X', 'W1282X', '1078delT', 'R75X',
                                                             '3659delC', '621+1G->T', '621+1G>T', '394delTT', '3120 + 1g->A', '1154InsTC',  '1154insTC', '1213delT',
                                                             '1259insA', '1288insTA', '3791delC', 'E60X', 'K710X', '2184delA', 'CFTRdele2,3', '663delT', 'Glu528',
                                                             '1461ins4', '306insA', 'R709X', 'CFTRdele22-24', '2711delT', '2183AA- >G'), "I", 
                              ifelse(geno_montana$Genotypes1 %in% c('F508', 'F508del', 'F508del ', 'G85E', 'I507', 'I 507', 'N1303K', 'A559T', 'R560T', 'A561E'), 
                                     "II", 
                                     ifelse(geno_montana$Genotypes1 %in% c('G551D', 'G551S', 'S549N'), "III", 
                                            ifelse(geno_montana$Genotypes1 %in% c('R334W', 'R347P', 'R117H', 'R117C', 'P67L', 'L206W', 'I206w', 'D614G', 'R347H', 'D1152H', '3849+10kbC>T'), 
                                                   "IV", 
                                                   ifelse(geno_montana$Genotypes1 %in% c('A455E', '2789+5G->A', '3849+10CT', '3849+10kbC->T', '711+3A->G', '1898+5G->T',
                                                                                         'P574H', '3272-26A->G5'), "V" , "")))))   
geno_montana$severity1 <- ifelse(geno_montana$Genotypes1 %in% c('1717-1G->A', '1717-1G-A',  'G542X', 'Q493X', 'R1162X', 'R553X', 'R553x', 'W1089X', 'W1282X', '1078delT', 'R75X',
                                                                '3659delC', '621+1G->T', '621+1G>T', '394delTT', '3120 + 1g->A', '1154InsTC',  '1154insTC', '1213delT',
                                                                '1259insA', '1288insTA', '3791delC', 'E60X', 'K710X', '2184delA', 'CFTRdele2,3', '663delT', 'Glu528',
                                                                '1461ins4', '306insA', 'R709X', 'CFTRdele22-24', '2711delT', '2183AA- >G','F508', 'F508del', 'F508del ', 'G85E', 
                                                                'I507', 'I 507', 'N1303K', 'A559T', 'R560T', 'A561E','G551D', 'G551S', 'S549N','1898+1G->A', '2143delT', '2183AA-G',
                                                                '2183delAA->G', '2184insA', 'S434X',
                                                                '2585delT', '3120+1G->A',  '3905insT',  '406-1G->A', '712-1G->T', 'L1245X', 'Q2X', 'R1158X',
                                                                'R851X', 'V520F', 'L1077P', 'S489X', 'F311del', 'W846X', 'M1101K', '2622+1G->A', 'S945L', 
                                                                "Y1092X", "R1066C", "G178R", "2957delT", "CFTRdele1", 'W1204X', "q493x", "W57G", "1585-8G>A", "1717-8G->A","G1244E"), 
                                 "Severe", 
                                 ifelse(geno_montana$Genotypes1 %in% c('R334W', 'R347P', 'R117H', 'R117C', 'P67L', 'L206W', 'I206w', 'D614G', 'R347H', 'D1152H', '3849+10kbC>T', "D110H", "R1070W",
                                                                       'A455E', '2789+5G->A', '3849+10CT', '3849+10kbC->T', '711+3A->G', '1898+5G->T',
                                                                       'P574H', '3272-26A->G5','3849G->A', 'H199Y', 'H199y',  'S492F', 'S531P',
                                                                       'L1335P', 'R352Q', "D1270N", "2789+2insA", "3849+10kbc->T", "Q98R", "Phe1052Val", 
                                                                       "F1052V", "Tyr1014Cys", "Y1014C", "T338I", "5T", "c.2249C>T", "P750L"), "Mild" ,
                                        
                                        ifelse(geno_montana$Genotypes1 %in% c(  '1262insA', 'I506T', '3363delGT' , 'Q1209P', '3349insT', 'G178R', 'L467P', '317insC', 'I336K',	
                                                                                'ex14a', '3500-2A->G', 'c.3407_3422del16', '3349insT', '1248+1G->A', 'M470V', '1812-1G->A',
                                                                                'del X22-24', 'Q237H', 'Q237H', 'W57G', '1078delA', 'G178R', '2957delT', 'G576A',
                                                                                'other', 'Other', 'Unknown', 'unknown', 'CFTRdele1', '1811+1.6kb A->', 'UNK', "I336K", "M470V", "S1235R", "M470V", "F508C",
                                                                                "R1066H", "P205S"), 
                                               "Unk","")))


geno_montana$genoRisk <- ifelse(geno_montana$severity1 == "Mild" | geno_montana$severity2 == "Mild", "Low", 
                                ifelse(geno_montana$severity1 == "Severe" & geno_montana$severity2 == "Severe", "High", ""))





analytic_montana$genotype <- ifelse(analytic_montana$CFF.ID %in% geno_montana[geno_montana$genoRisk == "High", ]$CFF.ID, "High", 
                                    ifelse(analytic_montana$CFF.ID %in% geno_montana[geno_montana$genoRisk == "Low", ]$CFF.ID, "Low",   ""   ))







#washingotn

reg_washington <- read.csv("Data From Washington/Copy of CFRD and trikafta Trikafta_on_Annual_Review-13-Apr-2021-0815.csv")
reg_wash <- read.csv("Data From Washington/Copy of CFRD and trikafta Trikafta_on_Annual_Review-13-Apr-2021-0815.csv")

analytic_wash <- reg_washington %>% group_by(CFF.ID) %>% filter(row_number()==1) %>% filter(CFF.ID != "1499770")
analytic_wash$trik <- as.Date(analytic_wash$Approximate.date.patient.started.taking.this.drug,  "%m/%d/%Y")

#aic 
a1c_wash <- read.csv("Data From Washington/A1C_and_OGTT.csv")

a1c_wash1 <- merge(a1c_wash, reg_wash, by = "CFF.ID")
a1c_wash1$pft <- as.Date(a1c_wash1$Date.of.Encounter.x,  "%m/%d/%Y")
a1c_wash1$trik <- as.Date(a1c_wash1$Approximate.date.patient.started.taking.this.drug,  "%m/%d/%Y")
a1c_wash1$diff <-as.numeric(a1c_wash1$pft - a1c_wash1$trik)
a1c_wash2<- subset(a1c_wash1, abs(diff) <= 365 )



#bmi
bmi_wash <- read.csv("Data From Washington/BMIandWeight.csv")
bmi_wash1 <- merge(bmi_wash, analytic_wash, by = "CFF.ID")
bmi_wash1$Date <- as.Date(bmi_wash1$Date.of.Encounter.x,  "%m/%d/%Y")
bmi_wash1$diff <-as.numeric(bmi_wash1$Date - bmi_wash1$trik)

bmi_wash2 <- subset(bmi_wash1, abs(diff) <= 365 )
bmi_wash2$prepost <- ifelse(bmi_wash2$trik > bmi_wash2$Date, "before", "after")

#need age/bmi from first visit
bmi_wash3 <- bmi_wash2 %>% group_by(CFF.ID) %>% filter(prepost == "before") %>% arrange(diff) %>%  filter(row_number()==1)
bmi_wash3$first_encounter <- bmi_wash3$Date.of.Encounter.x

analytic_wash <- merge(analytic_wash,bmi_wash3[,c("CFF.ID","BMI.Percentile" ,"Encounter.Age"  ,"Patients.height","BMI.Value","first_encounter")], by = "CFF.ID")

#sex
demo_wash <- read.csv("Data From Washington/Demographics.csv")

analytic_wash$Sex <- ifelse(analytic_wash$CFF.ID %in% demo_wash[demo_wash$Gender== "Female",]$CFF.ID, "F", 
                            ifelse(analytic_wash$CFF.ID %in% demo_wash[demo_wash$Gender== "Male",]$CFF.ID, "M",  "Check"))

#Insufficent
is_wash <- read.csv("Data From Washington/Pancreatic_Insufficient.csv")

analytic_wash$is <- ifelse(analytic_wash$CFF.ID %in% is_wash$CFF.ID, "Insufficient", "Not")


#gtube


gt_wash <- read.csv("Data From Washington/G-tube.csv")

analytic_wash$gt <- ifelse(analytic_wash$CFF.ID %in% gt_wash$CFF.ID, "GT", "Not")

#genotypes


geno_wash <- read.csv("Data From Washington/Genotypes.csv")


geno_wash$Genotypes1 <- geno_wash$Name.of.the.first.mutation

geno_wash$Genotypes2 <- geno_wash$Name.of.the.second.mutation




#
geno_wash$class2 <- ifelse(geno_wash$Genotypes2 %in% c('1717-1G->A', '1717-1G-A',  'G542X', 'Q493X', 'R1162X', 'R553X', 'R553x', 'W1089X', 'W1282X', '1078delT', 'R75X',
                                                       '3659delC', '621+1G->T', '621+1G>T', '394delTT', '3120 + 1g->A', '1154InsTC',  '1154insTC', '1213delT',
                                                       '1259insA', '1288insTA', '3791delC', 'E60X', 'K710X', '2184delA', 'CFTRdele2,3', '663delT', 'Glu528',
                                                       '1461ins4', '306insA', 'R709X', 'CFTRdele22-24', '2711delT', '2183AA- >G'), "I", 
                           ifelse(geno_wash$Genotypes2 %in% c('F508', 'F508del', 'F508del ', 'G85E', 'I507', 'I 507', 'N1303K', 'A559T', 'R560T', 'A561E'), 
                                  "II", 
                                  ifelse(geno_wash$Genotypes2 %in% c('G551D', 'G551S', 'S549N'), "III", 
                                         ifelse(geno_wash$Genotypes2 %in% c('R334W', 'R347P', 'R117H', 'R117C', 'P67L', 'L206W', 'I206w', 'D614G', 'R347H', 'D1152H', '3849+10kbC>T'), 
                                                "IV", 
                                                ifelse(geno_wash$Genotypes2 %in% c('A455E', '2789+5G->A', '3849+10CT', '3849+10kbC->T', '711+3A->G', '1898+5G->T',
                                                                                   'P574H', '3272-26A->G5'), "V" , "")))))   

geno_wash$severity2 <- ifelse(geno_wash$Genotypes2 %in% c('1717-1G->A', '1717-1G-A',  'G542X', 'Q493X', 'R1162X', 'R553X', 'R553x', 'W1089X', 'W1282X', '1078delT', 'R75X',
                                                          '3659delC', '621+1G->T', '621+1G>T', '394delTT', '3120 + 1g->A', '1154InsTC',  '1154insTC', '1213delT',
                                                          '1259insA', '1288insTA', '3791delC', 'E60X', 'K710X', '2184delA', 'CFTRdele2,3', '663delT', 'Glu528',
                                                          '1461ins4', '306insA', 'R709X', 'CFTRdele22-24', '2711delT', '2183AA- >G','F508', 'F508del', 'F508del ', 'G85E', 
                                                          'I507', 'I 507', 'N1303K', 'A559T', 'R560T', 'A561E','G551D', 'G551S', 'S549N','1898+1G->A', '2143delT', '2183AA-G',
                                                          '2183delAA->G', '2184insA', 'S434X',
                                                          '2585delT', '3120+1G->A',  '3905insT',  '406-1G->A', '712-1G->T', 'L1245X', 'Q2X', 'R1158X',
                                                          'R851X', 'V520F', 'L1077P', 'S489X', 'F311del', 'W846X', 'M1101K', '2622+1G->A', 'S945L', 
                                                          "Y1092X", "R1066C", "G178R", "2957delT", "CFTRdele1", 'W1204X', "q493x", "W57G", "1585-8G>A", "1717-8G->A","G1244E"), 
                              "Severe", 
                              ifelse(geno_wash$Genotypes2 %in% c('R334W', 'R347P', 'R117H', 'R117C', 'P67L', 'L206W', 'I206w', 'D614G', 'R347H', 'D1152H', '3849+10kbC>T', "D110H", "R1070W",
                                                                 'A455E', '2789+5G->A', '3849+10CT', '3849+10kbC->T', '711+3A->G', '1898+5G->T',
                                                                 'P574H', '3272-26A->G5','3849G->A', 'H199Y', 'H199y',  'S492F', 'S531P',
                                                                 'L1335P', 'R352Q', "D1270N", "2789+2insA", "3849+10kbc->T", "Q98R", "Phe1052Val", 
                                                                 "F1052V", "Tyr1014Cys", "Y1014C", "T338I", "5T", "c.2249C>T", "P750L"), "Mild" ,
                                     
                                     ifelse(geno_wash$Genotypes2 %in% c(  '1262insA', 'I506T', '3363delGT' , 'Q1209P', '3349insT', 'G178R', 'L467P', '317insC', 'I336K',	
                                                                          'ex14a', '3500-2A->G', 'c.3407_3422del16', '3349insT', '1248+1G->A', 'M470V', '1812-1G->A',
                                                                          'del X22-24', 'Q237H', 'Q237H', 'W57G', '1078delA', 'G178R', '2957delT', 'G576A',
                                                                          'other', 'Other', 'Unknown', 'unknown', 'CFTRdele1', '1811+1.6kb A->', 'UNK', "I336K", "M470V", "S1235R", "M470V", "F508C",
                                                                          "R1066H", "P205S"), 
                                            "Unk","")))




geno_wash$class1 <- ifelse(geno_wash$Genotypes1 %in% c('1717-1G->A', '1717-1G-A',  'G542X', 'Q493X', 'R1162X', 'R553X', 'R553x', 'W1089X', 'W1282X', '1078delT', 'R75X',
                                                       '3659delC', '621+1G->T', '621+1G>T', '394delTT', '3120 + 1g->A', '1154InsTC',  '1154insTC', '1213delT',
                                                       '1259insA', '1288insTA', '3791delC', 'E60X', 'K710X', '2184delA', 'CFTRdele2,3', '663delT', 'Glu528',
                                                       '1461ins4', '306insA', 'R709X', 'CFTRdele22-24', '2711delT', '2183AA- >G'), "I", 
                           ifelse(geno_wash$Genotypes1 %in% c('F508', 'F508del', 'F508del ', 'G85E', 'I507', 'I 507', 'N1303K', 'A559T', 'R560T', 'A561E'), 
                                  "II", 
                                  ifelse(geno_wash$Genotypes1 %in% c('G551D', 'G551S', 'S549N'), "III", 
                                         ifelse(geno_wash$Genotypes1 %in% c('R334W', 'R347P', 'R117H', 'R117C', 'P67L', 'L206W', 'I206w', 'D614G', 'R347H', 'D1152H', '3849+10kbC>T'), 
                                                "IV", 
                                                ifelse(geno_wash$Genotypes1 %in% c('A455E', '2789+5G->A', '3849+10CT', '3849+10kbC->T', '711+3A->G', '1898+5G->T',
                                                                                   'P574H', '3272-26A->G5'), "V" , "")))))   
geno_wash$severity1 <- ifelse(geno_wash$Genotypes1 %in% c('1717-1G->A', '1717-1G-A',  'G542X', 'Q493X', 'R1162X', 'R553X', 'R553x', 'W1089X', 'W1282X', '1078delT', 'R75X',
                                                          '3659delC', '621+1G->T', '621+1G>T', '394delTT', '3120 + 1g->A', '1154InsTC',  '1154insTC', '1213delT',
                                                          '1259insA', '1288insTA', '3791delC', 'E60X', 'K710X', '2184delA', 'CFTRdele2,3', '663delT', 'Glu528',
                                                          '1461ins4', '306insA', 'R709X', 'CFTRdele22-24', '2711delT', '2183AA- >G','F508', 'F508del', 'F508del ', 'G85E', 
                                                          'I507', 'I 507', 'N1303K', 'A559T', 'R560T', 'A561E','G551D', 'G551S', 'S549N','1898+1G->A', '2143delT', '2183AA-G',
                                                          '2183delAA->G', '2184insA', 'S434X',
                                                          '2585delT', '3120+1G->A',  '3905insT',  '406-1G->A', '712-1G->T', 'L1245X', 'Q2X', 'R1158X',
                                                          'R851X', 'V520F', 'L1077P', 'S489X', 'F311del', 'W846X', 'M1101K', '2622+1G->A', 'S945L', 
                                                          "Y1092X", "R1066C", "G178R", "2957delT", "CFTRdele1", 'W1204X', "q493x", "W57G", "1585-8G>A", "1717-8G->A","G1244E"), 
                              "Severe", 
                              ifelse(geno_wash$Genotypes1 %in% c('R334W', 'R347P', 'R117H', 'R117C', 'P67L', 'L206W', 'I206w', 'D614G', 'R347H', 'D1152H', '3849+10kbC>T', "D110H", "R1070W",
                                                                 'A455E', '2789+5G->A', '3849+10CT', '3849+10kbC->T', '711+3A->G', '1898+5G->T',
                                                                 'P574H', '3272-26A->G5','3849G->A', 'H199Y', 'H199y',  'S492F', 'S531P',
                                                                 'L1335P', 'R352Q', "D1270N", "2789+2insA", "3849+10kbc->T", "Q98R", "Phe1052Val", 
                                                                 "F1052V", "Tyr1014Cys", "Y1014C", "T338I", "5T", "c.2249C>T", "P750L"), "Mild" ,
                                     
                                     ifelse(geno_wash$Genotypes1 %in% c(  '1262insA', 'I506T', '3363delGT' , 'Q1209P', '3349insT', 'G178R', 'L467P', '317insC', 'I336K',	
                                                                          'ex14a', '3500-2A->G', 'c.3407_3422del16', '3349insT', '1248+1G->A', 'M470V', '1812-1G->A',
                                                                          'del X22-24', 'Q237H', 'Q237H', 'W57G', '1078delA', 'G178R', '2957delT', 'G576A',
                                                                          'other', 'Other', 'Unknown', 'unknown', 'CFTRdele1', '1811+1.6kb A->', 'UNK', "I336K", "M470V", "S1235R", "M470V", "F508C",
                                                                          "R1066H", "P205S"), 
                                            "Unk","")))


geno_wash$genoRisk <- ifelse(geno_wash$severity1 == "Mild" | geno_wash$severity2 == "Mild", "Low", 
                             ifelse(geno_wash$severity1 == "Severe" & geno_wash$severity2 == "Severe", "High", ""))





analytic_wash$genotype <- ifelse(analytic_wash$CFF.ID %in% geno_wash[geno_wash$genoRisk == "High", ]$CFF.ID, "High", 
                                    ifelse(analytic_wash$CFF.ID %in% geno_wash[geno_wash$genoRisk == "Low", ]$CFF.ID, "Low",   ""   ))




#pfts

pfts_wash <- read.csv("Data From Washington/PFTs.csv")

pfts_wash1 <- merge(pfts_wash, analytic_wash, by = "CFF.ID")
pfts_wash1$Date <- as.Date(pfts_wash1$Date.of.Encounter.x,  "%m/%d/%Y")
pfts_wash1$diff <-as.numeric(pfts_wash1$Date - pfts_wash1$trik)

pfts_wash2 <- subset(pfts_wash1, abs(diff) <= 365 )
pfts_wash2$prepost <- ifelse(pfts_wash2$trik > pfts_wash2$Date, "before", "after")
pfts_wash3 <- pfts_wash2 %>% group_by(CFF.ID) %>% filter(prepost == "before") %>% arrange(diff) %>%  filter(row_number()==1)



analytic_wash <- merge(analytic_wash,pfts_wash3[,c("CFF.ID", "Predicted.Value.for.FVC", "Predicted.Value.for.FEV1")]  )



library(arsenal)
library(tidyverse)

#getting analytic cohort
reg1 <- subset(reg, reg$CFRD.yes.1 == 1)
#there are 30 people with cfrd in the database

a1c1 <- subset(a1c, a1c$Diabetes == 1)
a1c2 <- subset(a1c1, a1c1$MRN %in% reg1$MRN)

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


#BMI 
reg2_BMI <- merge(reg1, weight1, by = "MRN", all.x = T)

reg2_BMI$age <- as.numeric(reg2_BMI$pft - as.Date(reg2_BMI$DOB, "%m/%d/%Y"))/365.25
library(PAutilities)
reg2_BMI$Sex_MM <- ifelse(reg2_BMI$Sex == "Male", "M", "F")

library(AGD)

bmi_levels <- c("Underweight", "Healthy weight", "Overweight", 
                "Obesity", "Severe obesity")
bmi_class <- c("Underweight", "Healthy weight", "Overweight","Class 1", "Class 2", "Class 3")
reg2_BMI$agemos <- reg2_BMI$age*12


#
reg2$class2 <- ifelse(reg2$Genotypes2 %in% c('1717-1G->A', '1717-1G-A',  'G542X', 'Q493X', 'R1162X', 'R553X', 'R553x', 'W1089X', 'W1282X', '1078delT', 'R75X',
                                             '3659delC', '621+1G->T', '621+1G>T', '394delTT', '3120 + 1g->A', '1154InsTC',  '1154insTC', '1213delT',
                                             '1259insA', '1288insTA', '3791delC', 'E60X', 'K710X', '2184delA', 'CFTRdele2,3', '663delT', 'Glu528',
                                             '1461ins4', '306insA', 'R709X', 'CFTRdele22-24', '2711delT', '2183AA- >G'), "I", 
                      ifelse(reg2$Genotypes2 %in% c('F508', 'F508del', 'F508del ', 'G85E', 'I507', 'I 507', 'N1303K', 'A559T', 'R560T', 'A561E'), 
                             "II", 
                             ifelse(reg2$Genotypes2 %in% c('G551D', 'G551S', 'S549N'), "III", 
                                    ifelse(reg2$Genotypes2 %in% c('R334W', 'R347P', 'R117H', 'R117C', 'P67L', 'L206W', 'I206w', 'D614G', 'R347H', 'D1152H', '3849+10kbC>T'), 
                                           "IV", 
                                           ifelse(reg2$Genotypes2 %in% c('A455E', '2789+5G->A', '3849+10CT', '3849+10kbC->T', '711+3A->G', '1898+5G->T',
                                                                         'P574H', '3272-26A->G5'), "V" , "")))))   

reg2$severity2 <- ifelse(reg2$Genotypes2 %in% c('1717-1G->A', '1717-1G-A',  'G542X', 'Q493X', 'R1162X', 'R553X', 'R553x', 'W1089X', 'W1282X', '1078delT', 'R75X',
                                                '3659delC', '621+1G->T', '621+1G>T', '394delTT', '3120 + 1g->A', '1154InsTC',  '1154insTC', '1213delT',
                                                '1259insA', '1288insTA', '3791delC', 'E60X', 'K710X', '2184delA', 'CFTRdele2,3', '663delT', 'Glu528',
                                                '1461ins4', '306insA', 'R709X', 'CFTRdele22-24', '2711delT', '2183AA- >G','F508', 'F508del', 'F508del ', 'G85E', 
                                                'I507', 'I 507', 'N1303K', 'A559T', 'R560T', 'A561E','G551D', 'G551S', 'S549N','1898+1G->A', '2143delT', '2183AA-G',
                                                '2183delAA->G', '2184insA', 'S434X',
                                                '2585delT', '3120+1G->A',  '3905insT',  '406-1G->A', '712-1G->T', 'L1245X', 'Q2X', 'R1158X',
                                                'R851X', 'V520F', 'L1077P', 'S489X', 'F311del', 'W846X', 'M1101K', '2622+1G->A', 'S945L', 
                                                "Y1092X", "R1066C", "G178R", "2957delT", "CFTRdele1", 'W1204X', "q493x", "W57G", "1585-8G>A", "1717-8G->A","G1244E"), 
                         "Severe", 
                         ifelse(reg2$Genotypes2 %in% c('R334W', 'R347P', 'R117H', 'R117C', 'P67L', 'L206W', 'I206w', 'D614G', 'R347H', 'D1152H', '3849+10kbC>T', "D110H", "R1070W",
                                                       'A455E', '2789+5G->A', '3849+10CT', '3849+10kbC->T', '711+3A->G', '1898+5G->T',
                                                       'P574H', '3272-26A->G5','3849G->A', 'H199Y', 'H199y',  'S492F', 'S531P',
                                                       'L1335P', 'R352Q', "D1270N", "2789+2insA", "3849+10kbc->T", "Q98R", "Phe1052Val", 
                                                       "F1052V", "Tyr1014Cys", "Y1014C", "T338I", "5T", "c.2249C>T", "P750L"), "Mild" ,
                                
                                ifelse(reg2$Genotypes2 %in% c(  '1262insA', 'I506T', '3363delGT' , 'Q1209P', '3349insT', 'G178R', 'L467P', '317insC', 'I336K',	
                                                                'ex14a', '3500-2A->G', 'c.3407_3422del16', '3349insT', '1248+1G->A', 'M470V', '1812-1G->A',
                                                                'del X22-24', 'Q237H', 'Q237H', 'W57G', '1078delA', 'G178R', '2957delT', 'G576A',
                                                                'other', 'Other', 'Unknown', 'unknown', 'CFTRdele1', '1811+1.6kb A->', 'UNK', "I336K", "M470V", "S1235R", "M470V", "F508C",
                                                                "R1066H", "P205S"), 
                                       "Unk","")))




reg2$class1 <- ifelse(reg2$Genotypes1 %in% c('1717-1G->A', '1717-1G-A',  'G542X', 'Q493X', 'R1162X', 'R553X', 'R553x', 'W1089X', 'W1282X', '1078delT', 'R75X',
                                             '3659delC', '621+1G->T', '621+1G>T', '394delTT', '3120 + 1g->A', '1154InsTC',  '1154insTC', '1213delT',
                                             '1259insA', '1288insTA', '3791delC', 'E60X', 'K710X', '2184delA', 'CFTRdele2,3', '663delT', 'Glu528',
                                             '1461ins4', '306insA', 'R709X', 'CFTRdele22-24', '2711delT', '2183AA- >G'), "I", 
                      ifelse(reg2$Genotypes1 %in% c('F508', 'F508del', 'F508del ', 'G85E', 'I507', 'I 507', 'N1303K', 'A559T', 'R560T', 'A561E'), 
                             "II", 
                             ifelse(reg2$Genotypes1 %in% c('G551D', 'G551S', 'S549N'), "III", 
                                    ifelse(reg2$Genotypes1 %in% c('R334W', 'R347P', 'R117H', 'R117C', 'P67L', 'L206W', 'I206w', 'D614G', 'R347H', 'D1152H', '3849+10kbC>T'), 
                                           "IV", 
                                           ifelse(reg2$Genotypes1 %in% c('A455E', '2789+5G->A', '3849+10CT', '3849+10kbC->T', '711+3A->G', '1898+5G->T',
                                                                         'P574H', '3272-26A->G5'), "V" , "")))))   
reg2$severity1 <- ifelse(reg2$Genotypes1 %in% c('1717-1G->A', '1717-1G-A',  'G542X', 'Q493X', 'R1162X', 'R553X', 'R553x', 'W1089X', 'W1282X', '1078delT', 'R75X',
                                                '3659delC', '621+1G->T', '621+1G>T', '394delTT', '3120 + 1g->A', '1154InsTC',  '1154insTC', '1213delT',
                                                '1259insA', '1288insTA', '3791delC', 'E60X', 'K710X', '2184delA', 'CFTRdele2,3', '663delT', 'Glu528',
                                                '1461ins4', '306insA', 'R709X', 'CFTRdele22-24', '2711delT', '2183AA- >G','F508', 'F508del', 'F508del ', 'G85E', 
                                                'I507', 'I 507', 'N1303K', 'A559T', 'R560T', 'A561E','G551D', 'G551S', 'S549N','1898+1G->A', '2143delT', '2183AA-G',
                                                '2183delAA->G', '2184insA', 'S434X',
                                                '2585delT', '3120+1G->A',  '3905insT',  '406-1G->A', '712-1G->T', 'L1245X', 'Q2X', 'R1158X',
                                                'R851X', 'V520F', 'L1077P', 'S489X', 'F311del', 'W846X', 'M1101K', '2622+1G->A', 'S945L', 
                                                "Y1092X", "R1066C", "G178R", "2957delT", "CFTRdele1", 'W1204X', "q493x", "W57G", "1585-8G>A", "1717-8G->A","G1244E"), 
                         "Severe", 
                         ifelse(reg2$Genotypes1 %in% c('R334W', 'R347P', 'R117H', 'R117C', 'P67L', 'L206W', 'I206w', 'D614G', 'R347H', 'D1152H', '3849+10kbC>T', "D110H", "R1070W",
                                                       'A455E', '2789+5G->A', '3849+10CT', '3849+10kbC->T', '711+3A->G', '1898+5G->T',
                                                       'P574H', '3272-26A->G5','3849G->A', 'H199Y', 'H199y',  'S492F', 'S531P',
                                                       'L1335P', 'R352Q', "D1270N", "2789+2insA", "3849+10kbc->T", "Q98R", "Phe1052Val", 
                                                       "F1052V", "Tyr1014Cys", "Y1014C", "T338I", "5T", "c.2249C>T", "P750L"), "Mild" ,
                                
                                ifelse(reg2$Genotypes1 %in% c(  '1262insA', 'I506T', '3363delGT' , 'Q1209P', '3349insT', 'G178R', 'L467P', '317insC', 'I336K',	
                                                                'ex14a', '3500-2A->G', 'c.3407_3422del16', '3349insT', '1248+1G->A', 'M470V', '1812-1G->A',
                                                                'del X22-24', 'Q237H', 'Q237H', 'W57G', '1078delA', 'G178R', '2957delT', 'G576A',
                                                                'other', 'Other', 'Unknown', 'unknown', 'CFTRdele1', '1811+1.6kb A->', 'UNK', "I336K", "M470V", "S1235R", "M470V", "F508C",
                                                                "R1066H", "P205S"), 
                                       "Unk","")))


reg2$genoRisk <- ifelse(reg2$severity1 == "Mild" | reg2$severity2 == "Mild", "Low", 
                        ifelse(reg2$severity1 == "Severe" & reg2$severity2 == "Severe", "High", ""))






reg2_BMI$Sex <- as.factor(reg2_BMI$Sex_MM)
levels(reg2_BMI$Sex) <- c("F", "M")
reg2_BMI$bmi <- reg2_BMI$BMI
reg3_BMI <- reg2_BMI %>%
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
reg3$class2 <- ifelse(reg3$Genotypes2 %in% c('1717-1G->A', '1717-1G-A',  'G542X', 'Q493X', 'R1162X', 'R553X', 'R553x', 'W1089X', 'W1282X', '1078delT', 'R75X',
                                             '3659delC', '621+1G->T', '621+1G>T', '394delTT', '3120 + 1g->A', '1154InsTC',  '1154insTC', '1213delT',
                                             '1259insA', '1288insTA', '3791delC', 'E60X', 'K710X', '2184delA', 'CFTRdele2,3', '663delT', 'Glu528',
                                             '1461ins4', '306insA', 'R709X', 'CFTRdele22-24', '2711delT', '2183AA- >G'), "I", 
                      ifelse(reg3$Genotypes2 %in% c('F508', 'F508del', 'F508del ', 'G85E', 'I507', 'I 507', 'N1303K', 'A559T', 'R560T', 'A561E'), 
                             "II", 
                             ifelse(reg3$Genotypes2 %in% c('G551D', 'G551S', 'S549N'), "III", 
                                    ifelse(reg3$Genotypes2 %in% c('R334W', 'R347P', 'R117H', 'R117C', 'P67L', 'L206W', 'I206w', 'D614G', 'R347H', 'D1152H', '3849+10kbC>T'), 
                                           "IV", 
                                           ifelse(reg3$Genotypes2 %in% c('A455E', '2789+5G->A', '3849+10CT', '3849+10kbC->T', '711+3A->G', '1898+5G->T',
                                                                         'P574H', '3272-26A->G5'), "V" , "")))))   

reg3$severity2 <- ifelse(reg3$Genotypes2 %in% c('1717-1G->A', '1717-1G-A',  'G542X', 'Q493X', 'R1162X', 'R553X', 'R553x', 'W1089X', 'W1282X', '1078delT', 'R75X',
                                                '3659delC', '621+1G->T', '621+1G>T', '394delTT', '3120 + 1g->A', '1154InsTC',  '1154insTC', '1213delT',
                                                '1259insA', '1288insTA', '3791delC', 'E60X', 'K710X', '2184delA', 'CFTRdele2,3', '663delT', 'Glu528',
                                                '1461ins4', '306insA', 'R709X', 'CFTRdele22-24', '2711delT', '2183AA- >G','F508', 'F508del', 'F508del ', 'G85E', 
                                                'I507', 'I 507', 'N1303K', 'A559T', 'R560T', 'A561E','G551D', 'G551S', 'S549N','1898+1G->A', '2143delT', '2183AA-G',
                                                '2183delAA->G', '2184insA', 'S434X',
                                                '2585delT', '3120+1G->A',  '3905insT',  '406-1G->A', '712-1G->T', 'L1245X', 'Q2X', 'R1158X',
                                                'R851X', 'V520F', 'L1077P', 'S489X', 'F311del', 'W846X', 'M1101K', '2622+1G->A', 'S945L', 
                                                "Y1092X", "R1066C", "G178R", "2957delT", "CFTRdele1", 'W1204X', "q493x", "W57G", "1585-8G>A", "1717-8G->A","G1244E"), 
                         "Severe", 
                         ifelse(reg3$Genotypes2 %in% c('R334W', 'R347P', 'R117H', 'R117C', 'P67L', 'L206W', 'I206w', 'D614G', 'R347H', 'D1152H', '3849+10kbC>T', "D110H", "R1070W",
                                                       'A455E', '2789+5G->A', '3849+10CT', '3849+10kbC->T', '711+3A->G', '1898+5G->T',
                                                       'P574H', '3272-26A->G5','3849G->A', 'H199Y', 'H199y',  'S492F', 'S531P',
                                                       'L1335P', 'R352Q', "D1270N", "2789+2insA", "3849+10kbc->T", "Q98R", "Phe1052Val", 
                                                       "F1052V", "Tyr1014Cys", "Y1014C", "T338I", "5T", "c.2249C>T", "P750L"), "Mild" ,
                                
                                ifelse(reg3$Genotypes2 %in% c(  '1262insA', 'I506T', '3363delGT' , 'Q1209P', '3349insT', 'G178R', 'L467P', '317insC', 'I336K',	
                                                                'ex14a', '3500-2A->G', 'c.3407_3422del16', '3349insT', '1248+1G->A', 'M470V', '1812-1G->A',
                                                                'del X22-24', 'Q237H', 'Q237H', 'W57G', '1078delA', 'G178R', '2957delT', 'G576A',
                                                                'other', 'Other', 'Unknown', 'unknown', 'CFTRdele1', '1811+1.6kb A->', 'UNK', "I336K", "M470V", "S1235R", "M470V", "F508C",
                                                                "R1066H", "P205S"), 
                                       "Unk","")))




reg3$class1 <- ifelse(reg3$Genotypes1 %in% c('1717-1G->A', '1717-1G-A',  'G542X', 'Q493X', 'R1162X', 'R553X', 'R553x', 'W1089X', 'W1282X', '1078delT', 'R75X',
                                             '3659delC', '621+1G->T', '621+1G>T', '394delTT', '3120 + 1g->A', '1154InsTC',  '1154insTC', '1213delT',
                                             '1259insA', '1288insTA', '3791delC', 'E60X', 'K710X', '2184delA', 'CFTRdele2,3', '663delT', 'Glu528',
                                             '1461ins4', '306insA', 'R709X', 'CFTRdele22-24', '2711delT', '2183AA- >G'), "I", 
                      ifelse(reg3$Genotypes1 %in% c('F508', 'F508del', 'F508del ', 'G85E', 'I507', 'I 507', 'N1303K', 'A559T', 'R560T', 'A561E'), 
                             "II", 
                             ifelse(reg3$Genotypes1 %in% c('G551D', 'G551S', 'S549N'), "III", 
                                    ifelse(reg3$Genotypes1 %in% c('R334W', 'R347P', 'R117H', 'R117C', 'P67L', 'L206W', 'I206w', 'D614G', 'R347H', 'D1152H', '3849+10kbC>T'), 
                                           "IV", 
                                           ifelse(reg3$Genotypes1 %in% c('A455E', '2789+5G->A', '3849+10CT', '3849+10kbC->T', '711+3A->G', '1898+5G->T',
                                                                         'P574H', '3272-26A->G5'), "V" , "")))))   
reg3$severity1 <- ifelse(reg3$Genotypes1 %in% c('1717-1G->A', '1717-1G-A',  'G542X', 'Q493X', 'R1162X', 'R553X', 'R553x', 'W1089X', 'W1282X', '1078delT', 'R75X',
                                                '3659delC', '621+1G->T', '621+1G>T', '394delTT', '3120 + 1g->A', '1154InsTC',  '1154insTC', '1213delT',
                                                '1259insA', '1288insTA', '3791delC', 'E60X', 'K710X', '2184delA', 'CFTRdele2,3', '663delT', 'Glu528',
                                                '1461ins4', '306insA', 'R709X', 'CFTRdele22-24', '2711delT', '2183AA- >G','F508', 'F508del', 'F508del ', 'G85E', 
                                                'I507', 'I 507', 'N1303K', 'A559T', 'R560T', 'A561E','G551D', 'G551S', 'S549N','1898+1G->A', '2143delT', '2183AA-G',
                                                '2183delAA->G', '2184insA', 'S434X',
                                                '2585delT', '3120+1G->A',  '3905insT',  '406-1G->A', '712-1G->T', 'L1245X', 'Q2X', 'R1158X',
                                                'R851X', 'V520F', 'L1077P', 'S489X', 'F311del', 'W846X', 'M1101K', '2622+1G->A', 'S945L', 
                                                "Y1092X", "R1066C", "G178R", "2957delT", "CFTRdele1", 'W1204X', "q493x", "W57G", "1585-8G>A", "1717-8G->A","G1244E"), 
                         "Severe", 
                         ifelse(reg3$Genotypes1 %in% c('R334W', 'R347P', 'R117H', 'R117C', 'P67L', 'L206W', 'I206w', 'D614G', 'R347H', 'D1152H', '3849+10kbC>T', "D110H", "R1070W",
                                                       'A455E', '2789+5G->A', '3849+10CT', '3849+10kbC->T', '711+3A->G', '1898+5G->T',
                                                       'P574H', '3272-26A->G5','3849G->A', 'H199Y', 'H199y',  'S492F', 'S531P',
                                                       'L1335P', 'R352Q', "D1270N", "2789+2insA", "3849+10kbc->T", "Q98R", "Phe1052Val", 
                                                       "F1052V", "Tyr1014Cys", "Y1014C", "T338I", "5T", "c.2249C>T", "P750L"), "Mild" ,
                                
                                ifelse(reg3$Genotypes1 %in% c(  '1262insA', 'I506T', '3363delGT' , 'Q1209P', '3349insT', 'G178R', 'L467P', '317insC', 'I336K',	
                                                                'ex14a', '3500-2A->G', 'c.3407_3422del16', '3349insT', '1248+1G->A', 'M470V', '1812-1G->A',
                                                                'del X22-24', 'Q237H', 'Q237H', 'W57G', '1078delA', 'G178R', '2957delT', 'G576A',
                                                                'other', 'Other', 'Unknown', 'unknown', 'CFTRdele1', '1811+1.6kb A->', 'UNK', "I336K", "M470V", "S1235R", "M470V", "F508C",
                                                                "R1066H", "P205S"), 
                                       "Unk","")))


reg3$genoRisk <- ifelse(reg3$severity1 == "Mild" | reg3$severity2 == "Mild", "Low", 
                        ifelse(reg3$severity1 == "Severe" & reg3$severity2 == "Severe", "High", ""))


reg3$G.tube.in.past.12.months <- ifelse(reg3$G.tube.in.past.12.months == "", "No", "Yes")

# 
# tab1 <- tableby(~age+bmipct + Weight + Sex + ppFEV1 + ppFVC + CFRD_duration +
#                   G.tube.in.past.12.months + Pancreatic.Status +
#                   genoRisk , data=reg3)

reg3$location <- rep("reg3", nrow(reg3))

reg_tab1 <- reg3[,c("CFF.ID", "age", "bmipct", "Weight", "Sex", "ppFEV1", "ppFVC", "G.tube.in.past.12.months", "Pancreatic.Status", "genoRisk",
                    "location")]

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


analytic_wash$bmipct <- analytic_wash$BMI.Percentile/100
analytic_wash$age <- analytic_wash$Encounter.Age
analytic_wash$BMI.Value <- rep(NA, nrow(analytic_wash))
analytic_wash$Weight <- rep(NA, nrow(analytic_wash))
analytic_wash$ppFEV1 <- pctpred_GLI(analytic_wash$age, analytic_wash$Patients.height/100, gender = ifelse(analytic_wash$Sex== "M", 1, 2) , 
                                     ethnicity = 1, 
                                     FEV1 = analytic_wash$Predicted.Value.for.FEV1)

analytic_wash$ppFVC <- pctpred_GLI(analytic_wash$age, analytic_wash$Patients.height/100, gender = ifelse(analytic_wash$Sex == "M", 1, 2) , 
                                    ethnicity = 1, 
                                    FVC = analytic_wash$Predicted.Value.for.FVC)


analytic_wash$G.tube.in.past.12.months <- ifelse(analytic_wash$gt == "Not", "No", "Yes")
analytic_wash$Pancreatic.Status <- analytic_wash$is
analytic_wash$genoRisk <- analytic_wash$genotype
analytic_wash$location <- rep("Washington", nrow(analytic_wash))
analytic_wash$age_category <- rep("Pediatric", nrow(analytic_wash))


analytic_wash1 <- analytic_wash[,c("CFF.ID", "age", "bmipct", "Weight", "Sex", "ppFEV1", "ppFVC", "G.tube.in.past.12.months", 
                                   "Pancreatic.Status", "genoRisk",
                                         "location", "BMI.Value", "age_category")]



#addin gin u of m data
uofm <- read.csv("Data from UofM/Moheet_Pre_Post_Trikafta_FinalData_20210914.csv")
analytic_uofm <- subset(uofm, uofm$CFRD.Status == "CFRD with or without fasting hyperglycemia")
analytic_uofm$age <- analytic_uofm$age.at.Trikafta.start



bmi_levels <- c("Underweight", "Healthy weight", "Overweight", 
                "Obesity", "Severe obesity")
bmi_class <- c("Underweight", "Healthy weight", "Overweight","Class 1", "Class 2", "Class 3")
analytic_uofm$agemos <- analytic_uofm$age*12

analytic_uofm$Sex <- as.factor(analytic_uofm$Gender)
levels(analytic_uofm$Sex) <- c("F", "M")
analytic_uofm$bmi <- analytic_uofm$BMI.calc
analytic_uofm2 <- analytic_uofm %>%
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

analytic_uofm2$ppFEV1 <- pctpred_GLI(analytic_uofm2$age, analytic_uofm2$Height..cm./100, gender = ifelse(analytic_uofm2$Sex== "M", 1, 2) , 
                               ethnicity = 1, 
                               FEV1 = analytic_uofm2$FEV1)

analytic_uofm2$ppFVC <- pctpred_GLI(analytic_uofm2$age, analytic_uofm2$Height..cm./100, gender = ifelse(analytic_uofm2$Sex == "M", 1, 2) , 
                              ethnicity = 1, 
                              FVC = analytic_uofm2$FVC)


analytic_uofm2$Weight <- analytic_uofm2$Weight..kg.

analytic_uofm2$G.tube.in.past.12.months <- analytic_uofm2$Tube.Feeding

analytic_uofm2$age_category <- ifelse(analytic_uofm2$age <= 20 ,"Pediatric", "Adult")
analytic_uofm2$location <- rep("Minnesota", nrow(analytic_uofm2))
analytic_uofm2$Pancreatic.Status <- ifelse(analytic_uofm2$Pancreatic.Sufficiency..on.enzymes.. == "Yes", "Insufficient", "Not")


analytic_uofm2$Genotypes1 <- analytic_uofm2$Genotype1

analytic_uofm2$Genotypes2 <- analytic_uofm2$Genotype2


analytic_uofm2$class2 <- ifelse(analytic_uofm2$Genotypes2 %in% c('1717-1G->A', '1717-1G-A',  'G542X', 'Q493X', 'R1162X', 'R553X', 'R553x', 'W1089X', 'W1282X', '1078delT', 'R75X',
                                                             '3659delC', '621+1G->T', '621+1G>T', '394delTT', '3120 + 1g->A', '1154InsTC',  '1154insTC', '1213delT',
                                                             '1259insA', '1288insTA', '3791delC', 'E60X', 'K710X', '2184delA', 'CFTRdele2,3', '663delT', 'Glu528',
                                                             '1461ins4', '306insA', 'R709X', 'CFTRdele22-24', '2711delT', '2183AA- >G', '2183AA->G'), "I", 
                              ifelse(analytic_uofm2$Genotypes2 %in% c('F508', 'F508del', 'F508del ', 'G85E', 'I507', 'I 507', 'N1303K', 'A559T', 'R560T', 'A561E'), 
                                     "II", 
                                     ifelse(analytic_uofm2$Genotypes2 %in% c('G551D', 'G551S', 'S549N'), "III", 
                                            ifelse(analytic_uofm2$Genotypes2 %in% c('R334W', 'R347P', 'R117H', 'R117C', 'P67L', 'L206W', 'I206w', 'D614G', 'R347H', 'D1152H', '3849+10kbC>T'), 
                                                   "IV", 
                                                   ifelse(analytic_uofm2$Genotypes2 %in% c('A455E', '2789+5G->A', '3849+10CT', '3849+10kbC->T', '711+3A->G', '1898+5G->T',
                                                                                         'P574H', '3272-26A->G5'), "V" , "")))))   

analytic_uofm2$severity2 <- ifelse(analytic_uofm2$Genotypes2 %in% c('1717-1G->A', '1717-1G-A',  'G542X', 'Q493X', 'R1162X', 'R553X', 'R553x', 'W1089X', 'W1282X', '1078delT', 'R75X',
                                                                '3659delC', '621+1G->T', '621+1G>T', '394delTT', '3120 + 1g->A', '1154InsTC',  '1154insTC', '1213delT',
                                                                '1259insA', '1288insTA', '3791delC', 'E60X', 'K710X', '2184delA', 'CFTRdele2,3', '663delT', 'Glu528',
                                                                '1461ins4', '306insA', 'R709X', 'CFTRdele22-24', '2711delT', '2183AA- >G','F508', 'F508del', 'F508del ', 'G85E', 
                                                                'I507', 'I 507', 'N1303K', 'A559T', 'R560T', 'A561E','G551D', 'G551S', 'S549N','1898+1G->A', '2143delT', '2183AA-G',
                                                                '2183delAA->G', '2184insA', 'S434X',
                                                                '2585delT', '3120+1G->A',  '3905insT',  '406-1G->A', '712-1G->T', 'L1245X', 'Q2X', 'R1158X',
                                                                'R851X', 'V520F', 'L1077P', 'S489X', 'F311del', 'W846X', 'M1101K', '2622+1G->A', 'S945L', 
                                                                "Y1092X", "R1066C", "G178R", "2957delT", "CFTRdele1", 'W1204X', "q493x", "W57G", "1585-8G>A", "1717-8G->A","G1244E"), 
                                 "Severe", 
                                 ifelse(analytic_uofm2$Genotypes2 %in% c('R334W', 'R347P', 'R117H', 'R117C', 'P67L', 'L206W', 'I206w', 'D614G', 'R347H', 'D1152H', '3849+10kbC>T', "D110H", "R1070W",
                                                                       'A455E', '2789+5G->A', '3849+10CT', '3849+10kbC->T', '711+3A->G', '1898+5G->T',
                                                                       'P574H', '3272-26A->G5','3849G->A', 'H199Y', 'H199y',  'S492F', 'S531P',
                                                                       'L1335P', 'R352Q', "D1270N", "2789+2insA", "3849+10kbc->T", "Q98R", "Phe1052Val", 
                                                                       "F1052V", "Tyr1014Cys", "Y1014C", "T338I", "5T", "c.2249C>T", "P750L"), "Mild" ,
                                        
                                        ifelse(analytic_uofm2$Genotypes2 %in% c(  '1262insA', 'I506T', '3363delGT' , 'Q1209P', '3349insT', 'G178R', 'L467P', '317insC', 'I336K',	
                                                                                'ex14a', '3500-2A->G', 'c.3407_3422del16', '3349insT', '1248+1G->A', 'M470V', '1812-1G->A',
                                                                                'del X22-24', 'Q237H', 'Q237H', 'W57G', '1078delA', 'G178R', '2957delT', 'G576A',
                                                                                'other', 'Other', 'Unknown', 'unknown', 'CFTRdele1', '1811+1.6kb A->', 'UNK', "I336K", "M470V", "S1235R", "M470V", "F508C",
                                                                                "R1066H", "P205S"), 
                                               "Unk","")))




analytic_uofm2$class1 <- ifelse(analytic_uo