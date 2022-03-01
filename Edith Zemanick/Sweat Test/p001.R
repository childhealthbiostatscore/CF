#################
#sweat chloride
#################
library(tidyverse)
library(arsenal)
`%!in%` = Negate(`%in%`)


setwd("//ucdenver.pvt/SOM/PEDS/RI Biostatistics Core/Shared/Shared Projects/Meier/CF/2020.10.27 - Zemanick - sweat test/data/")
data_10 <- read.csv("Copy of Sweat Tests_AllFor202558_revised01Feb2021.csv")
data_11 <- subset(data_10, data_10$Age.at.Test.in.Years < 50)
data_11$temp <- paste(data_11$PatientID, data_11$Diagnosis)

data_12 <- subset(data_11, data_11$temp %!in% c("22 Non-CF","23 Non-CF",  "24 Non-CF" , "29 Non-CF" , "31 Non-CF" , "474 Non-CF" ,"483 Non-CF" ,"484 Non-CF" ,
                                                "485 Non-CF", "505 Non-CF", "510 Non-CF", "785 Non-CF", "791 Non-CF", "792 Non-CF",
                                                "793 Non-CF"))

data_1_0 <- data_12 %>% distinct() %>% filter(Sex != "") %>% filter(Demographics.Available == "TRUE")

#get rid of anyone with a time less than 2 days
data_1_0$Age.at.Test.in.Days <- data_1_0$Age.at.Test.in.Weeks*7
data_1_0$Na_Left <- ifelse(as.numeric(data_1_0$Na_Left) > 160, NA,as.numeric(data_1_0$Na_Left) )
data_1_0$Na_Right <- ifelse(as.numeric(data_1_0$Na_Right) > 160, NA,as.numeric(data_1_0$Na_Right) )


data_1 <- subset(data_1_0, data_1_0$Age.at.Test.in.Days >= 2)

data_1$Diagnosis_MM <- ifelse(data_1$Diagnosis %in% c("Non-CF", "Normal"), "Non-CF",
                              ifelse(data_1$Diagnosis %in% c("CFTR-related disorder", "CRMS"), "CRMS/CFTR", 
                                     data_1$Diagnosis))


#data cleaning 
#get rid of first row for 22, 39, 



#modulator data
mod0 <- read.csv('Copy of Report CFTR Modulators.csv')
mod <- mod0 %>% group_by(Patient.ID) %>%  arrange(Age.at.Start..years.) %>%  filter(row_number()==1)

# data_0 <- read.csv("Copy of Sweat Tests from Internal database_genotype class.csv")

data_0 <- merge(data_1, mod, by.x = "PatientID", by.y=  "Patient.ID", all.x = T)

data_0$before_after <- ifelse(data_0$Age.at.Test.in.Years < data_0$Age.at.Start..years., "After",
                       ifelse(data_0$Age.at.Test.in.Years > data_0$Age.at.Start..years.,"Before", "not on"))


#demographic table


data_0[data_0 == "."] <- NA
data_0[data_0 == ""] <- NA

#how many sweat tests


source("S:/PEDS/RI Biostatistics Core/Shared/Shared Projects/Meier/CF/2020.10.27 - Zemanick - sweat test/prog/severity.R")

data_0$Age.at.Test.in.Weeks <- as.numeric(data_0$Age.at.Test.in.Weeks)
data_0$Age.at.Test.in.Years <- as.numeric(data_0$Age.at.Test.in.Years)
data_0$Amount <- as.numeric(data_0$Amount)
data_0$Na <- as.numeric(data_0$Na)
data_0$K <- as.numeric(data_0$K)
data_0$Cl <- as.numeric(data_0$Cl)
data_0$Amount_Left <- as.numeric(data_0$Amount_Left)
data_0$Amount_Right <- as.numeric(data_0$Amount_Right)
data_0$Na_Left <- as.numeric(data_0$Na_Left)
data_0$Na_Right <- as.numeric(data_0$Na_Right)
data_0$K_Left <- as.numeric(data_0$K_Left)
data_0$K_Right <- as.numeric(data_0$K_Right)
data_0$Cl_Left <- as.numeric(data_0$Cl_Left)
data_0$Cl_Right <- as.numeric(data_0$Cl_Right)
data_0$ratio <- data_0$Na/data_0$Cl
data_0$ratio_Left <- data_0$Na_Left/data_0$Cl_Left
data_0$ratio_Right <- data_0$Na_Right/data_0$Cl_Right
data_0$cf_status <- ifelse(data_0$Diagnosis %in% c("Non-CF", "Normal"), "Non-CF", data_0$Diagnosis)

#table for abstract
data_1 <- subset(data_0, Notes != "OUT OF RANGE" | is.na(Notes))

data_0$genoRisk_MM <- ifelse(data_0$genoRisk == "", "Unknown", data_0$genoRisk)

data_first <- data_1 %>% group_by(PatientID) %>% arrange(Age.at.Test.in.Weeks) %>%  filter(row_number()==1)

table(data_first$cf_status, data_first$genoRisk)
data_first$genotype <- ifelse(data_first$cf_status == "Non-CF", "Not CF", 
                              ifelse(is.na(data_first$genoRisk), "Unknown", data_first$genoRisk))
data_first$arm <-rep("Missing", nrow(data_first))
data_first$arm <-ifelse(is.na(data_first$Amount_Left) & is.na(data_first$Amount_Right) & !is.na(data_first$Amount), "Arm Not Noted",
                         ifelse(is.na(data_first$Amount_Left) & is.na(data_first$Amount_Right), "Missing",
                         ifelse(is.na(data_first$Amount_Left) | is.na(data_first$Amount_Right), "one arm", 
                         ifelse(!is.na(data_first$Amount_Left) & !is.na(data_first$Amount_Right), "both arms", 
                                 "missing"))))


mycontrols  <- tableby.control(test=FALSE,
                               numeric.test="kwt", cat.test="chisq",
                               numeric.stats=c("N", "median", "q1q3"),
                               cat.stats=c("countpct"),
                               stats.labels=list(N='Count', median='Median', q1q3='Q1,Q3'))


data_first$Diagnosis


#table 1
tab1 <- tableby(Method~Sex + Age.at.Test.in.Years +  genotype + 
                  Diagnosis_MM + arm, data=data_first ,control=mycontrols)

tab1 <- tableby(Diagnosis~Sex + Age.at.Test.in.Years +  genotype + 
                  Diagnosis + arm, data=data_first ,control=mycontrols)

#table 2

data_atleast2 <- data_1  %>% group_by(PatientID) %>%  count()
data_first2 <- merge(data_first, data_atleast2, by= "PatientID", all.x=T)

data_temp <- data_1 %>% group_by(PatientID) %>% arrange(Age.at.Test.in.Weeks) %>%  mutate(Diff = Age.at.Test.in.Weeks - lag(Age.at.Test.in.Weeks))
data_temp1 <- data_temp %>% group_by(PatientID) %>% summarise(avg_time = mean(Diff, na.rm=T))



data_first3 <- merge(data_first2, data_temp1, by="PatientID", all.x=T)


tab2 <- tableby(Method~Sex + Age.at.Test.in.Years +  genotype + 
                  Diagnosis + n + avg_time, data=data_first3[data_first3$PatientID %in% data_atleast2[data_atleast2$n>=2,]$PatientID,]  ,control=mycontrols)


tab3 <- tableby(~Sex + Age.at.Test.in.Years +  genotype + 
                  Diagnosis + n + avg_time, data=data_first3[data_first3$PatientID %in% data_atleast2[data_atleast2$n>=1,]$PatientID,]  ,control=mycontrols)



#cannot do table 3 - unsure of modulator status

# data_first$arm_amount <- ifelse(data_first$arm == "both arms", mean(c(data_first$Amount_Left, data_first$Amount_Right)),
#                                 # ifelse()

                                
  
                              
tab1 <- tableby(genotype~Sex + Age.at.Test.in.Years +  genotype + 
                  Diagnosis + arm, data=data_first3[!is.na(data_first3$before_after),] )


data_first$genoRisk_biggroup <- ifelse(data_first$cf_status == "CRMS", "CRMS", 
                                        data_first$genotype )
data_first_post <- subset(data_first, data_first$genoRisk_biggroup != "")


data_first_post$genotype_groups_1 <- ifelse(data_first_post$Genotypes1 == "F508del", "F508del",
                                     ifelse(data_first_post$Genotypes1 == "Unknown", "Unknown", "Other"))
data_first_post$genotype_groups_2 <- ifelse(data_first_post$Genotypes2 == "F508del", "F508del",
                                     ifelse(data_first_post$Genotypes2 == "Unknown", "Unknown", "Other"))


data_first_post$genotype_groups <- paste0(data_first_post$genotype_groups_1, "/", data_first_post$genotype_groups_2)

data_first_post1 <- merge(data_first_post[data_first_post$PatientID %in% data_atleast2[data_atleast2$n>=2,]$PatientID,] , data_summaryperperson , all.x=T)

data_first_post$number_visits <- ifelse(data_first_post$PatientID %in% data_atleast2[data_atleast2$n>=2,]$PatientID, ">=2", "< 2")

data_first_post$Cl_avg <- ifelse(is.na(data_first_post$Cl), (data_first_post$Cl_Left + data_first_post$Cl_Right)/2, data_first_post$Cl)

data_first_post$Na_avg <- ifelse(is.na(data_first_post$Na), (data_first_post$Na_Left + data_first_post$Na_Right)/2, data_first_post$Na)

data_first_post$ratio_avg <- data_first_post$Na_avg/data_first_post$Cl_avg
data_first_post$ratio_avg_2 <- ifelse(data_first_post$ratio_avg >= 2, NA, data_first_post$ratio_avg)


#avg. sweet, avg choloride, within and between for both, % with more than one occasion, % with both arms, ratio, 
tab_poster <- tableby(genoRisk_biggroup~Sex + Age.at.Test.in.Years + genotype_groups + Method + 
                  Diagnosis + arm + number_visits, data=data_first_post )



#figures
#reorder genorisk_biggroup
data_first_post$genoRisk_biggroup_2 <- factor(data_first_post$genoRisk_biggroup, levels = c("High","Low","CRMS", "Not CF"))
levels(data_first_post$genoRisk_biggroup_2) <- c("High risk\n(N=551 )", "Low risk\n(N=71)", "CRMS\n(N=18)","Non-CF control\n(N=2379)")


# Add in the N for each group 
# For the legend, can you say "High risk genotype", "Low risk genotype" and  "Non-CF control"



box1 <- ggplot(data_first_post, aes(x = genoRisk_biggroup_2, y =Cl_avg, fill = genoRisk_biggroup ))+ 
  geom_boxplot()+ ylab("Chloride mmol/L")+ xlab(" ")+theme(axis.text.x = element_text(size=10))+
  scale_fill_manual(values=c( "#F8981D", "#3588BC", "#E51937", "#FFD204"))


box2 <- ggplot(data_first_post, aes(x = genoRisk_biggroup_2, y =Na_avg, fill = genoRisk_biggroup ))+ 
  geom_boxplot()+ ylab("Sodium mmol/L")+ xlab(" ")+
  scale_fill_manual(values=c( "#F8981D", "#3588BC", "#E51937", "#FFD204"))

box3 <- ggplot(data_first_post, aes(x = genoRisk_biggroup_2, y =ratio_avg_2, fill = genoRisk_biggroup ))+ 
  geom_boxplot()+ ylab("Ratio")+ xlab(" ")+
  scale_fill_manual(values=c( "#F8981D", "#3588BC", "#E51937", "#FFD204"))




library(gridExtra)
extract_legend <- function(my_ggp) {
  step1 <- ggplot_gtable(ggplot_build(my_ggp))
  step2 <- which(sapply(step1$grobs, function(x) x$name) == "guide-box")
  step3 <- step1$grobs[[step2]]
  return(step3)
}



shared_legend <- extract_legend(box0)
grid.arrange(arrangeGrob(box1+ theme(legend.position="none"),
                         box2+ theme(legend.position="none"),
                         box3+ theme(legend.position="none")), widths=c(4), ncol = 1)








data_more <- subset(data_1, data_1$PatientID %in%data_atleast2[data_atleast2$n>=2,]$PatientID )
data_more$Cl_avg <- ifelse(is.na(data_more$Cl), (data_more$Cl_Left + data_more$Cl_Right)/2, data_more$Cl)

data_more$Na_avg <- ifelse(is.na(data_more$Na), (data_more$Na_Left + data_more$Na_Right)/2, data_more$Na)


cl <- data_more %>% group_by(PatientID) %>% summarize(mean(dist(Cl_avg)))
na <- data_more %>% group_by(PatientID) %>% summarize(mean(dist(Na_avg)))


cl1 <- merge(cl, data_first_post[,c("PatientID", "genoRisk_biggroup")], by = "PatientID", all.x = T)

tab6 <- tableby(genoRisk_biggroup ~ `mean(dist(Cl_avg))`, cl1)


na1 <- merge(na, data_first_post[,c("PatientID", "genoRisk_biggroup")], by = "PatientID", all.x = T)

tab6 <- tableby(genoRisk_biggroup ~ `mean(dist(Na_avg))`, na1)



#how many had both: 
# 
# data_first <- data_1 %>% group_by(PatientID, Method) %>% count()
# data_first1 <- data_first %>% group_by(PatientID) %>% count()







#by arm

#absolute difference between arms

data_first$Cl_diff <- abs(data_first$Cl_Left - data_first$Cl_Right)

data_first$Na_diff <- abs(data_first$Na_Left - data_first$Na_Right)

data_first$Cl_avg <- ifelse(is.na(data_first$Cl), (data_first$Cl_Left + data_first$Cl_Right)/2, data_first$Cl)

data_first$Na_avg <- ifelse(is.na(data_first$Na), (data_first$Na_Left + data_first$Na_Right)/2, data_first$Na)


#number overall who are in the high, low, unknonw, non-cf
#median age
#was the difference between arms different in the genotypes 
#less than 30, 30-59, or 60 and above 
#what is the variability within those levels for the kids
#people that dont have cf, there is mroe variability in their sweet chloride 
#between occacian
#By method, genotype, or sweet level 



mycontrols <- tableby.control(numeric.stats=c("meansd", "medianrange", "medianq1q3"))

data_first$genotype_MM <- ifelse(data_first$genotype == "", "Unknown", data_first$genotype)

data_first$cl_group <- ifelse(data_first$Cl_avg < 30, "<30", 
                              ifelse(data_first$Cl_avg >= 30 & data_first$Cl_avg < 60, "30-60", ">60"))

data_first$genoRisk_biggroup <- ifelse(data_first$cf_status == "CRMS", "CRMS", 
                                        data_first$genotype )
# %>% 


tab_arm <- tableby(cl_group~genotype_MM + Method + Cl + Cl_avg  + Cl_Left + Cl_Right + Cl_diff + 
                     Na + Na_avg + Na_Left + Na_Right + Na_diff,
                   data_first[data_first$arm == "both arms",],control=mycontrols)



tab_arm <- tableby(~genotype_MM + Method + Cl + Cl_avg  + Cl_Left + Cl_Right + Cl_diff + 
                     Na + Na_avg + Na_Left + Na_Right + Na_diff,
                   data_first[data_first$arm == "both arms",],control=mycontrols)






t.test(data_first[data_first$arm == "both arms",]$Cl_diff , mu = 0)
t.test(data_first[data_first$arm == "both arms",]$Na_diff , mu = 0)




tab_arm <- tableby(Method~genotype + genoRisk + Cl + Cl_avg  + Cl_Left + Cl_Right + Cl_diff + 
                     Na + Na_avg + Na_Left + Na_Right + Na_diff,
                   data_first3[data_first3$PatientID %in% data_atleast2[data_atleast2$n>=2,]$PatientID,] ,control=mycontrols)

tab_arm <- tableby(~genotype + genoRisk + Cl + Cl_avg  + Cl_Left + Cl_Right + Cl_diff + 
                     Na + Na_avg + Na_Left + Na_Right + Na_diff,
                   data_first3[data_first3$PatientID %in% data_atleast2[data_atleast2$n>=2,]$PatientID,] ,control=mycontrols)


data_1$Cl_diff <- abs(data_1$Cl_Left - data_1$Cl_Right)

data_1$Na_diff <- abs(data_1$Na_Left - data_1$Na_Right)

data_1$Cl_avg <- ifelse(is.na(data_1$Cl), (data_1$Cl_Left+data_1$Cl_Right)/2, data_1$Cl)

data_1$Na_avg <- ifelse(is.na(data_1$Na), (data_1$Na_Left + data_1$Na_Right)/2, data_1$Na)

data_1$genoRisk_MM <- ifelse(data_1$genoRisk == "", "Unknown", data_1$genoRisk)

tab0 <- tableby(genoRisk_MM ~ Cl + Cl_Left + Cl_Right + Cl_avg, data=data_1)



data_1$ratio_avg <- data_1$Na_avg/data_1$Cl_avg
data_1$ratio_Left <- data_1$Na_Left/data_1$Cl_Left
data_1$ratio_Right <- data_1$Na_Right/data_1$Cl_Right
data_1$Cl_diff <- abs(data_1$Cl_Left - data_1$Cl_Right)


data_summaryperperson <- data_1 %>% group_by(PatientID) %>% summarise(Cl_mean = mean(Cl, na.rm=T),
                                                                      Cl_avg_mean = mean(Cl_avg, na.rm=T),
                                                                      Cl_Left_mean = mean(Cl_Left, na.rm=T),
                                                                      Cl_Right_mean = mean(Cl_Right, na.rm=T), 
                                                                      Cl_diff_mean = mean(Cl_diff, na.rm=T),  
                                                                      Na_mean = mean(Na, na.rm=T), 
                                                                      Na_avg_mean = mean(Na_avg, na.rm=T),
                                                                      Na_Left_mean = mean(Na_Left, na.rm=T), 
                                                                      Na_Right_mean = mean(Na_Right, na.rm=T),
                                                                      Na_diff_mean = mean(Na_diff, na.rm=T),
                                                                      Diff_cl = mean(Cl - lag(Cl), na.rm=T),
                                                                      Diff_Cl_avg = mean(Cl_avg - lag(Cl_avg), na.rm=T),
                                                                      Diff_Cl_Left= mean(Cl_Left - lag(Cl_Left), na.rm=T),
                                                                      Diff_Cl_Right = mean(Cl_Right - lag(Cl_Right), na.rm=T),
                                                                      Diff_Na = mean(Na - lag(Na), na.rm=T),
                                                                      Diff_Na_avg = mean(Na_avg - lag(Na_avg), na.rm=T),
                                                                      Diff_Na_Left= mean(Na_Left - lag(Na_Left), na.rm=T),
                                                                      Diff_Na_Right = mean(Na_Right - lag(Na_Right), na.rm=T))





data_summaryperperson$ratio_avg <-  data_summaryperperson$Na_avg_mean/data_summaryperperson$Cl_avg_mean


data_rep <- merge(data_first3[data_first3$PatientID %in% data_atleast2[data_atleast2$n>=2,]$PatientID,] , data_summaryperperson , all.x=T)

tab_arm <- tableby(~Method+ genotype + genoRisk +Cl_mean + Cl_avg_mean + Cl_Left_mean + Cl_Right_mean + Cl_diff_mean + Na_mean + 
                   Na_avg_mean + Na_Left_mean + Na_Right_mean + Na_diff_mean +
                     Diff_cl + Diff_Cl_avg + Diff_Cl_Left + Diff_Cl_Right + Diff_Na + Diff_Na_avg + Diff_Na_Left + Diff_Na_Right,
                   data_rep ,control=mycontrols)

data_rep$genoRisk_MM <- ifelse(data_rep$genoRisk == "", "Unkown", data_rep$genoRisk)

tab_arm <- tableby(Method~ genoRisk_MM + Cl_mean + Cl_avg_mean + Cl_Left_mean + Cl_Right_mean + Cl_diff_mean + Na_mean + 
                     Na_avg_mean + Na_Left_mean + Na_Right_mean + Na_diff_mean +
                     Diff_cl + Diff_Cl_avg + Diff_Cl_Left + Diff_Cl_Right + Diff_Na + Diff_Na_avg + Diff_Na_Left + Diff_Na_Right,
                   data_rep ,control=mycontrols)

tab_arm <- tableby(genoRisk_MM~ Method + Cl_mean + Cl_avg_mean + Cl_Left_mean + Cl_Right_mean + Cl_diff_mean + Na_mean + 
                     Na_avg_mean + Na_Left_mean + Na_Right_mean + Na_diff_mean +
                     Diff_cl + Diff_Cl_avg + Diff_Cl_Left + Diff_Cl_Right + Diff_Na + Diff_Na_avg + Diff_Na_Left + Diff_Na_Right,
                   data_rep ,control=mycontrols)





data_first <- data_1 %>% group_by(PatientID) %>% arrange(Age.at.Test.in.Weeks) %>%  filter(row_number()==1)
data_first$genotype <- ifelse(data_first$cf_status == "Non-CF", "Not CF", 
                              ifelse(is.na(data_first$genoRisk), "Unknown", data_first$genoRisk))

data_first$genotype_MM <- ifelse(data_first$genotype == "", "Unknown", data_first$genotype)



tab3 <- tableby(genotype_MM ~ Cl_avg + Na_avg + ratio_avg, data=data_first[data_first$genotype_MM %in% c("High", "Low"),],control=mycontrols)

data_first$genoRisk_biggroup <- ifelse(data_first$cf_status == "CRMS", "CRMS", 
                                       data_first$genotype )
data_first_post <- subset(data_first, data_first$genoRisk_biggroup != "")



tab3 <- tableby(genoRisk_biggroup~ Cl_avg + Na_avg + ratio_avg, data=data_first_post,control=mycontrols)


# View(data_first[,c("PatientID","Cl_avg", "Na_avg", "ratio_avg")])




data_first$Diagnosis_MM <- ifelse(data_first$Diagnosis %in% c("Non-CF", "Normal"), "Non-CF", "CF")

tab3 <- tableby(Diagnosis_MM ~ Cl_avg + Na_avg + ratio_avg, data=data_first,control=mycontrols)


#table 3
data_onmod <- subset(data_0, data_0$PatientID %in% data_0[!is.na(data_0$Modulator),]$PatientID)

data_onmod1 <- data_onmod %>% group_by(PatientID) %>% filter(before_after == "After") %>%  filter(row_number()==1)
summary(data_onmod1$Age.at.Test.in.Years)
data_onmod1 <- data_onmod %>% group_by(PatientID) %>% count()

data_onmod1 <- data_onmod %>% group_by(PatientID) %>% summarise(diff = max(Age.at.Test.in.Years)- min(Age.at.Test.in.Years))


  
tab3 <- tableby(~Sex + Age.at.Test.in.Years +  genotype + 
                  Diagnosis + arm, data=data_onmod ,control=mycontrols)



data_summaryperperson <- data_first %>% group_by(PatientID) %>% summarise(Cl_mean = mean(Cl, na.rm=T),
                                                                      Cl_avg_mean = mean(Cl_avg, na.rm=T),
                                                                      Cl_Left_mean = mean(Cl_Left, na.rm=T),
                                                                      Cl_Right_mean = mean(Cl_Right, na.rm=T), 
                                                                      Cl_diff_mean = mean(Cl_diff, na.rm=T),  
                                                                      Na_mean = mean(Na, na.rm=T), 
                                                                      Na_avg_mean = mean(Na_avg, na.rm=T),
                                                                      Na_Left_mean = mean(Na_Left, na.rm=T), 
                                                                      Na_Right_mean = mean(Na_Right, na.rm=T),
                                                                      Na_diff_mean = mean(Na_diff, na.rm=T),
                                                                      Diff_cl = mean(Cl - lag(Cl), na.rm=T),
                                                                      Diff_Cl_avg = mean(Cl_avg - lag(Cl_avg), na.rm=T),
                                                                      Diff_Cl_Left= mean(Cl_Left - lag(Cl_Left), na.rm=T),
                                                                      Diff_Cl_Right = mean(Cl_Right - lag(Cl_Right), na.rm=T),
                                                                      Diff_Na = mean(Na - lag(Na), na.rm=T),
                                                                      Diff_Na_avg = mean(Na_avg - lag(Na_avg), na.rm=T),
                                                                      Diff_Na_Left= mean(Na_Left - lag(Na_Left), na.rm=T),
                                                                      Diff_Na_Right = mean(Na_Right - lag(Na_Right), na.rm=T))



tab4 <- tableby(genotype_MM~  Cl_avg + Na_avg + ratio_avg + Cl_diff + Na_diff 
                  ,data_first[data_first$Method == "Macroduct", ])

                

tab4 <- tableby(genoRisk_biggroup~Cl_diff + Na_diff 
                ,data_first_post)



data_first1 <- subset(data_first, data_first$PatientID %in% data_rep$PatientID)

tab4 <- tableby(genotype_MM~  Cl_avg + Na_avg + ratio_avg + Cl_diff + Na_diff 
                ,data_first1[data_first1$Method == "Macroduct", ])

data_onmod

tab5 <- tableby(Modulator~ Cl_avg + Na_avg + ratio_avg + Cl_diff + Na_diff , data_onmod[data_onmod$before_after == "After",])







#data_first_post


data_first_post1 <- subset(data_first_post, data_first_post$Diagnosis == "Non-CF")

data_first_post2 <- subset(data_first_post1, c(data_first_post1$Cl >= 60 |  data_first_post1$Cl_avg >= 60 |
                             data_first_post1$Cl_Left >= 60 | data_first_post1$Cl_Right >= 60) & 
                             c(data_first_post1$Na >= 50 |  data_first_post1$Na_avg >= 50 |
                             data_first_post1$Na_Left >= 50 | data_first_post1$Na_Right >= 50))
                             








#number overall who are in the high, low, unknonw, non-cf
#median age
#was the difference between arms different in the genotypes 
#less than 30, 30-59, or 60 and above 
  #what is the variability within those levels for the kids
#people that dont have cf, there is mroe variability in their sweet chloride 
#between occacian
#By method, genotype, or sweet level 



# 
# 
# # data_Mac <- subset(data_1, Method == "Macroduct")
# # data_GC <- subset(data_1, Method == "Gibson-Cooke")
# # data_GC1 <- subset(data_GC, is.na(Amount) | as.numeric(Amount)>=75)
# 
# # data <- rbind(data_Mac, data_GC1)
# # data <- arrange(data, data$PatientID, data$Age_at_Test_in_Weeks)
# 
# 
# #if test is done using kook then  amount needs to be 75 orhigher, if other then teh amount needs to be 15 or higher
# #for left or right then you need to get rid of that - it should be okay but just double check!
# 
# #is this overall amount of individual amount?
# #there are 46 under 75 (is this correct?) but the Macroduct is okay! 
# #there are 14 for left and 110 for right
# 
# #get rid of any value collected from that sweat test
# 
# 
# 
# data_temp <- data %>% group_by(PatientID) %>% arrange(Age.at.Test.in.Weeks) %>%  mutate(Diff = Age.at.Test.in.Weeks - lag(Age.at.Test.in.Weeks))
# 
# summary(data$Diff)
# 
# 
# 
# 
# #first visit 
# data_first <- data%>% group_by(PatientID) %>% arrange(Age.at.Test.in.Weeks) %>% filter(row_number()==1)
# 
# data$Age.at.Test.in.Weeks
# 
# tab1 <- tableby(cf_status~Sex + Race_Asian + Race_BlackAfroAmerican + Race_NativeAmerican + 
# Race_NativeHawaiian + Race_White + Race_MoreThanOneRace + Race_Other + Race_NotReported + Hispanic.Latinx, data=data_first)
# 
# 
# 
# tab1 <- tableby(~Diagnosis + Sex + Race+Hispanic_Latinx + Age.at.Test.in.Weeks +Age_at_Test_in_Years + 
#                   Method +Site + Amount + Na + K + Cl + Amount_Left + Amount_Right + Na_Left + Na_Right + 
#                   K_Left +K_Right +Cl_Left+Cl_Right+ class1 + severity1 + class2 + severity2 + genoRisk  , data_first)
# 
# 
# 
# 
# #keeping only first visit
# 
# data_first <- data %>% group_by(PatientID) %>%  filter(row_number()==6)
# dim(data_first)
# #6499 
# #431
# #61
# #25
# #7
# 
# data_first <- data %>% group_by(PatientID) %>%  count()
# 
# tab2 <- tableby(~ratio +ratio_Left+ratio_Right, data=data_first)
# tab1 <- tableby( Method~Amount_Left + Amount_Right, data)
# 
# 
# 
# 
# 
# #####################
# #data for Elin
# 
# temp1 <- data_1[data_1$Method == "Gibson-Cooke" & c(as.numeric(data_1$Amount)<75 |as.numeric(data_1$Amount_Left)<75 |  as.numeric(data_1$Amount_Right)<75),]
# temp2 <- subset(temp1, !is.na(PatientID))
# write.csv(temp2, "Gibson-Cooke Under 75.csv")
# 
# 
# temp1 <- data_1[data_1$cf_status== "CF" & c(as.numeric(data_1$Cl)<60 | as.numeric(data_1$Cl_Left)<60 |  as.numeric(data_1$Cl_Right)<60),]
# temp2 <- subset(temp1, !is.na(PatientID))
# write.csv(temp2, "CF with CL under 60.csv")
