# Load Hmisc library
library(Hmisc)
# Set WD
switch(Sys.info()[["sysname"]],
  Windows = {
    home_dir <- "C:/Users/tim/OneDrive-TheUniversityofColoradoDenver/Vigers/CF"
  },
  Darwin = {
    home_dir <- "/Users/tim/Library/CloudStorage/OneDrive-TheUniversityofColoradoDenver/Vigers/CF"
  }
)
# Read Data
data <- read.csv(paste0(home_dir, "/", "Jordana Hoppe/Home Collection/Data_Raw/HomeCollection220661_DATA_2025-08-06_1441.csv"))
# Setting Labels
label(data$subject_id) <- "Subject ID"
label(data$pt_initials) <- "Patient Initials"
label(data$pt_dob) <- "Patient DOB"
label(data$pt_sex) <- "Sex"
label(data$race___1) <- "Race (choice=American Indian or Alaska Native)"
label(data$race___2) <- "Race (choice=Asian)"
label(data$race___3) <- "Race (choice=Black or African-American)"
label(data$race___4) <- "Race (choice=Native Hawaiian or Other Pacific Islander)"
label(data$race___5) <- "Race (choice=White)"
label(data$race___6) <- "Race (choice=More than one race)"
label(data$race___7) <- "Race (choice=Unknown or not reported)"
label(data$ethnicity) <- "Hispanic or Latinx"
label(data$mutation1) <- "Mutation 1"
label(data$mutation1_spec) <- "Specify mutation 1, if Other"
label(data$tract_type1) <- "Tract type"
label(data$mutation2) <- "Mutation 2"
label(data$mutation2_spec) <- "Specify mutation 2, if Other"
label(data$tract_type2) <- "Tract type "
label(data$cftr_modulator) <- "CFTR Modulator Status"
label(data$cx_past_results___1) <- "Any positive culture results in the past 12 months? (choice=Methicillin sensitive Staph aureus)"
label(data$cx_past_results___2) <- "Any positive culture results in the past 12 months? (choice=Methicillin resistant Staph aureus)"
label(data$cx_past_results___16) <- "Any positive culture results in the past 12 months? (choice=A. xylosoxidans)"
label(data$cx_past_results___17) <- "Any positive culture results in the past 12 months? (choice=Achromobacter not xylosoxidans)"
label(data$cx_past_results___10) <- "Any positive culture results in the past 12 months? (choice=Acinetobacter)"
label(data$cx_past_results___3) <- "Any positive culture results in the past 12 months? (choice=H. influenzae)"
label(data$cx_past_results___4) <- "Any positive culture results in the past 12 months? (choice=P. aeruginosa)"
label(data$cx_past_results___5) <- "Any positive culture results in the past 12 months? (choice=P. aeruginosa (mucoid))"
label(data$cx_past_results___6) <- "Any positive culture results in the past 12 months? (choice=Pseudomonas species, not aeruginosa)"
label(data$cx_past_results___7) <- "Any positive culture results in the past 12 months? (choice=B. cepacia complex)"
label(data$cx_past_results___8) <- "Any positive culture results in the past 12 months? (choice=Stenotrophomonas)"
label(data$cx_past_results___9) <- "Any positive culture results in the past 12 months? (choice=Aspergillus)"
label(data$cx_past_results___12) <- "Any positive culture results in the past 12 months? (choice=Penicillium species)"
label(data$cx_past_results___13) <- "Any positive culture results in the past 12 months? (choice=Sceosporium species)"
label(data$cx_past_results___14) <- "Any positive culture results in the past 12 months? (choice=M. avium complex)"
label(data$cx_past_results___15) <- "Any positive culture results in the past 12 months? (choice=M. abscessus)"
label(data$cx_past_results___11) <- "Any positive culture results in the past 12 months? (choice=Other)"
label(data$rural_location) <- "Rural location?"
label(data$demographics_complete) <- "Complete?"
label(data$clinic_date) <- "Date of clinic culture collection"
label(data$clinic_cx_source) <- "Source of culture"
label(data$clinic_negative_cx) <- "Negative culture?"
label(data$clinic_cx_results___1) <- "If culture was positive, select all organisms isolated: (choice=Methicillin sensitive Staph aureus)"
label(data$clinic_cx_results___2) <- "If culture was positive, select all organisms isolated: (choice=Methicillin resistant Staph aureus)"
label(data$clinic_cx_results___16) <- "If culture was positive, select all organisms isolated: (choice=A. xylosoxidans)"
label(data$clinic_cx_results___17) <- "If culture was positive, select all organisms isolated: (choice=Achromobacter not xylosoxidans)"
label(data$clinic_cx_results___10) <- "If culture was positive, select all organisms isolated: (choice=Acinetobacter)"
label(data$clinic_cx_results___3) <- "If culture was positive, select all organisms isolated: (choice=H. influenzae)"
label(data$clinic_cx_results___4) <- "If culture was positive, select all organisms isolated: (choice=P. aeruginosa)"
label(data$clinic_cx_results___5) <- "If culture was positive, select all organisms isolated: (choice=P. aeruginosa (mucoid))"
label(data$clinic_cx_results___6) <- "If culture was positive, select all organisms isolated: (choice=Pseudomonas species, not aeruginosa)"
label(data$clinic_cx_results___7) <- "If culture was positive, select all organisms isolated: (choice=B. cepacia complex)"
label(data$clinic_cx_results___8) <- "If culture was positive, select all organisms isolated: (choice=Stenotrophomonas)"
label(data$clinic_cx_results___9) <- "If culture was positive, select all organisms isolated: (choice=Aspergillus)"
label(data$clinic_cx_results___12) <- "If culture was positive, select all organisms isolated: (choice=Penicillium species)"
label(data$clinic_cx_results___13) <- "If culture was positive, select all organisms isolated: (choice=Sceosporium species)"
label(data$clinic_cx_results___14) <- "If culture was positive, select all organisms isolated: (choice=M. avium complex)"
label(data$clinic_cx_results___15) <- "If culture was positive, select all organisms isolated: (choice=M. abscessus)"
label(data$clinic_cx_results___11) <- "If culture was positive, select all organisms isolated: (choice=Other)"
label(data$clinic_other_spec) <- "Specify other bacteria or fungi"
label(data$clinic_burk_sp) <- "Burkholderia species"
label(data$clinic_burk_sp_other) <- "Specify Burkholderia species, if Other"
label(data$pfts_done) <- "PFTs done?"
label(data$fvc) <- "FVC absolute"
label(data$fvc_pp) <- "FVC % predicted"
label(data$fev1) <- "FEV1 absolute"
label(data$fev1_pp) <- "FEV1 % predicted"
label(data$fev1_fvc) <- "FEV1/FVC"
label(data$fef2575) <- "FEF 25-75 absolute"
label(data$fef2575_pp) <- "FEF 25-75 % predicted"
label(data$clinic_visit_complete) <- "Complete?"
label(data$research_cx) <- "Was research culture collected?"
label(data$res_cx_date) <- "Date of research culture collection"
label(data$res_cx_source) <- "Source of research culture"
label(data$res_cx_recvd) <- "Was research culture received by the lab?"
label(data$res_negative_cx) <- "Was research culture negative?"
label(data$res_cx_results___1) <- "If culture was positive, select all organisms isolated: (choice=Methicillin sensitive Staph aureus)"
label(data$res_cx_results___2) <- "If culture was positive, select all organisms isolated: (choice=Methicillin resistant Staph aureus)"
label(data$res_cx_results___16) <- "If culture was positive, select all organisms isolated: (choice=A. xylosoxidans)"
label(data$res_cx_results___17) <- "If culture was positive, select all organisms isolated: (choice=Achromobacter not xylosoxidans)"
label(data$res_cx_results___10) <- "If culture was positive, select all organisms isolated: (choice=Acinetobacter)"
label(data$res_cx_results___3) <- "If culture was positive, select all organisms isolated: (choice=H. influenzae)"
label(data$res_cx_results___4) <- "If culture was positive, select all organisms isolated: (choice=P. aeruginosa)"
label(data$res_cx_results___5) <- "If culture was positive, select all organisms isolated: (choice=P. aeruginosa (mucoid))"
label(data$res_cx_results___6) <- "If culture was positive, select all organisms isolated: (choice=Pseudomonas species, not aeruginosa)"
label(data$res_cx_results___7) <- "If culture was positive, select all organisms isolated: (choice=B. cepacia complex)"
label(data$res_cx_results___8) <- "If culture was positive, select all organisms isolated: (choice=Stenotrophomonas)"
label(data$res_cx_results___9) <- "If culture was positive, select all organisms isolated: (choice=Aspergillus)"
label(data$res_cx_results___12) <- "If culture was positive, select all organisms isolated: (choice=Penicillium species)"
label(data$res_cx_results___13) <- "If culture was positive, select all organisms isolated: (choice=Sceosporium species)"
label(data$res_cx_results___14) <- "If culture was positive, select all organisms isolated: (choice=M. avium complex)"
label(data$res_cx_results___15) <- "If culture was positive, select all organisms isolated: (choice=M. abscessus)"
label(data$res_cx_results___11) <- "If culture was positive, select all organisms isolated: (choice=Other)"
label(data$res_other_spec) <- "Specify other bacteria or fungi"
label(data$res_burk_sp) <- "Burkholderia species"
label(data$res_burk_sp_other) <- "Specify Burkholderia species, if Other"
label(data$research_culture_complete) <- "Complete?"
label(data$home_cx) <- "Was home culture collected?"
label(data$home_cx_date) <- "Date of home culture collection"
label(data$home_cx_date_received) <- "Date Home Culture Received"
label(data$home_cx_source) <- "Source of home culture"
label(data$home_cx_recvd) <- "Was home culture received by the lab?"
label(data$home_negative_cx) <- "Negative culture?"
label(data$home_cx_results___1) <- "If culture was positive, select all organisms isolated: (choice=Methicillin sensitive Staph aureus)"
label(data$home_cx_results___2) <- "If culture was positive, select all organisms isolated: (choice=Methicillin resistant Staph aureus)"
label(data$home_cx_results___16) <- "If culture was positive, select all organisms isolated: (choice=A. xylosoxidans)"
label(data$home_cx_results___17) <- "If culture was positive, select all organisms isolated: (choice=Achromobacter not xylosoxidans)"
label(data$home_cx_results___10) <- "If culture was positive, select all organisms isolated: (choice=Acinetobacter)"
label(data$home_cx_results___3) <- "If culture was positive, select all organisms isolated: (choice=H. influenzae)"
label(data$home_cx_results___4) <- "If culture was positive, select all organisms isolated: (choice=P. aeruginosa)"
label(data$home_cx_results___5) <- "If culture was positive, select all organisms isolated: (choice=P. aeruginosa (mucoid))"
label(data$home_cx_results___6) <- "If culture was positive, select all organisms isolated: (choice=Pseudomonas species, not aeruginosa)"
label(data$home_cx_results___7) <- "If culture was positive, select all organisms isolated: (choice=B. cepacia complex)"
label(data$home_cx_results___8) <- "If culture was positive, select all organisms isolated: (choice=Stenotrophomonas)"
label(data$home_cx_results___9) <- "If culture was positive, select all organisms isolated: (choice=Aspergillus)"
label(data$home_cx_results___12) <- "If culture was positive, select all organisms isolated: (choice=Penicillium species)"
label(data$home_cx_results___13) <- "If culture was positive, select all organisms isolated: (choice=Sceosporium species)"
label(data$home_cx_results___14) <- "If culture was positive, select all organisms isolated: (choice=M. avium complex)"
label(data$home_cx_results___15) <- "If culture was positive, select all organisms isolated: (choice=M. abscessus)"
label(data$home_cx_results___11) <- "If culture was positive, select all organisms isolated: (choice=Other)"
label(data$home_other_spec) <- "Specify other bacteria or fungi"
label(data$home_burk_sp) <- "Burkholderia species"
label(data$home_burk_sp_other) <- "Specify Burkholderia species, if Other"
label(data$survey_done) <- "Did parent complete REDCap survey?"
label(data$participant_id) <- "Participant ID in survey"
label(data$telehealth_done) <- "Was telehealth visit done?"
label(data$home_culture_complete) <- "Complete?"
# Setting Units


# Setting Factors(will create new variable for factors)
mapping_pt_sex <- c(
  "1" = "Male",
  "2" = "Female"
)
data$pt_sex.factor <- factor(data$pt_sex, levels = names(mapping_pt_sex), labels = mapping_pt_sex)

mapping_race___1 <- c(
  "0" = "Unchecked",
  "1" = "Checked"
)
data$race___1.factor <- factor(data$race___1, levels = names(mapping_race___1), labels = mapping_race___1)

mapping_race___2 <- c(
  "0" = "Unchecked",
  "1" = "Checked"
)
data$race___2.factor <- factor(data$race___2, levels = names(mapping_race___2), labels = mapping_race___2)

mapping_race___3 <- c(
  "0" = "Unchecked",
  "1" = "Checked"
)
data$race___3.factor <- factor(data$race___3, levels = names(mapping_race___3), labels = mapping_race___3)

mapping_race___4 <- c(
  "0" = "Unchecked",
  "1" = "Checked"
)
data$race___4.factor <- factor(data$race___4, levels = names(mapping_race___4), labels = mapping_race___4)

mapping_race___5 <- c(
  "0" = "Unchecked",
  "1" = "Checked"
)
data$race___5.factor <- factor(data$race___5, levels = names(mapping_race___5), labels = mapping_race___5)

mapping_race___6 <- c(
  "0" = "Unchecked",
  "1" = "Checked"
)
data$race___6.factor <- factor(data$race___6, levels = names(mapping_race___6), labels = mapping_race___6)

mapping_race___7 <- c(
  "0" = "Unchecked",
  "1" = "Checked"
)
data$race___7.factor <- factor(data$race___7, levels = names(mapping_race___7), labels = mapping_race___7)

mapping_ethnicity <- c(
  "1" = "True",
  "0" = "False"
)
data$ethnicity.factor <- factor(data$ethnicity, levels = names(mapping_ethnicity), labels = mapping_ethnicity)

mapping_mutation1 <- c(
  "1" = "F508del",
  "2" = "1154InsTC",
  "3" = "1717-1G->A",
  "4" = "1898+1G->A",
  "5" = "2143delT",
  "6" = "2184insA",
  "7" = "2789+5G->A",
  "8" = "3120+1G->A",
  "9" = "3659delC",
  "10" = "3849+10CT",
  "11" = "3905insT",
  "12" = "394delTT",
  "13" = "621+1G->T",
  "14" = "A455E",
  "15" = "E60X",
  "16" = "G542X",
  "17" = "G551D",
  "18" = "I507",
  "19" = "M1101K",
  "20" = "N1303K",
  "21" = "Q493X",
  "22" = "R1162X",
  "23" = "R117C",
  "24" = "R117H",
  "25" = "R347P",
  "26" = "R553X",
  "27" = "R560T",
  "28" = "W1282X",
  "29" = "Other",
  "30" = "Unknown"
)
data$mutation1.factor <- factor(data$mutation1, levels = names(mapping_mutation1), labels = mapping_mutation1)

mapping_tract_type1 <- c(
  "1" = "5T",
  "2" = "7T",
  "3" = "7T/9T",
  "4" = "9T",
  "5" = "Not 5T",
  "6" = "Not reported/Unknown"
)
data$tract_type1.factor <- factor(data$tract_type1, levels = names(mapping_tract_type1), labels = mapping_tract_type1)

mapping_mutation2 <- c(
  "1" = "F508del",
  "2" = "1154InsTC",
  "3" = "1717-1G->A",
  "4" = "1898+1G->A",
  "5" = "2143delT",
  "6" = "2184insA",
  "7" = "2789+5G->A",
  "8" = "3120+1G->A",
  "9" = "3659delC",
  "10" = "3849+10CT",
  "11" = "3905insT",
  "12" = "394delTT",
  "13" = "621+1G->T",
  "14" = "A455E",
  "15" = "E60X",
  "16" = "G542X",
  "17" = "G551D",
  "18" = "I507",
  "19" = "M1101K",
  "20" = "N1303K",
  "21" = "Q493X",
  "22" = "R1162X",
  "23" = "R117C",
  "24" = "R117H",
  "25" = "R347P",
  "26" = "R553X",
  "27" = "R560T",
  "28" = "W1282X",
  "29" = "Other",
  "30" = "Unknown"
)
data$mutation2.factor <- factor(data$mutation2, levels = names(mapping_mutation2), labels = mapping_mutation2)

mapping_tract_type2 <- c(
  "1" = "5T",
  "2" = "7T",
  "3" = "7T/9T",
  "4" = "9T",
  "5" = "Not 5T",
  "6" = "Not reported/Unknown"
)
data$tract_type2.factor <- factor(data$tract_type2, levels = names(mapping_tract_type2), labels = mapping_tract_type2)

mapping_cftr_modulator <- c(
  "1" = "Elexacaftor/Texacaftor/Ivacaftor",
  "2" = "Tezacaftor/Ivacaftor",
  "3" = "Lumacaftor/Ivacaftor",
  "4" = "Ivacaftor",
  "5" = "Other",
  "6" = "None"
)
data$cftr_modulator.factor <- factor(data$cftr_modulator, levels = names(mapping_cftr_modulator), labels = mapping_cftr_modulator)

mapping_cx_past_results___1 <- c(
  "0" = "Unchecked",
  "1" = "Checked"
)
data$cx_past_results___1.factor <- factor(data$cx_past_results___1, levels = names(mapping_cx_past_results___1), labels = mapping_cx_past_results___1)

mapping_cx_past_results___2 <- c(
  "0" = "Unchecked",
  "1" = "Checked"
)
data$cx_past_results___2.factor <- factor(data$cx_past_results___2, levels = names(mapping_cx_past_results___2), labels = mapping_cx_past_results___2)

mapping_cx_past_results___16 <- c(
  "0" = "Unchecked",
  "1" = "Checked"
)
data$cx_past_results___16.factor <- factor(data$cx_past_results___16, levels = names(mapping_cx_past_results___16), labels = mapping_cx_past_results___16)

mapping_cx_past_results___17 <- c(
  "0" = "Unchecked",
  "1" = "Checked"
)
data$cx_past_results___17.factor <- factor(data$cx_past_results___17, levels = names(mapping_cx_past_results___17), labels = mapping_cx_past_results___17)

mapping_cx_past_results___10 <- c(
  "0" = "Unchecked",
  "1" = "Checked"
)
data$cx_past_results___10.factor <- factor(data$cx_past_results___10, levels = names(mapping_cx_past_results___10), labels = mapping_cx_past_results___10)

mapping_cx_past_results___3 <- c(
  "0" = "Unchecked",
  "1" = "Checked"
)
data$cx_past_results___3.factor <- factor(data$cx_past_results___3, levels = names(mapping_cx_past_results___3), labels = mapping_cx_past_results___3)

mapping_cx_past_results___4 <- c(
  "0" = "Unchecked",
  "1" = "Checked"
)
data$cx_past_results___4.factor <- factor(data$cx_past_results___4, levels = names(mapping_cx_past_results___4), labels = mapping_cx_past_results___4)

mapping_cx_past_results___5 <- c(
  "0" = "Unchecked",
  "1" = "Checked"
)
data$cx_past_results___5.factor <- factor(data$cx_past_results___5, levels = names(mapping_cx_past_results___5), labels = mapping_cx_past_results___5)

mapping_cx_past_results___6 <- c(
  "0" = "Unchecked",
  "1" = "Checked"
)
data$cx_past_results___6.factor <- factor(data$cx_past_results___6, levels = names(mapping_cx_past_results___6), labels = mapping_cx_past_results___6)

mapping_cx_past_results___7 <- c(
  "0" = "Unchecked",
  "1" = "Checked"
)
data$cx_past_results___7.factor <- factor(data$cx_past_results___7, levels = names(mapping_cx_past_results___7), labels = mapping_cx_past_results___7)

mapping_cx_past_results___8 <- c(
  "0" = "Unchecked",
  "1" = "Checked"
)
data$cx_past_results___8.factor <- factor(data$cx_past_results___8, levels = names(mapping_cx_past_results___8), labels = mapping_cx_past_results___8)

mapping_cx_past_results___9 <- c(
  "0" = "Unchecked",
  "1" = "Checked"
)
data$cx_past_results___9.factor <- factor(data$cx_past_results___9, levels = names(mapping_cx_past_results___9), labels = mapping_cx_past_results___9)

mapping_cx_past_results___12 <- c(
  "0" = "Unchecked",
  "1" = "Checked"
)
data$cx_past_results___12.factor <- factor(data$cx_past_results___12, levels = names(mapping_cx_past_results___12), labels = mapping_cx_past_results___12)

mapping_cx_past_results___13 <- c(
  "0" = "Unchecked",
  "1" = "Checked"
)
data$cx_past_results___13.factor <- factor(data$cx_past_results___13, levels = names(mapping_cx_past_results___13), labels = mapping_cx_past_results___13)

mapping_cx_past_results___14 <- c(
  "0" = "Unchecked",
  "1" = "Checked"
)
data$cx_past_results___14.factor <- factor(data$cx_past_results___14, levels = names(mapping_cx_past_results___14), labels = mapping_cx_past_results___14)

mapping_cx_past_results___15 <- c(
  "0" = "Unchecked",
  "1" = "Checked"
)
data$cx_past_results___15.factor <- factor(data$cx_past_results___15, levels = names(mapping_cx_past_results___15), labels = mapping_cx_past_results___15)

mapping_cx_past_results___11 <- c(
  "0" = "Unchecked",
  "1" = "Checked"
)
data$cx_past_results___11.factor <- factor(data$cx_past_results___11, levels = names(mapping_cx_past_results___11), labels = mapping_cx_past_results___11)

mapping_rural_location <- c(
  "1" = "Yes",
  "0" = "No"
)
data$rural_location.factor <- factor(data$rural_location, levels = names(mapping_rural_location), labels = mapping_rural_location)

mapping_demographics_complete <- c(
  "0" = "Incomplete",
  "1" = "Unverified",
  "2" = "Complete"
)
data$demographics_complete.factor <- factor(data$demographics_complete, levels = names(mapping_demographics_complete), labels = mapping_demographics_complete)

mapping_clinic_cx_source <- c(
  "1" = "Throat swab",
  "2" = "Expectorated sputum",
  "3" = "Induced sputum"
)
data$clinic_cx_source.factor <- factor(data$clinic_cx_source, levels = names(mapping_clinic_cx_source), labels = mapping_clinic_cx_source)

mapping_clinic_negative_cx <- c(
  "1" = "Yes",
  "0" = "No"
)
data$clinic_negative_cx.factor <- factor(data$clinic_negative_cx, levels = names(mapping_clinic_negative_cx), labels = mapping_clinic_negative_cx)

mapping_clinic_cx_results___1 <- c(
  "0" = "Unchecked",
  "1" = "Checked"
)
data$clinic_cx_results___1.factor <- factor(data$clinic_cx_results___1, levels = names(mapping_clinic_cx_results___1), labels = mapping_clinic_cx_results___1)

mapping_clinic_cx_results___2 <- c(
  "0" = "Unchecked",
  "1" = "Checked"
)
data$clinic_cx_results___2.factor <- factor(data$clinic_cx_results___2, levels = names(mapping_clinic_cx_results___2), labels = mapping_clinic_cx_results___2)

mapping_clinic_cx_results___16 <- c(
  "0" = "Unchecked",
  "1" = "Checked"
)
data$clinic_cx_results___16.factor <- factor(data$clinic_cx_results___16, levels = names(mapping_clinic_cx_results___16), labels = mapping_clinic_cx_results___16)

mapping_clinic_cx_results___17 <- c(
  "0" = "Unchecked",
  "1" = "Checked"
)
data$clinic_cx_results___17.factor <- factor(data$clinic_cx_results___17, levels = names(mapping_clinic_cx_results___17), labels = mapping_clinic_cx_results___17)

mapping_clinic_cx_results___10 <- c(
  "0" = "Unchecked",
  "1" = "Checked"
)
data$clinic_cx_results___10.factor <- factor(data$clinic_cx_results___10, levels = names(mapping_clinic_cx_results___10), labels = mapping_clinic_cx_results___10)

mapping_clinic_cx_results___3 <- c(
  "0" = "Unchecked",
  "1" = "Checked"
)
data$clinic_cx_results___3.factor <- factor(data$clinic_cx_results___3, levels = names(mapping_clinic_cx_results___3), labels = mapping_clinic_cx_results___3)

mapping_clinic_cx_results___4 <- c(
  "0" = "Unchecked",
  "1" = "Checked"
)
data$clinic_cx_results___4.factor <- factor(data$clinic_cx_results___4, levels = names(mapping_clinic_cx_results___4), labels = mapping_clinic_cx_results___4)

mapping_clinic_cx_results___5 <- c(
  "0" = "Unchecked",
  "1" = "Checked"
)
data$clinic_cx_results___5.factor <- factor(data$clinic_cx_results___5, levels = names(mapping_clinic_cx_results___5), labels = mapping_clinic_cx_results___5)

mapping_clinic_cx_results___6 <- c(
  "0" = "Unchecked",
  "1" = "Checked"
)
data$clinic_cx_results___6.factor <- factor(data$clinic_cx_results___6, levels = names(mapping_clinic_cx_results___6), labels = mapping_clinic_cx_results___6)

mapping_clinic_cx_results___7 <- c(
  "0" = "Unchecked",
  "1" = "Checked"
)
data$clinic_cx_results___7.factor <- factor(data$clinic_cx_results___7, levels = names(mapping_clinic_cx_results___7), labels = mapping_clinic_cx_results___7)

mapping_clinic_cx_results___8 <- c(
  "0" = "Unchecked",
  "1" = "Checked"
)
data$clinic_cx_results___8.factor <- factor(data$clinic_cx_results___8, levels = names(mapping_clinic_cx_results___8), labels = mapping_clinic_cx_results___8)

mapping_clinic_cx_results___9 <- c(
  "0" = "Unchecked",
  "1" = "Checked"
)
data$clinic_cx_results___9.factor <- factor(data$clinic_cx_results___9, levels = names(mapping_clinic_cx_results___9), labels = mapping_clinic_cx_results___9)

mapping_clinic_cx_results___12 <- c(
  "0" = "Unchecked",
  "1" = "Checked"
)
data$clinic_cx_results___12.factor <- factor(data$clinic_cx_results___12, levels = names(mapping_clinic_cx_results___12), labels = mapping_clinic_cx_results___12)

mapping_clinic_cx_results___13 <- c(
  "0" = "Unchecked",
  "1" = "Checked"
)
data$clinic_cx_results___13.factor <- factor(data$clinic_cx_results___13, levels = names(mapping_clinic_cx_results___13), labels = mapping_clinic_cx_results___13)

mapping_clinic_cx_results___14 <- c(
  "0" = "Unchecked",
  "1" = "Checked"
)
data$clinic_cx_results___14.factor <- factor(data$clinic_cx_results___14, levels = names(mapping_clinic_cx_results___14), labels = mapping_clinic_cx_results___14)

mapping_clinic_cx_results___15 <- c(
  "0" = "Unchecked",
  "1" = "Checked"
)
data$clinic_cx_results___15.factor <- factor(data$clinic_cx_results___15, levels = names(mapping_clinic_cx_results___15), labels = mapping_clinic_cx_results___15)

mapping_clinic_cx_results___11 <- c(
  "0" = "Unchecked",
  "1" = "Checked"
)
data$clinic_cx_results___11.factor <- factor(data$clinic_cx_results___11, levels = names(mapping_clinic_cx_results___11), labels = mapping_clinic_cx_results___11)

mapping_clinic_burk_sp <- c(
  "1" = "B. gladioli",
  "2" = "B. cenocepacia",
  "3" = "B. multivorans",
  "4" = "Burkholderia - other"
)
data$clinic_burk_sp.factor <- factor(data$clinic_burk_sp, levels = names(mapping_clinic_burk_sp), labels = mapping_clinic_burk_sp)

mapping_pfts_done <- c(
  "1" = "Yes",
  "0" = "No"
)
data$pfts_done.factor <- factor(data$pfts_done, levels = names(mapping_pfts_done), labels = mapping_pfts_done)

mapping_clinic_visit_complete <- c(
  "0" = "Incomplete",
  "1" = "Unverified",
  "2" = "Complete"
)
data$clinic_visit_complete.factor <- factor(data$clinic_visit_complete, levels = names(mapping_clinic_visit_complete), labels = mapping_clinic_visit_complete)

mapping_research_cx <- c(
  "1" = "Yes",
  "0" = "No"
)
data$research_cx.factor <- factor(data$research_cx, levels = names(mapping_research_cx), labels = mapping_research_cx)

mapping_res_cx_source <- c(
  "1" = "Throat swab",
  "2" = "Expectorated sputum",
  "3" = "Induced sputum"
)
data$res_cx_source.factor <- factor(data$res_cx_source, levels = names(mapping_res_cx_source), labels = mapping_res_cx_source)

mapping_res_cx_recvd <- c(
  "1" = "Yes",
  "0" = "No"
)
data$res_cx_recvd.factor <- factor(data$res_cx_recvd, levels = names(mapping_res_cx_recvd), labels = mapping_res_cx_recvd)

mapping_res_negative_cx <- c(
  "1" = "Yes",
  "0" = "No"
)
data$res_negative_cx.factor <- factor(data$res_negative_cx, levels = names(mapping_res_negative_cx), labels = mapping_res_negative_cx)

mapping_res_cx_results___1 <- c(
  "0" = "Unchecked",
  "1" = "Checked"
)
data$res_cx_results___1.factor <- factor(data$res_cx_results___1, levels = names(mapping_res_cx_results___1), labels = mapping_res_cx_results___1)

mapping_res_cx_results___2 <- c(
  "0" = "Unchecked",
  "1" = "Checked"
)
data$res_cx_results___2.factor <- factor(data$res_cx_results___2, levels = names(mapping_res_cx_results___2), labels = mapping_res_cx_results___2)

mapping_res_cx_results___16 <- c(
  "0" = "Unchecked",
  "1" = "Checked"
)
data$res_cx_results___16.factor <- factor(data$res_cx_results___16, levels = names(mapping_res_cx_results___16), labels = mapping_res_cx_results___16)

mapping_res_cx_results___17 <- c(
  "0" = "Unchecked",
  "1" = "Checked"
)
data$res_cx_results___17.factor <- factor(data$res_cx_results___17, levels = names(mapping_res_cx_results___17), labels = mapping_res_cx_results___17)

mapping_res_cx_results___10 <- c(
  "0" = "Unchecked",
  "1" = "Checked"
)
data$res_cx_results___10.factor <- factor(data$res_cx_results___10, levels = names(mapping_res_cx_results___10), labels = mapping_res_cx_results___10)

mapping_res_cx_results___3 <- c(
  "0" = "Unchecked",
  "1" = "Checked"
)
data$res_cx_results___3.factor <- factor(data$res_cx_results___3, levels = names(mapping_res_cx_results___3), labels = mapping_res_cx_results___3)

mapping_res_cx_results___4 <- c(
  "0" = "Unchecked",
  "1" = "Checked"
)
data$res_cx_results___4.factor <- factor(data$res_cx_results___4, levels = names(mapping_res_cx_results___4), labels = mapping_res_cx_results___4)

mapping_res_cx_results___5 <- c(
  "0" = "Unchecked",
  "1" = "Checked"
)
data$res_cx_results___5.factor <- factor(data$res_cx_results___5, levels = names(mapping_res_cx_results___5), labels = mapping_res_cx_results___5)

mapping_res_cx_results___6 <- c(
  "0" = "Unchecked",
  "1" = "Checked"
)
data$res_cx_results___6.factor <- factor(data$res_cx_results___6, levels = names(mapping_res_cx_results___6), labels = mapping_res_cx_results___6)

mapping_res_cx_results___7 <- c(
  "0" = "Unchecked",
  "1" = "Checked"
)
data$res_cx_results___7.factor <- factor(data$res_cx_results___7, levels = names(mapping_res_cx_results___7), labels = mapping_res_cx_results___7)

mapping_res_cx_results___8 <- c(
  "0" = "Unchecked",
  "1" = "Checked"
)
data$res_cx_results___8.factor <- factor(data$res_cx_results___8, levels = names(mapping_res_cx_results___8), labels = mapping_res_cx_results___8)

mapping_res_cx_results___9 <- c(
  "0" = "Unchecked",
  "1" = "Checked"
)
data$res_cx_results___9.factor <- factor(data$res_cx_results___9, levels = names(mapping_res_cx_results___9), labels = mapping_res_cx_results___9)

mapping_res_cx_results___12 <- c(
  "0" = "Unchecked",
  "1" = "Checked"
)
data$res_cx_results___12.factor <- factor(data$res_cx_results___12, levels = names(mapping_res_cx_results___12), labels = mapping_res_cx_results___12)

mapping_res_cx_results___13 <- c(
  "0" = "Unchecked",
  "1" = "Checked"
)
data$res_cx_results___13.factor <- factor(data$res_cx_results___13, levels = names(mapping_res_cx_results___13), labels = mapping_res_cx_results___13)

mapping_res_cx_results___14 <- c(
  "0" = "Unchecked",
  "1" = "Checked"
)
data$res_cx_results___14.factor <- factor(data$res_cx_results___14, levels = names(mapping_res_cx_results___14), labels = mapping_res_cx_results___14)

mapping_res_cx_results___15 <- c(
  "0" = "Unchecked",
  "1" = "Checked"
)
data$res_cx_results___15.factor <- factor(data$res_cx_results___15, levels = names(mapping_res_cx_results___15), labels = mapping_res_cx_results___15)

mapping_res_cx_results___11 <- c(
  "0" = "Unchecked",
  "1" = "Checked"
)
data$res_cx_results___11.factor <- factor(data$res_cx_results___11, levels = names(mapping_res_cx_results___11), labels = mapping_res_cx_results___11)

mapping_res_burk_sp <- c(
  "1" = "B. gladioli",
  "2" = "B. cenocepacia",
  "3" = "B. multivorans",
  "4" = "Burkholderia - other"
)
data$res_burk_sp.factor <- factor(data$res_burk_sp, levels = names(mapping_res_burk_sp), labels = mapping_res_burk_sp)

mapping_research_culture_complete <- c(
  "0" = "Incomplete",
  "1" = "Unverified",
  "2" = "Complete"
)
data$research_culture_complete.factor <- factor(data$research_culture_complete, levels = names(mapping_research_culture_complete), labels = mapping_research_culture_complete)

mapping_home_cx <- c(
  "1" = "Yes",
  "0" = "No"
)
data$home_cx.factor <- factor(data$home_cx, levels = names(mapping_home_cx), labels = mapping_home_cx)

mapping_home_cx_source <- c(
  "1" = "Throat swab",
  "2" = "Expectorated sputum"
)
data$home_cx_source.factor <- factor(data$home_cx_source, levels = names(mapping_home_cx_source), labels = mapping_home_cx_source)

mapping_home_cx_recvd <- c(
  "1" = "Yes",
  "0" = "No"
)
data$home_cx_recvd.factor <- factor(data$home_cx_recvd, levels = names(mapping_home_cx_recvd), labels = mapping_home_cx_recvd)

mapping_home_negative_cx <- c(
  "1" = "Yes",
  "0" = "No"
)
data$home_negative_cx.factor <- factor(data$home_negative_cx, levels = names(mapping_home_negative_cx), labels = mapping_home_negative_cx)

mapping_home_cx_results___1 <- c(
  "0" = "Unchecked",
  "1" = "Checked"
)
data$home_cx_results___1.factor <- factor(data$home_cx_results___1, levels = names(mapping_home_cx_results___1), labels = mapping_home_cx_results___1)

mapping_home_cx_results___2 <- c(
  "0" = "Unchecked",
  "1" = "Checked"
)
data$home_cx_results___2.factor <- factor(data$home_cx_results___2, levels = names(mapping_home_cx_results___2), labels = mapping_home_cx_results___2)

mapping_home_cx_results___16 <- c(
  "0" = "Unchecked",
  "1" = "Checked"
)
data$home_cx_results___16.factor <- factor(data$home_cx_results___16, levels = names(mapping_home_cx_results___16), labels = mapping_home_cx_results___16)

mapping_home_cx_results___17 <- c(
  "0" = "Unchecked",
  "1" = "Checked"
)
data$home_cx_results___17.factor <- factor(data$home_cx_results___17, levels = names(mapping_home_cx_results___17), labels = mapping_home_cx_results___17)

mapping_home_cx_results___10 <- c(
  "0" = "Unchecked",
  "1" = "Checked"
)
data$home_cx_results___10.factor <- factor(data$home_cx_results___10, levels = names(mapping_home_cx_results___10), labels = mapping_home_cx_results___10)

mapping_home_cx_results___3 <- c(
  "0" = "Unchecked",
  "1" = "Checked"
)
data$home_cx_results___3.factor <- factor(data$home_cx_results___3, levels = names(mapping_home_cx_results___3), labels = mapping_home_cx_results___3)

mapping_home_cx_results___4 <- c(
  "0" = "Unchecked",
  "1" = "Checked"
)
data$home_cx_results___4.factor <- factor(data$home_cx_results___4, levels = names(mapping_home_cx_results___4), labels = mapping_home_cx_results___4)

mapping_home_cx_results___5 <- c(
  "0" = "Unchecked",
  "1" = "Checked"
)
data$home_cx_results___5.factor <- factor(data$home_cx_results___5, levels = names(mapping_home_cx_results___5), labels = mapping_home_cx_results___5)

mapping_home_cx_results___6 <- c(
  "0" = "Unchecked",
  "1" = "Checked"
)
data$home_cx_results___6.factor <- factor(data$home_cx_results___6, levels = names(mapping_home_cx_results___6), labels = mapping_home_cx_results___6)

mapping_home_cx_results___7 <- c(
  "0" = "Unchecked",
  "1" = "Checked"
)
data$home_cx_results___7.factor <- factor(data$home_cx_results___7, levels = names(mapping_home_cx_results___7), labels = mapping_home_cx_results___7)

mapping_home_cx_results___8 <- c(
  "0" = "Unchecked",
  "1" = "Checked"
)
data$home_cx_results___8.factor <- factor(data$home_cx_results___8, levels = names(mapping_home_cx_results___8), labels = mapping_home_cx_results___8)

mapping_home_cx_results___9 <- c(
  "0" = "Unchecked",
  "1" = "Checked"
)
data$home_cx_results___9.factor <- factor(data$home_cx_results___9, levels = names(mapping_home_cx_results___9), labels = mapping_home_cx_results___9)

mapping_home_cx_results___12 <- c(
  "0" = "Unchecked",
  "1" = "Checked"
)
data$home_cx_results___12.factor <- factor(data$home_cx_results___12, levels = names(mapping_home_cx_results___12), labels = mapping_home_cx_results___12)

mapping_home_cx_results___13 <- c(
  "0" = "Unchecked",
  "1" = "Checked"
)
data$home_cx_results___13.factor <- factor(data$home_cx_results___13, levels = names(mapping_home_cx_results___13), labels = mapping_home_cx_results___13)

mapping_home_cx_results___14 <- c(
  "0" = "Unchecked",
  "1" = "Checked"
)
data$home_cx_results___14.factor <- factor(data$home_cx_results___14, levels = names(mapping_home_cx_results___14), labels = mapping_home_cx_results___14)

mapping_home_cx_results___15 <- c(
  "0" = "Unchecked",
  "1" = "Checked"
)
data$home_cx_results___15.factor <- factor(data$home_cx_results___15, levels = names(mapping_home_cx_results___15), labels = mapping_home_cx_results___15)

mapping_home_cx_results___11 <- c(
  "0" = "Unchecked",
  "1" = "Checked"
)
data$home_cx_results___11.factor <- factor(data$home_cx_results___11, levels = names(mapping_home_cx_results___11), labels = mapping_home_cx_results___11)

mapping_home_burk_sp <- c(
  "1" = "B. gladioli",
  "2" = "B. cenocepacia",
  "3" = "B. multivorans",
  "4" = "Burkholderia - other"
)
data$home_burk_sp.factor <- factor(data$home_burk_sp, levels = names(mapping_home_burk_sp), labels = mapping_home_burk_sp)

mapping_survey_done <- c(
  "1" = "Yes",
  "0" = "No"
)
data$survey_done.factor <- factor(data$survey_done, levels = names(mapping_survey_done), labels = mapping_survey_done)

mapping_telehealth_done <- c(
  "1" = "Yes",
  "0" = "No"
)
data$telehealth_done.factor <- factor(data$telehealth_done, levels = names(mapping_telehealth_done), labels = mapping_telehealth_done)

mapping_home_culture_complete <- c(
  "0" = "Incomplete",
  "1" = "Unverified",
  "2" = "Complete"
)
data$home_culture_complete.factor <- factor(data$home_culture_complete, levels = names(mapping_home_culture_complete), labels = mapping_home_culture_complete)
