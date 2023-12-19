# Load Hmisc library
library(Hmisc)
# Read Data
survey_data <- read.csv("/Users/timvigers/Library/CloudStorage/OneDrive-TheUniversityofColoradoDenver/Vigers/CF/Jordana Hoppe/Home Collection/Data_Raw/HomeCollection220661_DATA_2023-12-19_0911.csv")
# Setting Labels
label(survey_data$participant_id) <- "Participant ID"
label(survey_data$redcap_survey_identifier) <- "Survey Identifier"
label(survey_data$consent_timestamp) <- "Survey Timestamp"
label(survey_data$parent_fname) <- "Your first name"
label(survey_data$parent_lname) <- "Your last name"
label(survey_data$email) <- "E-mail address"
label(survey_data$consent___1) <- "By checking this box, I certify that I am at least 18 years old and that I give my consent freely to participate in this study. (choice=I consent)"
label(survey_data$signature) <- "Please sign to indicate your consent to participate in this study."
label(survey_data$consent_complete) <- "Complete?"
label(survey_data$survey_timestamp) <- "Survey Timestamp"
label(survey_data$q1) <- "Did you receive a home collection kit in the mail?"
label(survey_data$q2) <- "How long did it take you to receive a home collection kit after your clinic visit?"
label(survey_data$q3) <- "Were you able to obtain a sample at home? "
label(survey_data$previous) <- "Have you previously collected a sample at home?"
label(survey_data$goodsample) <- "Do you feel your home collection was a good sample? "
label(survey_data$difficulty) <- "How would you rate the difficulty of the collection?"
label(survey_data$barriers___1) <- "What barriers did you encounter with home collection?  (choice=Uncooperative child)"
label(survey_data$barriers___2) <- "What barriers did you encounter with home collection?  (choice=Written instructions for collection were not clear)"
label(survey_data$barriers___3) <- "What barriers did you encounter with home collection?  (choice=I did not think the sample I obtained was a good sample)"
label(survey_data$barriers___4) <- "What barriers did you encounter with home collection?  (choice=Other, please specify: {barriers_spec})"
label(survey_data$barriers_spec) <- "Please specify other barriers to home collection:"
label(survey_data$shipping) <- "How easy was the process to arrange for shipping of your sample?"
label(survey_data$q4) <- "Did you return your sample with FedEx shipping?"
label(survey_data$q5) <- "Would you be willing to repeat a home collection if your provider recommended one, for example if your child was sick or had completed treatment with inhaled antibiotics for Pseudomonas?"
label(survey_data$q6) <- "Would the use of home collection in conjunction with a telehealth visit be helpful for your child and family?"
label(survey_data$q6a___1) <- "If yes, how would this help your family? Select all that apply (choice=Decreased travel time)"
label(survey_data$q6a___2) <- "If yes, how would this help your family? Select all that apply (choice=Less missed work)"
label(survey_data$q6a___3) <- "If yes, how would this help your family? Select all that apply (choice=Financial reasons - costs to travel to clinic can be a burden)"
label(survey_data$q6a___4) <- "If yes, how would this help your family? Select all that apply (choice=Health concerns with coming to clinic)"
label(survey_data$q6a___5) <- "If yes, how would this help your family? Select all that apply (choice=Other, please specify: {q6a_spec})"
label(survey_data$q6a_spec) <- "Please specify:"
label(survey_data$q6b___1) <- "If no, why not? Select all that apply. (choice=I do not feel comfortable with home collection)"
label(survey_data$q6b___2) <- "If no, why not? Select all that apply. (choice=I do not feel collection at home is reliable)"
label(survey_data$q6b___3) <- "If no, why not? Select all that apply. (choice=We prefer in-clinic visits only)"
label(survey_data$q6b___4) <- "If no, why not? Select all that apply. (choice=Other, please specify: {q6b_spec})"
label(survey_data$q6b_spec) <- "Please specify:"
label(survey_data$survey_complete) <- "Complete?"
# Setting Units


# Setting Factors(will create new variable for factors)
survey_data$consent___1.factor <- factor(survey_data$consent___1, levels = c("0", "1"))
survey_data$consent_complete.factor <- factor(survey_data$consent_complete, levels = c("0", "1", "2"))
survey_data$q1.factor <- factor(survey_data$q1, levels = c("1", "0"))
survey_data$q2.factor <- factor(survey_data$q2, levels = c("1", "2", "3"))
survey_data$q3.factor <- factor(survey_data$q3, levels = c("1", "0"))
survey_data$previous.factor <- factor(survey_data$previous, levels = c("1", "0"))
survey_data$goodsample.factor <- factor(survey_data$goodsample, levels = c("1", "0"))
survey_data$difficulty.factor <- factor(survey_data$difficulty, levels = c("1", "2", "3", "4", "5"))
survey_data$barriers___1.factor <- factor(survey_data$barriers___1, levels = c("0", "1"))
survey_data$barriers___2.factor <- factor(survey_data$barriers___2, levels = c("0", "1"))
survey_data$barriers___3.factor <- factor(survey_data$barriers___3, levels = c("0", "1"))
survey_data$barriers___4.factor <- factor(survey_data$barriers___4, levels = c("0", "1"))
survey_data$shipping.factor <- factor(survey_data$shipping, levels = c("1", "2", "3", "4", "5"))
survey_data$q4.factor <- factor(survey_data$q4, levels = c("1", "0"))
survey_data$q5.factor <- factor(survey_data$q5, levels = c("1", "0"))
survey_data$q6.factor <- factor(survey_data$q6, levels = c("1", "0"))
survey_data$q6a___1.factor <- factor(survey_data$q6a___1, levels = c("0", "1"))
survey_data$q6a___2.factor <- factor(survey_data$q6a___2, levels = c("0", "1"))
survey_data$q6a___3.factor <- factor(survey_data$q6a___3, levels = c("0", "1"))
survey_data$q6a___4.factor <- factor(survey_data$q6a___4, levels = c("0", "1"))
survey_data$q6a___5.factor <- factor(survey_data$q6a___5, levels = c("0", "1"))
survey_data$q6b___1.factor <- factor(survey_data$q6b___1, levels = c("0", "1"))
survey_data$q6b___2.factor <- factor(survey_data$q6b___2, levels = c("0", "1"))
survey_data$q6b___3.factor <- factor(survey_data$q6b___3, levels = c("0", "1"))
survey_data$q6b___4.factor <- factor(survey_data$q6b___4, levels = c("0", "1"))
survey_data$survey_complete.factor <- factor(survey_data$survey_complete, levels = c("0", "1", "2"))

levels(survey_data$consent___1.factor) <- c("Unchecked", "Checked")
levels(survey_data$consent_complete.factor) <- c("Incomplete", "Unverified", "Complete")
levels(survey_data$q1.factor) <- c("Yes", "No")
levels(survey_data$q2.factor) <- c("Less than 3 days", "3-7 days", "More than 1 week")
levels(survey_data$q3.factor) <- c("Yes", "No")
levels(survey_data$previous.factor) <- c("Yes", "No")
levels(survey_data$goodsample.factor) <- c("Yes", "No")
levels(survey_data$difficulty.factor) <- c("Very easy", "Easy", "Neutral", "Challenging", "Very challenging")
levels(survey_data$barriers___1.factor) <- c("Unchecked", "Checked")
levels(survey_data$barriers___2.factor) <- c("Unchecked", "Checked")
levels(survey_data$barriers___3.factor) <- c("Unchecked", "Checked")
levels(survey_data$barriers___4.factor) <- c("Unchecked", "Checked")
levels(survey_data$shipping.factor) <- c("Very easy", "Easy", "Neutral", "Challenging", "Very challenging")
levels(survey_data$q4.factor) <- c("Yes", "No")
levels(survey_data$q5.factor) <- c("Yes", "No")
levels(survey_data$q6.factor) <- c("Yes", "No")
levels(survey_data$q6a___1.factor) <- c("Unchecked", "Checked")
levels(survey_data$q6a___2.factor) <- c("Unchecked", "Checked")
levels(survey_data$q6a___3.factor) <- c("Unchecked", "Checked")
levels(survey_data$q6a___4.factor) <- c("Unchecked", "Checked")
levels(survey_data$q6a___5.factor) <- c("Unchecked", "Checked")
levels(survey_data$q6b___1.factor) <- c("Unchecked", "Checked")
levels(survey_data$q6b___2.factor) <- c("Unchecked", "Checked")
levels(survey_data$q6b___3.factor) <- c("Unchecked", "Checked")
levels(survey_data$q6b___4.factor) <- c("Unchecked", "Checked")
levels(survey_data$survey_complete.factor) <- c("Incomplete", "Unverified", "Complete")
