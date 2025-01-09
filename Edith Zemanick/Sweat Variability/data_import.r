library(Hmisc)
setwd("/Users/timvigers/Library/CloudStorage/OneDrive-TheUniversityofColoradoDenver/Vigers/CF/Edith Zemanick/Sweat Variability")
# Read Data
data <- read.csv("./Data_Raw/SweatVariability2025_DATA_2025-01-08_0928.csv", na.strings = "")
# Setting Labels
label(data$record_id) <- "Record ID"
label(data$redcap_data_access_group) <- "Data Access Group"
label(data$patient_id) <- "Patient ID"
label(data$patient_name) <- "Patient Name"
label(data$dob) <- "Birth Date"
label(data$diagnosis) <- "Diagnosis"
label(data$genotype1) <- "Genotype 1"
label(data$genotype1_spec) <- "Specify mutation 1, if Other"
label(data$tract_type1) <- "Tract type (for R117H)"
label(data$genotype2) <- "Genotype 2"
label(data$genotype2_spec) <- "Specify mutation 2, if Other"
label(data$tract_type2) <- "Tract type (for R117H)"
label(data$demog_avail) <- "Demographics Available"
label(data$sex) <- "Sex"
label(data$race___1) <- "Race (choice=Asian)"
label(data$race___2) <- "Race (choice=Black/African-American)"
label(data$race___3) <- "Race (choice=Native Hawaiian/Pacific Islander)"
label(data$race___4) <- "Race (choice=White/Caucasian)"
label(data$race___5) <- "Race (choice=Native American/Alaska Native)"
label(data$race___6) <- "Race (choice=More than one race)"
label(data$race___7) <- "Race (choice=Other)"
label(data$race___8) <- "Race (choice=Not Reported)"
label(data$ethnicity) <- "Ethnicity"
label(data$patient_data_complete) <- "Complete?"
label(data$sweat_date) <- "Sweat test date"
label(data$age_at_test) <- "Age at test (in years)"
label(data$method) <- "Test Method"
label(data$site) <- "Site of test"
label(data$amount) <- "Sweat volume/amount"
label(data$result_na) <- "Sweat sodium"
label(data$result_k) <- "Sweat potassium"
label(data$result_cl_operand) <- "Chloride operand"
label(data$result_cl) <- "Sweat chloride"
label(data$amount_qns_left) <- "Left arm volume less than 15/QNS"
label(data$amount_left) <- "Sweat volume left arm"
label(data$result_na_left) <- "Sweat sodium left arm"
label(data$result_k_left) <- "Sweat potassium left arm"
label(data$result_cl_operand_l) <- "Chloride operand left arm"
label(data$result_cl_left) <- "Sweat chloride left arm"
label(data$amount_qns_right) <- "Right arm volume less than 15/QNS"
label(data$amount_right) <- "Sweat volume right arm"
label(data$result_na_right) <- "Sweat sodium right arm"
label(data$result_k_right) <- "Sweat potassium right arm"
label(data$result_cl_operand_r) <- "Chloride operand right arm"
label(data$result_cl_right) <- "Sweat chloride right arm"
label(data$test_notes) <- "Notes regarding test"
label(data$test_data_complete) <- "Complete?"
# Setting Factors(will create new variable for factors)
data$redcap_data_access_group.factor <- factor(data$redcap_data_access_group, levels = c("chco", "national_jewish"))
data$diagnosis.factor <- factor(data$diagnosis, levels = c("1", "2", "3", "4"))
data$genotype1.factor <- factor(data$genotype1, levels = c("1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30"))
data$tract_type1.factor <- factor(data$tract_type1, levels = c("1", "2", "3", "4", "5", "6"))
data$genotype2.factor <- factor(data$genotype2, levels = c("1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30"))
data$tract_type2.factor <- factor(data$tract_type2, levels = c("1", "2", "3", "4", "5", "6"))
data$demog_avail.factor <- factor(data$demog_avail, levels = c("1", "0"))
data$sex.factor <- factor(data$sex, levels = c("1", "2"))
data$race___1.factor <- factor(data$race___1, levels = c("0", "1"))
data$race___2.factor <- factor(data$race___2, levels = c("0", "1"))
data$race___3.factor <- factor(data$race___3, levels = c("0", "1"))
data$race___4.factor <- factor(data$race___4, levels = c("0", "1"))
data$race___5.factor <- factor(data$race___5, levels = c("0", "1"))
data$race___6.factor <- factor(data$race___6, levels = c("0", "1"))
data$race___7.factor <- factor(data$race___7, levels = c("0", "1"))
data$race___8.factor <- factor(data$race___8, levels = c("0", "1"))
data$ethnicity.factor <- factor(data$ethnicity, levels = c("1", "2", "3"))
data$patient_data_complete.factor <- factor(data$patient_data_complete, levels = c("0", "1", "2"))
data$method.factor <- factor(data$method, levels = c("1", "2"))
data$site.factor <- factor(data$site, levels = c("1", "2", "3", "4", "5"))
data$result_cl_operand.factor <- factor(data$result_cl_operand, levels = c("1", "2"))
data$amount_qns_left.factor <- factor(data$amount_qns_left, levels = c("1", "0"))
data$result_cl_operand_l.factor <- factor(data$result_cl_operand_l, levels = c("1", "2"))
data$amount_qns_right.factor <- factor(data$amount_qns_right, levels = c("1", "0"))
data$result_cl_operand_r.factor <- factor(data$result_cl_operand_r, levels = c("1", "2"))
data$test_data_complete.factor <- factor(data$test_data_complete, levels = c("0", "1", "2"))
levels(data$redcap_data_access_group.factor) <- c("CHCO", "National Jewish")
levels(data$diagnosis.factor) <- c("Cystic Fibrosis", "CFTR-related disorder", "CRMS", "Non-CF")
levels(data$genotype1.factor) <- c("F508del", "1154InsTC", "1717-1G->A", "1898+1G->A", "2143delT", "2184insA", "2789+5G->A", "3120+1G->A", "3659delC", "3849+10CT", "3905insT", "394delTT", "621+1G->T", "A455E", "E60X", "G542X", "G551D", "I507", "M1101K", "N1303K", "Q493X", "R1162X", "R117C", "R117H", "R347P", "R553X", "R560T", "W1282X", "Other", "Unknown")
levels(data$tract_type1.factor) <- c("5T", "7T", "7T/9T", "9T", "Not 5T", "Not reported/Unknown")
levels(data$genotype2.factor) <- c("F508del", "1154InsTC", "1717-1G->A", "1898+1G->A", "2143delT", "2184insA", "2789+5G->A", "3120+1G->A", "3659delC", "3849+10CT", "3905insT", "394delTT", "621+1G->T", "A455E", "E60X", "G542X", "G551D", "I507", "M1101K", "N1303K", "Q493X", "R1162X", "R117C", "R117H", "R347P", "R553X", "R560T", "W1282X", "Other", "Unknown")
levels(data$tract_type2.factor) <- c("5T", "7T", "7T/9T", "9T", "Not 5T", "Not reported/Unknown")
levels(data$demog_avail.factor) <- c("True", "False")
levels(data$sex.factor) <- c("Male", "Female")
levels(data$race___1.factor) <- c("Unchecked", "Checked")
levels(data$race___2.factor) <- c("Unchecked", "Checked")
levels(data$race___3.factor) <- c("Unchecked", "Checked")
levels(data$race___4.factor) <- c("Unchecked", "Checked")
levels(data$race___5.factor) <- c("Unchecked", "Checked")
levels(data$race___6.factor) <- c("Unchecked", "Checked")
levels(data$race___7.factor) <- c("Unchecked", "Checked")
levels(data$race___8.factor) <- c("Unchecked", "Checked")
levels(data$ethnicity.factor) <- c("Hispanic/Latinx", "Not Hispanic/Latinx", "Unknown/Not Reported")
levels(data$patient_data_complete.factor) <- c("Incomplete", "Unverified", "Complete")
levels(data$method.factor) <- c("Gibson-Cooke", "Macroduct")
levels(data$site.factor) <- c("Childrens Hospital Colorado Aurora", "Lab Colorado Springs", "Memorial Colorado Springs", "National Jewish Health", "University of Colorado Hospital")
levels(data$result_cl_operand.factor) <- c("Greater than", "Less than")
levels(data$amount_qns_left.factor) <- c("True", "False")
levels(data$result_cl_operand_l.factor) <- c("Greater than", "Less than")
levels(data$amount_qns_right.factor) <- c("True", "False")
levels(data$result_cl_operand_r.factor) <- c("Greater than", "Less than")
levels(data$test_data_complete.factor) <- c("Incomplete", "Unverified", "Complete")
# Remove numeric factor columns
num_factors <- colnames(data)[grep("\\.factor", colnames(data))]
num_factors <- sub("\\.factor", "", num_factors)
factor_labs <- label(data[, num_factors])
data <- data[, -match(num_factors, colnames(data))]
colnames(data) <- sub("\\.factor", "", colnames(data))
label(data[, names(factor_labs)]) <- as.list(factor_labs)
# Remove unnecessary columns
data$record_id <- NULL
data$patient_name <- NULL
# Save
chco <- data
save(chco, file = "./Data_Cleaned/chco_data.RData")
