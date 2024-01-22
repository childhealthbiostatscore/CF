# Load Hmisc library
library(Hmisc)
# Read Data
data <- read.csv("/Users/timvigers/Library/CloudStorage/OneDrive-TheUniversityofColoradoDenver/Vigers/CF/Jordana Hoppe/Home Collection/Data_Raw/HomeCollection220661_DATA_2023-12-19_0917.csv",na.strings = "")
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
data$pt_sex.factor <- factor(data$pt_sex, levels = c("1", "2"))
data$race___1.factor <- factor(data$race___1, levels = c("0", "1"))
data$race___2.factor <- factor(data$race___2, levels = c("0", "1"))
data$race___3.factor <- factor(data$race___3, levels = c("0", "1"))
data$race___4.factor <- factor(data$race___4, levels = c("0", "1"))
data$race___5.factor <- factor(data$race___5, levels = c("0", "1"))
data$race___6.factor <- factor(data$race___6, levels = c("0", "1"))
data$race___7.factor <- factor(data$race___7, levels = c("0", "1"))
data$ethnicity.factor <- factor(data$ethnicity, levels = c("1", "0"))
data$mutation1.factor <- factor(data$mutation1, levels = c("1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30"))
data$tract_type1.factor <- factor(data$tract_type1, levels = c("1", "2", "3", "4", "5", "6"))
data$mutation2.factor <- factor(data$mutation2, levels = c("1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30"))
data$tract_type2.factor <- factor(data$tract_type2, levels = c("1", "2", "3", "4", "5", "6"))
data$rural_location.factor <- factor(data$rural_location, levels = c("1", "0"))
data$demographics_complete.factor <- factor(data$demographics_complete, levels = c("0", "1", "2"))
data$clinic_cx_source.factor <- factor(data$clinic_cx_source, levels = c("1", "2", "3"))
data$clinic_negative_cx.factor <- factor(data$clinic_negative_cx, levels = c("1", "0"))
data$clinic_cx_results___1.factor <- factor(data$clinic_cx_results___1, levels = c("0", "1"))
data$clinic_cx_results___2.factor <- factor(data$clinic_cx_results___2, levels = c("0", "1"))
data$clinic_cx_results___16.factor <- factor(data$clinic_cx_results___16, levels = c("0", "1"))
data$clinic_cx_results___17.factor <- factor(data$clinic_cx_results___17, levels = c("0", "1"))
data$clinic_cx_results___10.factor <- factor(data$clinic_cx_results___10, levels = c("0", "1"))
data$clinic_cx_results___3.factor <- factor(data$clinic_cx_results___3, levels = c("0", "1"))
data$clinic_cx_results___4.factor <- factor(data$clinic_cx_results___4, levels = c("0", "1"))
data$clinic_cx_results___5.factor <- factor(data$clinic_cx_results___5, levels = c("0", "1"))
data$clinic_cx_results___6.factor <- factor(data$clinic_cx_results___6, levels = c("0", "1"))
data$clinic_cx_results___7.factor <- factor(data$clinic_cx_results___7, levels = c("0", "1"))
data$clinic_cx_results___8.factor <- factor(data$clinic_cx_results___8, levels = c("0", "1"))
data$clinic_cx_results___9.factor <- factor(data$clinic_cx_results___9, levels = c("0", "1"))
data$clinic_cx_results___12.factor <- factor(data$clinic_cx_results___12, levels = c("0", "1"))
data$clinic_cx_results___13.factor <- factor(data$clinic_cx_results___13, levels = c("0", "1"))
data$clinic_cx_results___14.factor <- factor(data$clinic_cx_results___14, levels = c("0", "1"))
data$clinic_cx_results___15.factor <- factor(data$clinic_cx_results___15, levels = c("0", "1"))
data$clinic_cx_results___11.factor <- factor(data$clinic_cx_results___11, levels = c("0", "1"))
data$clinic_burk_sp.factor <- factor(data$clinic_burk_sp, levels = c("1", "2", "3", "4"))
data$pfts_done.factor <- factor(data$pfts_done, levels = c("1", "0"))
data$clinic_visit_complete.factor <- factor(data$clinic_visit_complete, levels = c("0", "1", "2"))
data$research_cx.factor <- factor(data$research_cx, levels = c("1", "0"))
data$res_cx_source.factor <- factor(data$res_cx_source, levels = c("1", "2", "3"))
data$res_cx_recvd.factor <- factor(data$res_cx_recvd, levels = c("1", "0"))
data$res_negative_cx.factor <- factor(data$res_negative_cx, levels = c("1", "0"))
data$res_cx_results___1.factor <- factor(data$res_cx_results___1, levels = c("0", "1"))
data$res_cx_results___2.factor <- factor(data$res_cx_results___2, levels = c("0", "1"))
data$res_cx_results___16.factor <- factor(data$res_cx_results___16, levels = c("0", "1"))
data$res_cx_results___17.factor <- factor(data$res_cx_results___17, levels = c("0", "1"))
data$res_cx_results___10.factor <- factor(data$res_cx_results___10, levels = c("0", "1"))
data$res_cx_results___3.factor <- factor(data$res_cx_results___3, levels = c("0", "1"))
data$res_cx_results___4.factor <- factor(data$res_cx_results___4, levels = c("0", "1"))
data$res_cx_results___5.factor <- factor(data$res_cx_results___5, levels = c("0", "1"))
data$res_cx_results___6.factor <- factor(data$res_cx_results___6, levels = c("0", "1"))
data$res_cx_results___7.factor <- factor(data$res_cx_results___7, levels = c("0", "1"))
data$res_cx_results___8.factor <- factor(data$res_cx_results___8, levels = c("0", "1"))
data$res_cx_results___9.factor <- factor(data$res_cx_results___9, levels = c("0", "1"))
data$res_cx_results___12.factor <- factor(data$res_cx_results___12, levels = c("0", "1"))
data$res_cx_results___13.factor <- factor(data$res_cx_results___13, levels = c("0", "1"))
data$res_cx_results___14.factor <- factor(data$res_cx_results___14, levels = c("0", "1"))
data$res_cx_results___15.factor <- factor(data$res_cx_results___15, levels = c("0", "1"))
data$res_cx_results___11.factor <- factor(data$res_cx_results___11, levels = c("0", "1"))
data$res_burk_sp.factor <- factor(data$res_burk_sp, levels = c("1", "2", "3", "4"))
data$research_culture_complete.factor <- factor(data$research_culture_complete, levels = c("0", "1", "2"))
data$home_cx.factor <- factor(data$home_cx, levels = c("1", "0"))
data$home_cx_source.factor <- factor(data$home_cx_source, levels = c("1", "2"))
data$home_cx_recvd.factor <- factor(data$home_cx_recvd, levels = c("1", "0"))
data$home_negative_cx.factor <- factor(data$home_negative_cx, levels = c("1", "0"))
data$home_cx_results___1.factor <- factor(data$home_cx_results___1, levels = c("0", "1"))
data$home_cx_results___2.factor <- factor(data$home_cx_results___2, levels = c("0", "1"))
data$home_cx_results___16.factor <- factor(data$home_cx_results___16, levels = c("0", "1"))
data$home_cx_results___17.factor <- factor(data$home_cx_results___17, levels = c("0", "1"))
data$home_cx_results___10.factor <- factor(data$home_cx_results___10, levels = c("0", "1"))
data$home_cx_results___3.factor <- factor(data$home_cx_results___3, levels = c("0", "1"))
data$home_cx_results___4.factor <- factor(data$home_cx_results___4, levels = c("0", "1"))
data$home_cx_results___5.factor <- factor(data$home_cx_results___5, levels = c("0", "1"))
data$home_cx_results___6.factor <- factor(data$home_cx_results___6, levels = c("0", "1"))
data$home_cx_results___7.factor <- factor(data$home_cx_results___7, levels = c("0", "1"))
data$home_cx_results___8.factor <- factor(data$home_cx_results___8, levels = c("0", "1"))
data$home_cx_results___9.factor <- factor(data$home_cx_results___9, levels = c("0", "1"))
data$home_cx_results___12.factor <- factor(data$home_cx_results___12, levels = c("0", "1"))
data$home_cx_results___13.factor <- factor(data$home_cx_results___13, levels = c("0", "1"))
data$home_cx_results___14.factor <- factor(data$home_cx_results___14, levels = c("0", "1"))
data$home_cx_results___15.factor <- factor(data$home_cx_results___15, levels = c("0", "1"))
data$home_cx_results___11.factor <- factor(data$home_cx_results___11, levels = c("0", "1"))
data$home_burk_sp.factor <- factor(data$home_burk_sp, levels = c("1", "2", "3", "4"))
data$survey_done.factor <- factor(data$survey_done, levels = c("1", "0"))
data$telehealth_done.factor <- factor(data$telehealth_done, levels = c("1", "0"))
data$home_culture_complete.factor <- factor(data$home_culture_complete, levels = c("0", "1", "2"))

levels(data$pt_sex.factor) <- c("Male", "Female")
levels(data$race___1.factor) <- c("Unchecked", "Checked")
levels(data$race___2.factor) <- c("Unchecked", "Checked")
levels(data$race___3.factor) <- c("Unchecked", "Checked")
levels(data$race___4.factor) <- c("Unchecked", "Checked")
levels(data$race___5.factor) <- c("Unchecked", "Checked")
levels(data$race___6.factor) <- c("Unchecked", "Checked")
levels(data$race___7.factor) <- c("Unchecked", "Checked")
levels(data$ethnicity.factor) <- c("True", "False")
levels(data$mutation1.factor) <- c("F508del", "1154InsTC", "1717-1G->A", "1898+1G->A", "2143delT", "2184insA", "2789+5G->A", "3120+1G->A", "3659delC", "3849+10CT", "3905insT", "394delTT", "621+1G->T", "A455E", "E60X", "G542X", "G551D", "I507", "M1101K", "N1303K", "Q493X", "R1162X", "R117C", "R117H", "R347P", "R553X", "R560T", "W1282X", "Other", "Unknown")
levels(data$tract_type1.factor) <- c("5T", "7T", "7T/9T", "9T", "Not 5T", "Not reported/Unknown")
levels(data$mutation2.factor) <- c("F508del", "1154InsTC", "1717-1G->A", "1898+1G->A", "2143delT", "2184insA", "2789+5G->A", "3120+1G->A", "3659delC", "3849+10CT", "3905insT", "394delTT", "621+1G->T", "A455E", "E60X", "G542X", "G551D", "I507", "M1101K", "N1303K", "Q493X", "R1162X", "R117C", "R117H", "R347P", "R553X", "R560T", "W1282X", "Other", "Unknown")
levels(data$tract_type2.factor) <- c("5T", "7T", "7T/9T", "9T", "Not 5T", "Not reported/Unknown")
levels(data$rural_location.factor) <- c("Yes", "No")
levels(data$demographics_complete.factor) <- c("Incomplete", "Unverified", "Complete")
levels(data$clinic_cx_source.factor) <- c("Throat swab", "Expectorated sputum", "Induced sputum")
levels(data$clinic_negative_cx.factor) <- c("Yes", "No")
levels(data$clinic_cx_results___1.factor) <- c("Unchecked", "Checked")
levels(data$clinic_cx_results___2.factor) <- c("Unchecked", "Checked")
levels(data$clinic_cx_results___16.factor) <- c("Unchecked", "Checked")
levels(data$clinic_cx_results___17.factor) <- c("Unchecked", "Checked")
levels(data$clinic_cx_results___10.factor) <- c("Unchecked", "Checked")
levels(data$clinic_cx_results___3.factor) <- c("Unchecked", "Checked")
levels(data$clinic_cx_results___4.factor) <- c("Unchecked", "Checked")
levels(data$clinic_cx_results___5.factor) <- c("Unchecked", "Checked")
levels(data$clinic_cx_results___6.factor) <- c("Unchecked", "Checked")
levels(data$clinic_cx_results___7.factor) <- c("Unchecked", "Checked")
levels(data$clinic_cx_results___8.factor) <- c("Unchecked", "Checked")
levels(data$clinic_cx_results___9.factor) <- c("Unchecked", "Checked")
levels(data$clinic_cx_results___12.factor) <- c("Unchecked", "Checked")
levels(data$clinic_cx_results___13.factor) <- c("Unchecked", "Checked")
levels(data$clinic_cx_results___14.factor) <- c("Unchecked", "Checked")
levels(data$clinic_cx_results___15.factor) <- c("Unchecked", "Checked")
levels(data$clinic_cx_results___11.factor) <- c("Unchecked", "Checked")
levels(data$clinic_burk_sp.factor) <- c("B. gladioli", "B. cenocepacia", "B. multivorans", "Burkholderia - other")
levels(data$pfts_done.factor) <- c("Yes", "No")
levels(data$clinic_visit_complete.factor) <- c("Incomplete", "Unverified", "Complete")
levels(data$research_cx.factor) <- c("Yes", "No")
levels(data$res_cx_source.factor) <- c("Throat swab", "Expectorated sputum", "Induced sputum")
levels(data$res_cx_recvd.factor) <- c("Yes", "No")
levels(data$res_negative_cx.factor) <- c("Yes", "No")
levels(data$res_cx_results___1.factor) <- c("Unchecked", "Checked")
levels(data$res_cx_results___2.factor) <- c("Unchecked", "Checked")
levels(data$res_cx_results___16.factor) <- c("Unchecked", "Checked")
levels(data$res_cx_results___17.factor) <- c("Unchecked", "Checked")
levels(data$res_cx_results___10.factor) <- c("Unchecked", "Checked")
levels(data$res_cx_results___3.factor) <- c("Unchecked", "Checked")
levels(data$res_cx_results___4.factor) <- c("Unchecked", "Checked")
levels(data$res_cx_results___5.factor) <- c("Unchecked", "Checked")
levels(data$res_cx_results___6.factor) <- c("Unchecked", "Checked")
levels(data$res_cx_results___7.factor) <- c("Unchecked", "Checked")
levels(data$res_cx_results___8.factor) <- c("Unchecked", "Checked")
levels(data$res_cx_results___9.factor) <- c("Unchecked", "Checked")
levels(data$res_cx_results___12.factor) <- c("Unchecked", "Checked")
levels(data$res_cx_results___13.factor) <- c("Unchecked", "Checked")
levels(data$res_cx_results___14.factor) <- c("Unchecked", "Checked")
levels(data$res_cx_results___15.factor) <- c("Unchecked", "Checked")
levels(data$res_cx_results___11.factor) <- c("Unchecked", "Checked")
levels(data$res_burk_sp.factor) <- c("B. gladioli", "B. cenocepacia", "B. multivorans", "Burkholderia - other")
levels(data$research_culture_complete.factor) <- c("Incomplete", "Unverified", "Complete")
levels(data$home_cx.factor) <- c("Yes", "No")
levels(data$home_cx_source.factor) <- c("Throat swab", "Expectorated sputum")
levels(data$home_cx_recvd.factor) <- c("Yes", "No")
levels(data$home_negative_cx.factor) <- c("Yes", "No")
levels(data$home_cx_results___1.factor) <- c("Unchecked", "Checked")
levels(data$home_cx_results___2.factor) <- c("Unchecked", "Checked")
levels(data$home_cx_results___16.factor) <- c("Unchecked", "Checked")
levels(data$home_cx_results___17.factor) <- c("Unchecked", "Checked")
levels(data$home_cx_results___10.factor) <- c("Unchecked", "Checked")
levels(data$home_cx_results___3.factor) <- c("Unchecked", "Checked")
levels(data$home_cx_results___4.factor) <- c("Unchecked", "Checked")
levels(data$home_cx_results___5.factor) <- c("Unchecked", "Checked")
levels(data$home_cx_results___6.factor) <- c("Unchecked", "Checked")
levels(data$home_cx_results___7.factor) <- c("Unchecked", "Checked")
levels(data$home_cx_results___8.factor) <- c("Unchecked", "Checked")
levels(data$home_cx_results___9.factor) <- c("Unchecked", "Checked")
levels(data$home_cx_results___12.factor) <- c("Unchecked", "Checked")
levels(data$home_cx_results___13.factor) <- c("Unchecked", "Checked")
levels(data$home_cx_results___14.factor) <- c("Unchecked", "Checked")
levels(data$home_cx_results___15.factor) <- c("Unchecked", "Checked")
levels(data$home_cx_results___11.factor) <- c("Unchecked", "Checked")
levels(data$home_burk_sp.factor) <- c("B. gladioli", "B. cenocepacia", "B. multivorans", "Burkholderia - other")
levels(data$survey_done.factor) <- c("Yes", "No")
levels(data$telehealth_done.factor) <- c("Yes", "No")
levels(data$home_culture_complete.factor) <- c("Incomplete", "Unverified", "Complete")
