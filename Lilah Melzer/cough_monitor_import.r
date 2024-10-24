home_dir <- switch(Sys.info()["sysname"],
  "Darwin" = "/Users/timvigers/Library/CloudStorage/OneDrive-TheUniversityofColoradoDenver/Vigers/CF/Lilah Melzer/Home Nighttime Cough Monitoring",
  "Windows" = "C:/Users/timvigers/OneDrive - The University of Colorado Denver/Vigers/CF/Lilah Melzer/Home Nighttime Cough Monitoring",
  "Linux" = "/home/timvigers/OneDrive/Vigers/CF/Lilah Melzer/Home Nighttime Cough Monitoring"
)
# Read Data
data <- read.csv(paste0(home_dir, "/Data_Raw/CoughMonitor230382_DATA_2024-10-23_1317.csv"), na.strings = "")
# Setting Labels
label(data$sid) <- "Subject ID"
label(data$redcap_event_name) <- "Event Name"
label(data$redcap_repeat_instrument) <- "Repeat Instrument"
label(data$redcap_repeat_instance) <- "Repeat Instance"
label(data$redcap_survey_identifier) <- "Survey Identifier"
label(data$initials) <- "Initials"
label(data$consented) <- "Was consent to participate in Protocol 23-0382 obtained?"
label(data$consent_date) <- "Date enrolled"
label(data$consent_person) <- "Consent obtained from:"
label(data$consent_relation) <- "Relationship to subject"
label(data$icf_copy) <- "Copy of ICF provided to subject"
label(data$assent) <- "Was assent to participate in Protocol 23-0382 obtained?"
label(data$consent_epic) <- "Was consent documented in Epic?"
label(data$device_id) <- "Device ID"
label(data$carrier) <- "Carrier Service"
label(data$consent_complete) <- "Complete?"
label(data$confirmed_dx) <- "Subject has confirmed diagnosis of CF"
label(data$eligible_age) <- "Subject is between 12 months and 18 years old"
label(data$stable) <- "Subject is clinically stable at enrollment as assessed by the clinic provider"
label(data$support) <- "Does the subject use nocturnal positive pressure or supplemental oxygen?"
label(data$room_env) <- "Does the subject share a bedroom with a sibling?"
label(data$pulm_antib) <- "Has the subject received oral/IV anitbiotics in the last 14 days for a pulmonary exacerbation (except chronic azithromycin)"
label(data$sleep_env) <- "Does the subject regularly spend the night at more than one household?"
label(data$cf_eligibility_complete) <- "Complete?"
label(data$eligible_age_hc) <- " Subject is > age 12 months and < 18 years"
label(data$support_hc) <- "Does the subject use nocturnal positive pressure or supplemental oxygen?"
label(data$room_env_hc) <- "Does the subject share a bedroom with a sibling?"
label(data$underlying_disease_hc) <- "Does the subject have underlying chronic respiratory or cardiac conditions including chronic cough, CF, asthma, obstructive sleep apnea, or congenital heart disease or other condition felt by the investigator to cause chronic nighttime symptoms?"
label(data$sleep_env_hc) <- "Does the subject regularly spend the night at more than one household?"
label(data$control_eligibility_complete) <- "Complete?"
label(data$confirm_enr) <- "The subject was enrolled in study 23-0382"
label(data$enr_date) <- "Date enrolled:"
label(data$enrollment_complete) <- "Complete?"
label(data$dob) <- "DOB"
label(data$age_at_consent) <- "Age at consent"
label(data$language_caregiver) <- "Preferred language of parent/caregiver"
label(data$language_patient) <- "Preferred language of patient"
label(data$email) <- "Email address"
label(data$nih_sex) <- "Gender"
label(data$nih_race) <- "Race  (Choose the one with which you MOST CLOSELY identify)"
label(data$nih_ethnicity) <- "Ethnicity  (Choose the one with which you MOST CLOSELY identify)"
label(data$cohort) <- "Subject cohort"
label(data$mutation1) <- "Mutation 1"
label(data$mutation1_spec) <- "Specify mutation 1, if Other"
label(data$tract_type1) <- "Tract type"
label(data$mutation2) <- "Mutation 2"
label(data$mutation2_spec) <- "Specify mutation 2, if Other"
label(data$tract_type2) <- "Tract type "
label(data$h_obtained) <- "Was height obtained? "
label(data$height) <- "Height (cm)"
label(data$no_h) <- "Specify reason not obtained: "
label(data$w_obtained) <- "Was weight obtained? "
label(data$weight) <- "Weight (kilograms)"
label(data$no_w) <- "Specify reason not obtained: "
label(data$demographics_complete) <- "Complete?"
label(data$date_v1_cf) <- "Visit 1 Date"
label(data$current_antib) <- "Is subject currently taking oral or IV antibiotics? "
label(data$antib1_type) <- "Which antibiotics: "
label(data$inh_antib) <- "Is subject currently taking inhaled antibiotics?"
label(data$antib2_type___1) <- "Select all that apply:  (choice=Tobramycin)"
label(data$antib2_type___2) <- "Select all that apply:  (choice=Colistin)"
label(data$antib2_type___3) <- "Select all that apply:  (choice=Aztreonam lysine)"
label(data$antib2_type___4) <- "Select all that apply:  (choice=Amikacin)"
label(data$cftr_mod) <- "Is subject currently taking CFTR modulators?"
label(data$cftr_mod_type) <- "Select modulator currently prescribed: "
label(data$mucolytic) <- "Is subject currently taking mucolytics?"
label(data$mocol_type___1) <- "Select all that apply:  (choice=Hypertonic saline)"
label(data$mocol_type___2) <- "Select all that apply:  (choice=Dornase alpha)"
label(data$mocol_type___3) <- "Select all that apply:  (choice=N-acetyl cysteine)"
label(data$inh_ster) <- "Is subject currently taking any inhaled corticosteroids?"
label(data$freq_ster) <- "How often does subject take inhaled corticosteroids? "
label(data$air_clear) <- "Is subject doing any airway clearance? "
label(data$freq_clear) <- "How often does subject perform airway clearance? "
label(data$singulair) <- "Is subject currently taking Singulair? "
label(data$antih) <- "Is subject currently taking antihistamines? "
label(data$comment) <- "Comments: "
label(data$comorbid_dx___1) <- "Has subject been diagnosed with any of the following comorbidities in the past 12 months?  (choice=Asthma)"
label(data$comorbid_dx___2) <- "Has subject been diagnosed with any of the following comorbidities in the past 12 months?  (choice=ABPA)"
label(data$comorbid_dx___3) <- "Has subject been diagnosed with any of the following comorbidities in the past 12 months?  (choice=FC related diabetes (CFRD))"
label(data$comorbid_dx___4) <- "Has subject been diagnosed with any of the following comorbidities in the past 12 months?  (choice=Sinusitis)"
label(data$comorbid_dx___5) <- "Has subject been diagnosed with any of the following comorbidities in the past 12 months?  (choice=Nasal Polyps)"
label(data$comorbid_dx___6) <- "Has subject been diagnosed with any of the following comorbidities in the past 12 months?  (choice=Allergic Rhinitis)"
label(data$comorbid_dx___7) <- "Has subject been diagnosed with any of the following comorbidities in the past 12 months?  (choice=Obstructive sleep apnea (OSA))"
label(data$comorbid_dx___8) <- "Has subject been diagnosed with any of the following comorbidities in the past 12 months?  (choice=None of these)"
label(data$polyp_surg) <- "Did subject have polyp removal surgery? "
label(data$g_tube) <- "Does subject currently use a g-tube? "
label(data$g_tube2) <- "Has subject used a g-tube in the past 12 months? "
label(data$pft) <- "For subjects 6 and up, has Spirometry been done in the past 4 months? "
label(data$pft_date) <- "Date of PFT:"
label(data$pre_fvc) <- "Pre-bronchodilator FVC"
label(data$pre_fev) <- "Pre-bronchodilator FEV1"
label(data$pre_fev2575) <- "Pre-bronchodilator FEV25-75: "
label(data$post_pft) <- "Was a bronchodilator administered? "
label(data$post_fvc) <- "Post-FVC:"
label(data$post_fev) <- "Post-FEV1:"
label(data$post_fev2575) <- "Post-FEV25-75:"
label(data$abn_confirm) <- "Does the subject have any abnormal routine throat culture results from the past 12 months? "
label(data$micro_type___1) <- "In the past 12 months, has subject grown any of the following:  (choice=MSAA)"
label(data$micro_type___2) <- "In the past 12 months, has subject grown any of the following:  (choice=MRSA)"
label(data$micro_type___3) <- "In the past 12 months, has subject grown any of the following:  (choice=Psedomonas)"
label(data$micro_type___4) <- "In the past 12 months, has subject grown any of the following:  (choice=Stenotrophomonas)"
label(data$mssa_date) <- "Date(s) of positive MSSA culture(s): "
label(data$mrsa_date) <- "Date(s) of positive MRSA culture(s): "
label(data$pseud_date) <- "Date(s) of positive Pseudomonas culture(s): "
label(data$steno_date) <- "Date(s) of positive Stenotrophomonas culture(s): "
label(data$pulm_ex) <- "Did subject have any prior pulmonary exacerbation treated with antibiotics in the past 12 months? "
label(data$freq_ex) <- "How many? "
label(data$ex_hosp) <- "Did the subject require hospitalizations for any pulmonary exacerbations in the past 12 months?"
label(data$question_complete_cf) <- "Participant completed questionnaires?"
label(data$cf_visit_1_complete) <- "Complete?"
label(data$cfqr_caregivers_613_timestamp) <- "Survey Timestamp"
label(data$cfq_r_p_a) <- "A. What is your childs date of birth?"
label(data$cfq_r_p_b) <- "B. What is your relationship to the child?"
label(data$cfq_r_p_b2) <- "Please describe."
label(data$cfq_r_p_c___1) <- "C. Which of the following best describes your childs racial or ethnic background? (choice=Caucasian)"
label(data$cfq_r_p_c___2) <- "C. Which of the following best describes your childs racial or ethnic background? (choice=African American)"
label(data$cfq_r_p_c___3) <- "C. Which of the following best describes your childs racial or ethnic background? (choice=Hispanic)"
label(data$cfq_r_p_c___4) <- "C. Which of the following best describes your childs racial or ethnic background? (choice=Asian/Oriental or Pacific Islander)"
label(data$cfq_r_p_c___5) <- "C. Which of the following best describes your childs racial or ethnic background? (choice=Native American or Native Alaskan)"
label(data$cfq_r_p_c___6) <- "C. Which of the following best describes your childs racial or ethnic background? (choice=Other)"
label(data$cfq_r_p_c___7) <- "C. Which of the following best describes your childs racial or ethnic background? (choice=Prefer not to answer this question)"
label(data$cfq_r_p_c2) <- "Please describe."
label(data$cfq_r_p_d) <- "D. During the past two weeks, has your child been on vacation or out of school for reasons NOT related to his or her health?"
label(data$cfq_r_p_e) <- "E. What is your date of birth?"
label(data$cfq_r_p_f) <- "F. What is your current marital status?"
label(data$cfq_r_p_g) <- "G. What is the highest grade in school you have completed?"
label(data$cfq_r_p_h) <- "H. Which of the following best describes your current work status?"
label(data$cfq_r_p_1) <- "1. Performing vigorous activities such as running or playing sports"
label(data$cfq_r_p_2) <- "2. Walking as fast as others"
label(data$cfq_r_p_3) <- "3. Climbing stairs as fast as others"
label(data$cfq_r_p_4) <- "4. Carrying or lifting heavy objects such as books, a school bag, or backpack"
label(data$cfq_r_p_5) <- "5. Climbing several flights of stairs"
label(data$cfq_r_p_6) <- "6. Seemed happy"
label(data$cfq_r_p_7) <- "7. Seemed worried"
label(data$cfq_r_p_8) <- "8. Seemed tired"
label(data$cfq_r_p_9) <- "9. Seemed short-tempered"
label(data$cfq_r_p_10) <- "10. Seemed well"
label(data$cfq_r_p_11) <- "11. Seemed grouchy"
label(data$cfq_r_p_12) <- "12. Seemed energetic"
label(data$cfq_r_p_13) <- "13. Was absent or late for school or other activities because of his/her illness or treatments"
label(data$cfq_r_p_14) <- "14. The extent to which your child participated in sports and other physical activities, such as gym class"
label(data$cfq_r_p_15) <- "15. The extent to which your child has difficulty walking"
label(data$cfq_r_p_16) <- "16. My child has trouble recovering after physical effort."
label(data$cfq_r_p_17) <- "17. Mealtimes are a struggle."
label(data$cfq_r_p_18) <- "18. My childs treatments get in the way of his/her activities."
label(data$cfq_r_p_19) <- "19. My child feels small compared to other kids the same age."
label(data$cfq_r_p_20) <- "20. My child feels physically different from other kids the same age."
label(data$cfq_r_p_21) <- "21. My child thinks that he/she is too thin."
label(data$cfq_r_p_22) <- "22. My child feels healthy."
label(data$cfq_r_p_23) <- "23. My child tends to be withdrawn."
label(data$cfq_r_p_24) <- "24. My child leads a normal life."
label(data$cfq_r_p_25) <- "25. My child has less fun than usual."
label(data$cfq_r_p_26) <- "26. My child has trouble getting along with others."
label(data$cfq_r_p_27) <- "27. My child has trouble concentrating."
label(data$cfq_r_p_28) <- "28. My child is able to keep up with his/her school work or summer activities (e.g. camp)."
label(data$cfq_r_p_29) <- "29. My child is not doing as well as usual in school or summer activities (e.g. camp)."
label(data$cfq_r_p_30) <- "30. My child spends a lot of time on his/her treatments everyday."
label(data$cfq_r_p_31) <- "31. How difficult is it for your child to do his/her treatments (including medications) each day?"
label(data$cfq_r_p_32) <- "32. How do you think your childs health is now?"
label(data$cfq_r_p_33) <- "33. My child had trouble gaining weight."
label(data$cfq_r_p_34) <- "34. My child was congested."
label(data$cfq_r_p_35) <- "35. My child coughed during the day."
label(data$cfq_r_p_36) <- "36. My child had to cough up mucus."
label(data$cfq_r_p_37) <- "37. My childs mucus has been mostly:"
label(data$cfq_r_p_38) <- "38. My child wheezed."
label(data$cfq_r_p_39) <- "39. My child had trouble breathing."
label(data$cfq_r_p_40) <- "40. My child woke up during the night because he/she was coughing."
label(data$cfq_r_p_41) <- "41. My child had gas."
label(data$cfq_r_p_42) <- "42. My child had diarrhea."
label(data$cfq_r_p_43) <- "43. My child had abdominal pain."
label(data$cfq_r_p_44) <- "44. My child has had eating problems.Please be sure you have answered all the questions.THANK YOU FOR YOUR COOPERATION!"
label(data$cfqr_caregivers_613_complete) <- "Complete?"
label(data$cfqr_children_ages_611_timestamp) <- "Survey Timestamp"
label(data$cfq_r_y_a) <- "A. What is your date of birth?"
label(data$cfq_r_y_b) <- "B.  Are you?"
label(data$cfq_r_y_c) <- "C. During the past two weeks, have you been on vacation or out of school for reasons NOT related to your health?"
label(data$cfq_r_y_d___1) <- "D. Which of the following best describes your racial background? (choice=Caucasian)"
label(data$cfq_r_y_d___2) <- "D. Which of the following best describes your racial background? (choice=African American)"
label(data$cfq_r_y_d___3) <- "D. Which of the following best describes your racial background? (choice=Hispanic)"
label(data$cfq_r_y_d___4) <- "D. Which of the following best describes your racial background? (choice=Asian / Oriental or Pacific Islander)"
label(data$cfq_r_y_d___5) <- "D. Which of the following best describes your racial background? (choice=Native American or Native Alaskan)"
label(data$cfq_r_y_d___6) <- "D. Which of the following best describes your racial background? (choice=Other (please describe))"
label(data$cfq_r_y_d___7) <- "D. Which of the following best describes your racial background? (choice=Prefer not to answer this question)"
label(data$cfq_r_y_d1) <- "Please describe other"
label(data$cfq_r_y_e) <- "E. Which grade are you in now? (If summer, grade just finished)"
label(data$cfq_r_y_1) <- "1. You were able to walk as fast as others."
label(data$cfq_r_y_2) <- "2. You were able to climb stairs as fast as others."
label(data$cfq_r_y_3) <- "3. You were able to run, jump, and climb as you wanted."
label(data$cfq_r_y_4) <- "4. You were able to run as quickly and as long as others."
label(data$cfq_r_y_5) <- "5. You were able to participate in sports that you enjoy (e.g., swimming, soccer, dancing, or others)."
label(data$cfq_r_y_6) <- "6. You had difficulty carrying or lifting heavy things such as books, your school bag, or a backpack."
label(data$cfq_r_y_7) <- "7. You felt tired."
label(data$cfq_r_y_8) <- "8 . You felt mad."
label(data$cfq_r_y_9) <- "9. You felt grouchy."
label(data$cfq_r_y_10) <- "10. You felt worried."
label(data$cfq_r_y_11) <- "11. You felt sad."
label(data$cfq_r_y_12) <- "12. You had trouble falling asleep."
label(data$cfq_r_y_13) <- "13. You had bad dreams or nightmares."
label(data$cfq_r_y_14) <- "14. You felt good about yourself."
label(data$cfq_r_y_15) <- "15 . You had trouble eating."
label(data$cfq_r_y_16) <- "16. You had to stop fun activities to do your treatments."
label(data$cfq_r_y_17) <- "17 . You were pushed to eat."
label(data$cfq_r_y_18) <- "18 . You were able to do all of your treatments."
label(data$cfq_r_y_19) <- "19 . You enjoyed eating."
label(data$cfq_r_y_20) <- "20 . You got together with friends a lot."
label(data$cfq_r_y_21) <- "21 . You stayed at home more than you wanted to."
label(data$cfq_r_y_22) <- "22 . You felt comfortable sleeping away from home (at a friend or family members house or elsewhere)."
label(data$cfq_r_y_23) <- "23 . You felt left out."
label(data$cfq_r_y_24) <- "24 . You often invited friends to your house."
label(data$cfq_r_y_25) <- "25 . You were teased by other children."
label(data$cfq_r_y_26) <- "26 . You felt comfortable discussing your illness with others (friends, teachers)."
label(data$cfq_r_y_27) <- "27 . You thought you were too short."
label(data$cfq_r_y_28) <- "28 . You thought you were too thin."
label(data$cfq_r_y_29) <- "29 . You thought you were physically different from others your age."
label(data$cfq_r_y_30) <- "30. Doing your treatments bothered you."
label(data$cfq_r_y_31) <- "31 . You coughed during the day."
label(data$cfq_r_y_32) <- "32. You woke up during the night because you were coughing."
label(data$cfq_r_y_33) <- "33. You had to cough up mucus."
label(data$cfq_r_y_34) <- "34. You had trouble breathing."
label(data$cfq_r_y_35) <- "35.Your stomach hurt.Please be sure all the questions have been answered.THANK YOU FOR YOUR COOPERATION!"
label(data$cfqr_children_ages_611_complete) <- "Complete?"
label(data$cfqr_children_ages_1213_timestamp) <- "Survey Timestamp"
label(data$cfq_r_o_a) <- "A. What is your date of birth?"
label(data$cfq_r_o_b) <- "B. Are you?"
label(data$cfq_r_o_c) <- "C. During the past two weeks, have you been on vacation or out of school for reasons NOT related to your health?"
label(data$cfq_r_o_d___1) <- "D. Which of the following best describes your racial background? (choice=Caucasian)"
label(data$cfq_r_o_d___2) <- "D. Which of the following best describes your racial background? (choice=African American)"
label(data$cfq_r_o_d___3) <- "D. Which of the following best describes your racial background? (choice=Hispanic)"
label(data$cfq_r_o_d___4) <- "D. Which of the following best describes your racial background? (choice=Asian/Oriental or Pacific Islander)"
label(data$cfq_r_o_d___5) <- "D. Which of the following best describes your racial background? (choice=Native American or Native Alaskan)"
label(data$cfq_r_o_d___6) <- "D. Which of the following best describes your racial background? (choice=Other)"
label(data$cfq_r_o_d___7) <- "D. Which of the following best describes your racial background? (choice=Prefer not to answer this question)"
label(data$cfq_r_d_other) <- "Please describe your racial background"
label(data$cfq_r_o_e) <- "E. What grade are you in now? (If summer, grade you just finished)"
label(data$cfq_r_o1) <- "1. You were able to walk as fast as others."
label(data$cfq_r_o2) <- "2. You were able to climb stairs as fast as others."
label(data$cfq_r_o3) <- "3. You were able to run, jump, and climb as you wanted."
label(data$cfq_r_o4) <- "4. You were able to run as quickly and as long as others."
label(data$cfq_r_o5) <- "5. You were able to participate in sports that you enjoy (e.g., swimming, soccer, dancing or others)."
label(data$cfq_r_o6) <- "6. You had difficulty carrying or lifting heavy things such as books, your school bag, or a backpack."
label(data$cfq_r_o7) <- "7. You felt tired."
label(data$cfq_r_o8) <- "8. You felt mad."
label(data$cfq_r_or9) <- "9. You felt grouchy."
label(data$cfq_r_o10) <- "10. You felt worried."
label(data$cfq_r_o11) <- "11. You felt sad."
label(data$cfq_r_o12) <- "12. You had trouble falling asleep."
label(data$cfq_r_o13) <- "13. You had bad dreams or nightmares."
label(data$cfq_r_o14) <- "14. You felt good about yourself."
label(data$cfq_r_o15) <- "15. You had trouble eating."
label(data$cfq_r_o16) <- "16. You had to stop fun activities to do your treatments."
label(data$cfq_r_o17) <- "17. You were pushed to eat."
label(data$cfq_r_o18) <- "18. You were able to do all of your treatments."
label(data$cfq_r_o19) <- "19. You enjoyed eating."
label(data$cfq_r_o20) <- "20. You got together with friends a lot."
label(data$cfq_r_o21) <- "21. You stayed at home more than you wanted to."
label(data$cfq_r_o22) <- "22. You felt comfortable sleeping away from home (at a friend or family members house or elsewhere)."
label(data$cfq_r_o23) <- "23. You felt left out."
label(data$cfq_r_o24) <- "24. You often invited friends to your house."
label(data$cfq_r_o25) <- "25. You were teased by other children."
label(data$cfq_r_o26) <- "26. You felt comfortable discussing your illness with others (friends, teachers)."
label(data$cfq_r_o27) <- "27. You thought you were too short."
label(data$cfq_r_o28) <- "28. You thought you were too thin."
label(data$cfq_r_o29) <- "29. You thought you were physically different from others your age."
label(data$cfq_r_o30) <- "30. Doing your treatments bothered you."
label(data$cfq_r_o31) <- "31. You coughed during the day."
label(data$cfq_r_o32) <- "32. You woke up during the night because you were coughing."
label(data$cfq_r_o33) <- "33. You had to cough up mucus."
label(data$cfq_r_o34) <- "34. You had trouble breathing."
label(data$cfq_r_o35) <- "35. Your stomach hurt.Please be sure all the questions have been answered.THANK YOU FOR YOUR COOPERATION!"
label(data$cfqr_children_ages_1213_complete) <- "Complete?"
label(data$cfqr_adolescents_and_adults_14_years_timestamp) <- "Survey Timestamp"
label(data$cfq_r_a_a) <- "A. What is your date of birth?"
label(data$cfq_r_a_b) <- "B. What is your gender?"
label(data$cfq_r_a_c) <- "C. During the past two weeks, have you been on vacation or out of school or work for reasons NOT related to your health?"
label(data$cfq_r_a_d) <- "D. What is your current marital status?"
label(data$cfq_r_a_e___1) <- "E. Which of the following best describes your racial background? (choice=Caucasian)"
label(data$cfq_r_a_e___2) <- "E. Which of the following best describes your racial background? (choice=African American)"
label(data$cfq_r_a_e___3) <- "E. Which of the following best describes your racial background? (choice=Hispanic)"
label(data$cfq_r_a_e___4) <- "E. Which of the following best describes your racial background? (choice=Asian/Oriental or Pacific Islander)"
label(data$cfq_r_a_e___5) <- "E. Which of the following best describes your racial background? (choice=Native American or Native Alaskan)"
label(data$cfq_r_a_e___6) <- "E. Which of the following best describes your racial background? (choice=Other)"
label(data$cfq_r_a_e___7) <- "E. Which of the following best describes your racial background? (choice=Prefer not to answer this question.)"
label(data$cfq_r_a_e1) <- "Please describe"
label(data$cfq_r_a_f) <- "F. What is the highest grade of school you have completed?"
label(data$cfq_r_a_g) <- "G. Which of the following best describes your current work or school status?"
label(data$cfq_r_a_1) <- "1. Performing vigorous activities such as running or playing sports."
label(data$cfq_r_a_2) <- "2. Walking as fast as others."
label(data$cfq_r_a_3) <- "3. Carrying or lifting heavy things such as books, groceries, or school bags."
label(data$cfq_r_a_4) <- "4. Climbing one flight of stairs."
label(data$cfq_r_a_5) <- "5. Climbing stairs as fast as others."
label(data$cfq_r_a_6) <- "6. You felt well."
label(data$cfq_r_a_7) <- "7. You felt worried."
label(data$cfq_r_a_8) <- "8. You felt useless."
label(data$cfq_r_a_9) <- "9. You felt tired."
label(data$cfq_r_a_10) <- "10. You felt energetic."
label(data$cfq_r_a_11) <- "11. You felt exhausted."
label(data$cfq_r_a_12) <- "12. You felt sad."
label(data$cfq_r_a_13) <- "13. To what extent do you have difficulty walking?"
label(data$cfq_r_a_14) <- "14. How do you feel about eating?"
label(data$cfq_r_a_15) <- "15. To what extent do your treatments make your daily life more difficult?"
label(data$cfq_r_a_16) <- "16. How much time do you currently spend each day on your treatments?"
label(data$cfq_r_a_17) <- "17. How difficult is it for you to do your treatments (including medications) each day?"
label(data$cfq_r_a_18) <- "18. How do you think your health is now?"
label(data$cfq_r_a_19) <- "19. I have trouble recovering after physical effort."
label(data$cfq_r_a_20) <- "20. I have to limit vigorous activities such as running or playing sports."
label(data$cfq_r_a_21) <- "21. I have to force myself to eat."
label(data$cfq_r_a_22) <- "22. I have to stay at home more than I want to."
label(data$cfq_r_a_23) <- "23. I feel comfortable discussing my illness with others."
label(data$cfq_r_a_24) <- "24. I think I am too thin."
label(data$cfq_r_a_25) <- "25. I think I look different from others my age."
label(data$cfq_r_a_26) <- "26. I feel bad about my physical appearance."
label(data$cfq_r_a_27) <- "27. People are afraid that I may be contagious."
label(data$cfq_r_a_28) <- "28. I get together with my friends a lot."
label(data$cfq_r_a_29) <- "29. I think my coughing bothers others."
label(data$cfq_r_a_30) <- "30. I feel comfortable going out at night."
label(data$cfq_r_a_31) <- "31. I often feel lonely."
label(data$cfq_r_a_32) <- "32. I feel healthy."
label(data$cfq_r_a_33) <- "33. It is difficult to make plans for the future (for example, going to college, getting married, advancing in a job, etc.)."
label(data$cfq_r_a_34) <- "34. I lead a normal life."
label(data$cfq_r_a_35) <- "35. To what extent did you have trouble keeping up with your schoolwork, professional work, or other daily activities during the past two weeks?"
label(data$cfq_r_a_36) <- "36. How often were you absent from school, work, or unable to complete daily activities during the last two weeks because of your illness or treatments?"
label(data$cfq_r_a_37) <- "37. How often does CF get in the way of meeting your school, work, or personal goals?"
label(data$cfq_r_a_38) <- "38. How often does CF interfere with getting out of the house to run errands such as shopping or going to the bank?"
label(data$cfq_r_a_39) <- "39. Have you had trouble gaining weight?"
label(data$cfq_r_a_40) <- "40. Have you been congested?"
label(data$cfq_r_a_41) <- "41. Have you been coughing during the day?"
label(data$cfq_r_a_42) <- "42. Have you had to cough up mucus?"
label(data$cfq_r_a_43) <- "43. Has your mucus been mostly:"
label(data$cfq_r_a_44) <- "44. Have you been wheezing?"
label(data$cfq_r_a_45) <- "45. Have you had trouble breathing?"
label(data$cfq_r_a_46) <- "46. Have you woken up during the night because you were coughing?"
label(data$cfq_r_a_47) <- "47. Have you had problems with gas?"
label(data$cfq_r_a_48) <- "48. Have you had diarrhea?"
label(data$cfq_r_a_49) <- "49. Have you had abdominal pain?"
label(data$cfq_r_a_50) <- "50. Have you had eating problems?Please be sure you have answered all the questions.THANK YOU FOR YOUR COOPERATION!"
label(data$cfqr_adolescents_and_adults_14_years_complete) <- "Complete?"
label(data$spanish_cfqr_caregivers_age_613_timestamp) <- "Survey Timestamp"
label(data$cfqr_p_es_a) <- "A. ¿Cuál es la fecha de nacimiento de su niño(a)?"
label(data$cfqr_p_es_b) <- "B. ¿Cuál es su relación con él (la) niño(a)?"
label(data$cfqr_p_es_b_spec) <- "Especifique"
label(data$cfqr_p_es_c___1) <- "E. ¿Cuál de las siguientes alternativas describe su raza? (choice=Blanco)"
label(data$cfqr_p_es_c___2) <- "E. ¿Cuál de las siguientes alternativas describe su raza? (choice=Negro)"
label(data$cfqr_p_es_c___3) <- "E. ¿Cuál de las siguientes alternativas describe su raza? (choice=Mulato)"
label(data$cfqr_p_es_c___4) <- "E. ¿Cuál de las siguientes alternativas describe su raza? (choice=Indio)"
label(data$cfqr_p_es_c___5) <- "E. ¿Cuál de las siguientes alternativas describe su raza? (choice=Asiatico)"
label(data$cfqr_p_es_c___6) <- "E. ¿Cuál de las siguientes alternativas describe su raza? (choice=Otro {cfqr_p_es_c_spec})"
label(data$cfqr_p_es_c___7) <- "E. ¿Cuál de las siguientes alternativas describe su raza? (choice=Prefiere no contestar a la pregunta)"
label(data$cfqr_p_es_c_spec) <- "Especifique"
label(data$cfqr_p_es_d) <- "D. Durante las dos semanas pasadas, ¿ha estado su niño(a) de vacaciones o faltado a la escuela (colegio) por razones no relacionadas a su salud?"
label(data$cfqr_p_es_e) <- "E. ¿Cuál es su fecha de nacimiento?"
label(data$cfqr_p_es_f) <- "F. Estado Civil"
label(data$cfqr_p_es_g) <- "G. Nivel de educacion"
label(data$cfqr_p_es_h) <- "H. ¿Cuál de las siguientes opciones mejor describe su estado de estudios o a que se dedica?"
label(data$cfqr_p_es_1) <- "1. Participando en actividades extenuantes como correr o practicar algún deporte"
label(data$cfqr_p_es_2) <- "2. Caminando tan rápido como los demás"
label(data$cfqr_p_es_3) <- "3. Subiendo escaleras tan rápido como los demás"
label(data$cfqr_p_es_4) <- "4. Cargando o levantar cosas pesadas como libros o una mochila"
label(data$cfqr_p_es_5) <- "5. Subiendo muchos escalones"
label(data$cfqr_p_es_6) <- "6. Pareció estar contento(a)"
label(data$cfqr_p_es_7) <- "7. Pareció estar preocupado(a)"
label(data$cfqr_p_es_8) <- "8. Pareció estar cansado(a)"
label(data$cfqr_p_es_9) <- "9. Pareció estar de mal humor"
label(data$cfqr_p_es_10) <- "10. Pareció estar bien"
label(data$cfqr_p_es_11) <- "11. Pareció estar enojado(a)"
label(data$cfqr_p_es_12) <- "12. Pareció tener mucha energía"
label(data$cfqr_p_es_13) <- "13. Estuvo ausente o llego tarde a la escuela u otra actividad por culpa de su enfermedad o tratamientos"
label(data$cfqr_p_es_14) <- "14. ¿ Cuánto participó su niño(a) en deportes en la escuela, incluyendo durante el recreo y la clase de educación física?"
label(data$cfqr_p_es_15) <- "15. ¿Cuán difícil le resulta caminar a su niño(a)?"
label(data$cfqr_p_es_16) <- "16. Mi niño(a) tiene dificultad recuperándose después de un esfuerzo físico"
label(data$cfqr_p_es_17) <- "17. Las horas de comer son difíciles"
label(data$cfqr_p_es_18) <- "18. Los tratamientos de mi niño(a) interfieren con sus actividades"
label(data$cfqr_p_es_19) <- "19. Mi niño(a) se siente pequeño(a) comparado con otros niños(as) de su misma edad"
label(data$cfqr_p_es_20) <- "20. Mi niño(a) se siente físicamente diferente a otros niños(as) de su misma edad"
label(data$cfqr_p_es_21) <- "21. Mi niño(a) piensa que es muy delgado(a)"
label(data$cfqr_p_es_22) <- "22. Mi niño(a) se siente saludable"
label(data$cfqr_p_es_23) <- "23. Mi niño(a) tiende a ser retraído(a)"
label(data$cfqr_p_es_24) <- "24. Mi niño(a) lleva una vida normal"
label(data$cfqr_p_es_25) <- "25. Mi niño(a) se divierte menos de lo usual"
label(data$cfqr_p_es_26) <- "26. Mi niño(a) tiene dificultad llevándose bien con los demás"
label(data$cfqr_p_es_27) <- "27. Mi niño(a) tiene dificultad concentrándose"
label(data$cfqr_p_es_28) <- "28. Mi niño(a) es capaz de mantenerse al día con sus tareas de la escuela o actividades de verano (ejemplo: en el campamento de verano)"
label(data$cfqr_p_es_29) <- "29. A mi niño(a) no le va tan bien como antes en la escuela o en sus actividades del verano (ejemplo: en el campamento de verano)"
label(data$cfqr_p_es_30) <- "30. Mi niño gasta mucho tiempo en sus tratamientos todos los días"
label(data$cfqr_p_es_31) <- "31. ¿Cuán difícil es para su niño(a) hacer sus tratamientos (incluyendo los medicamentos) cada día?"
label(data$cfqr_p_es_32) <- "32. ¿Cómo cree que está la salud de su niño(a) en este momento?"
label(data$cfqr_p_es_33) <- "33. Mi niño(a) ha tenido dificultad aumentando de peso"
label(data$cfqr_p_es_34) <- "34. Mi niño(a) estuvo congestionado(a)"
label(data$cfqr_p_es_35) <- "35. Mi niño(a) tosió durante el día"
label(data$cfqr_p_es_36) <- "36. Mi niño(a) tosió mucosidad"
label(data$cfqr_p_es_37) <- "37. La mucosidad de mi niño(a) ha sido mayormente:"
label(data$cfqr_p_es_38) <- "38. Mi niño(a) estuvo con sonido asmático al respirar"
label(data$cfqr_p_es_39) <- "39. Mi niño(a) tuvo dificultad al respirar"
label(data$cfqr_p_es_40) <- "40. Mi niño(a) se despertó durante la noche porque estaba tosiendo"
label(data$cfqr_p_es_41) <- "41. Mi niño(a) tuvo gases"
label(data$cfqr_p_es_42) <- "42. Mi niño(a) tuvo diarrea"
label(data$cfqr_p_es_43) <- "43. Mi niño(a) tuvo dolor abdominal"
label(data$cfqr_p_es_44) <- "44. Mi niño(a) tuvo problemas para comer"
label(data$spanish_cfqr_caregivers_age_613_complete) <- "Complete?"
label(data$cfqr_children_ages_1213_2_timestamp) <- "Survey Timestamp"
label(data$cfq_r_o_a_es) <- "A. ¿Cuál es tu fecha de nacimiento?"
label(data$cfq_r_o_b_es) <- "B. ¿Eres del sexo?"
label(data$cfq_r_o_c_es) <- "C. Durante las dos semanas pasadas, ¿has estado de vacaciones o faltado a la escuela (colegio) por razones NO relacionadas a tu salud?"
label(data$cfq_r_o_d_es___1) <- "D. ¿Cuál de las siguientes alternativas describe tu raza? (Por favor seleccione todas las que apliquen) (choice=Blanco)"
label(data$cfq_r_o_d_es___2) <- "D. ¿Cuál de las siguientes alternativas describe tu raza? (Por favor seleccione todas las que apliquen) (choice=Negro)"
label(data$cfq_r_o_d_es___3) <- "D. ¿Cuál de las siguientes alternativas describe tu raza? (Por favor seleccione todas las que apliquen) (choice=Mulato)"
label(data$cfq_r_o_d_es___4) <- "D. ¿Cuál de las siguientes alternativas describe tu raza? (Por favor seleccione todas las que apliquen) (choice=Indio)"
label(data$cfq_r_o_d_es___5) <- "D. ¿Cuál de las siguientes alternativas describe tu raza? (Por favor seleccione todas las que apliquen) (choice=Asiatico)"
label(data$cfq_r_o_d_es___6) <- "D. ¿Cuál de las siguientes alternativas describe tu raza? (Por favor seleccione todas las que apliquen) (choice=Otro {cfq_r_d_other_es})"
label(data$cfq_r_o_d_es___7) <- "D. ¿Cuál de las siguientes alternativas describe tu raza? (Por favor seleccione todas las que apliquen) (choice=Prefer not to answer this question)"
label(data$cfq_r_d_other_es) <- "Especifique"
label(data$cfq_r_o_e_es) <- "E. ¿En que grado estás en la escuela (colegio)? (Si ya completaste el término escolar, ¿cuál completaste?)"
label(data$cfq_r_o1_es) <- "1. Pudiste caminar tan rápido como los demás"
label(data$cfq_r_o2_es) <- "2. Pudiste subir escaleras tan rápido como los demás"
label(data$cfq_r_o3_es) <- "3. Pudiste correr, brincar y escalar como quisiste"
label(data$cfq_r_o4_es) <- "4. Pudiste correr tan rápido y tan lejos como los demás."
label(data$cfq_r_o5_es) <- "5. Pudiste participar en deportes que te gustan (béisbol, fútbol, baile, baloncesto, natación, etc.)"
label(data$cfq_r_o6_es) <- "6. Tuviste dificultad cargando o levantando objetos pesados como tus libros, tu bulto escolar, o una mochila"
label(data$cfqr_o7_es) <- "7. Te sentiste cansado(a)"
label(data$cfqr_o8_es) <- "8. Te sentiste enojado(a)"
label(data$cfqr_o9_es) <- "9. Estuviste de mal humor"
label(data$cfqr_o10_es) <- "10. Te sentiste preocupado(a)"
label(data$cfqr_o11_es) <- "11. Te sentiste triste"
label(data$cfqr_o12_es) <- "12. Tuviste dificultad en dormirte"
label(data$cfqr_o13_es) <- "13. Tuviste sueños malos o pesadillas"
label(data$cfq_r_o14_es) <- "14. Te sentiste bien con ti mismo(a)"
label(data$cfq_r_o15_es) <- "15. Te fué difícil comer"
label(data$cfq_r_o16_es) <- "16. Tuviste que dejar hacer actividades divertidas para hacer tus tratamientos"
label(data$cfq_r_o17_es) <- "17. Te tuvieron que obligar a comer"
label(data$cfq_r_o18_es) <- "18. Pudiste hacer todos tus tratamientos"
label(data$cfq_r_o19_es) <- "19. Disfrutaste comer"
label(data$cfq_r_o20_es) <- "20. Te reuniste mucho con tus amigos."
label(data$cfq_r_o21_es) <- "21. Te quedaste en casa más de lo que hubieses querido."
label(data$cfq_r_o22_es) <- "22. Te sentiste cómodo(a) durmiendo fuera de casa (en casa de amigos, familiares ú otro sitio)."
label(data$cfq_r_o23_es) <- "23. Te sentiste excluido(a)."
label(data$cfq_r_o24_es) <- "24. Invitaste amigos(as) a tu casa a menudo."
label(data$cfq_r_o25_es) <- "25. Otros niños(as) se burlaron de ti."
label(data$cfq_r_o26_es) <- "26. Te sentiste cómodo hablando de tu enfermedad con otros (tus amigos, profesores)."
label(data$cfq_r_o27_es) <- "27. Pensaste que eras muy bajo(a) de estatura."
label(data$cfq_r_o28_es) <- "28. Pensaste que estabas muy delgado(a)."
label(data$cfq_r_o29_es) <- "29. Pensaste que eras físicamente diferente a otros de tu misma edad"
label(data$cfq_r_o30_es) <- "30. Te molestó hacer tus tratamientos "
label(data$cfqr_o31_es) <- "31. Tosiste durante el día"
label(data$cfqr_o32_es) <- "32. Te despertaste durante la noche porque estabas tosiendo"
label(data$cfqr_o33_es) <- "33. Tosiste mucosidad"
label(data$cfqr_o34_es) <- "34. Tuviste dificultad respirando"
label(data$cfqr_o35_es) <- "35. Te dolió el estómago"
label(data$cfqr_children_ages_1213_2_complete) <- "Complete?"
label(data$spanish_cfqr_adolescents_and_adults_timestamp) <- "Survey Timestamp"
label(data$cfqr_a_es_a) <- "A. Fecha de nacimiento"
label(data$cfqr_a_es_b) <- "B. Sexo"
label(data$cfqr_a_es_c) <- "C. En las pasadas dos semanas, ¿ha estado de vacaciones ofaltado a la escuela (colegio) o trabajo por razones NO  relacionadas a su salud?"
label(data$cfqr_a_es_d) <- "D. Estado Civil"
label(data$cfqr_a_es_e___1) <- "E. ¿Cuál de las siguientes alternativas describe su raza? (choice=Blanco)"
label(data$cfqr_a_es_e___2) <- "E. ¿Cuál de las siguientes alternativas describe su raza? (choice=Negro)"
label(data$cfqr_a_es_e___3) <- "E. ¿Cuál de las siguientes alternativas describe su raza? (choice=Mulato)"
label(data$cfqr_a_es_e___4) <- "E. ¿Cuál de las siguientes alternativas describe su raza? (choice=Indio)"
label(data$cfqr_a_es_e___5) <- "E. ¿Cuál de las siguientes alternativas describe su raza? (choice=Asiatico)"
label(data$cfqr_a_es_e___6) <- "E. ¿Cuál de las siguientes alternativas describe su raza? (choice=Otro {cfqr_a_es_e_spec})"
label(data$cfqr_a_es_e___7) <- "E. ¿Cuál de las siguientes alternativas describe su raza? (choice=Prefiere no contestar a la pregunta)"
label(data$cfqr_a_es_e_spec) <- "Especifique:"
label(data$cfqr_a_es_f) <- "F. Nivel de educacion"
label(data$cfqr_a_es_g) <- "G. ¿Cuál de las siguientes opciones mejor describe su estado de estudios o a que se dedica?"
label(data$cfqr_a_es_1) <- "1. Participando en actividades extenuantes como correr o practicar algún deporte"
label(data$cfqr_a_es_2) <- "2. Caminando tan rápido como los demás"
label(data$cfqr_a_es_3) <- "3. Cargando o levantando cosas pesadas como libros o mochilas"
label(data$cfqr_a_es_4) <- "4. Subiendo escaleras"
label(data$cfqr_a_es_5) <- "5. Subiendo escaleras tan rápido como los demás"
label(data$cfqr_a_es_6) <- "6. Se sintio bien"
label(data$cfqr_a_es_7) <- "7. Se sintio preocupado(a)"
label(data$cfqr_a_es_8) <- "8. Se sintio inutil"
label(data$cfqr_a_es_9) <- "9. Se sintio cansado(a)"
label(data$cfqr_a_es_10) <- "10. Se sintio con mucha energia"
label(data$cfqr_a_es_11) <- "11. Se sintio agotado(a)"
label(data$cfqr_a_es_12) <- "12. Se sintio triste"
label(data$cfqr_a_es_13) <- "13, ¿Hasta qué punto tiene dificultad al caminar?"
label(data$cfqr_a_es_14) <- "14, ¿Cómo se siente con respecto al comer?"
label(data$cfqr_a_es_15) <- "15, ¿Hasta qué punto los tratamientos le hacen su vida diaria más difícil?"
label(data$cfqr_a_es_16) <- "16. ¿Cuánto tiempo les dedica cada día a sus tratamientos?"
label(data$cfqr_a_es_17) <- "17. ¿Cuán difícil es para usted hacer los tratamientos (incluyendo medicamentos) cada día?"
label(data$cfqr_a_es_18) <- "18. ¿Cómo piensa que está su salud en este momento?"
label(data$cfqr_a_es_19) <- "19. Tengo dificultad recuperándome después de esfuerzo físico"
label(data$cfqr_a_es_20) <- "20. Tengo que limitar mis actividades físicas como correr o practicar deportes"
label(data$cfqr_a_es_21) <- "21. Tengo que obligarme a comer"
label(data$cfqr_a_es_22) <- "22. Tengo que quedarme en casa más de lo que quisiera"
label(data$cfqr_a_es_23) <- "23. Me siento cómodo discutiendo mi enfermedad con otros"
label(data$cfqr_a_es_24) <- "24. Pienso que estoy muy delgado(a)"
label(data$cfqr_a_es_25) <- "25. Pienso que me veo diferente en comparación con otros(as) de mi edad"
label(data$cfqr_a_es_26) <- "26. Me siento mal con respecto a mi apariencia física"
label(data$cfqr_a_es_27) <- "27. La gente teme a contagiarse de mí"
label(data$cfqr_a_es_28) <- "28. Me reúno con mis amigos a menudo"
label(data$cfqr_a_es_29) <- "29. Pienso que mi tos molesta a los demás"
label(data$cfqr_a_es_30) <- "30. Me siento cómodo(a) saliendo por la noche"
label(data$cfqr_a_es_31) <- "31. Me siento solo a menudo"
label(data$cfqr_a_es_32) <- "32. Me siento(a) saludable"
label(data$cfqr_a_es_33) <- "33. Es difícil hacer planes para el futuro (por ejemplo, ir a la universidad,  matrimonio, etc.)"
label(data$cfqr_a_es_34) <- "34. Llevo una vida normal"
label(data$cfqr_a_es_35) <- "35. ¿Durante las dos semanas pasadas, hasta qué punto tuvo dificultad manteniéndose al día en su trabajo escolar, profesional, o en otras actividades diarias?"
label(data$cfqr_a_es_36) <- "36. ¿Durante las últimas dos semanas, con qué frecuencia estuvo ausente de la escuela, trabajo, o no pudo completar sus actividades diarias por culpa de su enfermedad o sus tratamientos?"
label(data$cfqr_a_es_37) <- "37. ¿Con qué frecuencia le impide a usted la fibrosis cística de alcanzar sus metas de escuela, trabajo o metas personales?"
label(data$cfqr_a_es_38) <- "38. ¿Con qué frecuencia le impide la fibrosis cística de salir de su casa para hacer diligencias como ir de compras o ir al banco?"
label(data$cfqr_a_es_39) <- "39. Ha tenido dificultad aumentando de peso"
label(data$cfqr_a_es_40) <- "40. Ha estado congestionado(a)"
label(data$cfqr_a_es_41) <- "41. Ha estado tosiendo durante el día"
label(data$cfqr_a_es_42) <- "42. Ha tenido que toser mucosidad"
label(data$cfqr_a_es_43) <- "43. Su mucosidad ha sido mayormente: "
label(data$cfqr_a_es_44) <- "44. Ha estado con sonido asmático al respirar"
label(data$cfqr_a_es_45) <- "45. Ha tenido dificultad al respirar"
label(data$cfqr_a_es_46) <- "46. Se ha despertado durante la noche porque estaba tosiendo"
label(data$cfqr_a_es_47) <- "47. Ha tenido problemas con gases"
label(data$cfqr_a_es_48) <- "48. Ha tenido diarrea"
label(data$cfqr_a_es_49) <- "49. Ha tenido dolor abdominal"
label(data$cfqr_a_es_50) <- "50. Tuvo dificultad con su apetito"
label(data$spanish_cfqr_adolescents_and_adults_complete) <- "Complete?"
label(data$date_v1_hc) <- "Visit Date"
label(data$id) <- "Machine serial number/ID:"
label(data$meds_hc) <- "Is subject currently taking any medications?"
label(data$med_list) <- "List of medications: "
label(data$comorbid_dx_hc___3) <- "Has subject been diagnosed with any comorbidities in the past 12 months?  (choice=Allergic Rhinitis)"
label(data$comorbid_dx_hc___4) <- "Has subject been diagnosed with any comorbidities in the past 12 months?  (choice=Other)"
label(data$comorbid_dx_hc___5) <- "Has subject been diagnosed with any comorbidities in the past 12 months?  (choice=None of these)"
label(data$pulm_ex_hc) <- "Did subject have any respiratory illnesses in the past 12 months? "
label(data$antib) <- "Were antibiotics prescribed?"
label(data$antib_dt) <- "Start and end date of last antibiotic course: "
label(data$freq_ex_hc) <- "How many? "
label(data$question_complete_hc) <- "Has participant completed the questionnaires?"
label(data$hc_visit_1_complete) <- "Complete?"
label(data$hc_pediatric_cough_survey_timestamp) <- "Survey Timestamp"
label(data$pcq_date) <- "Todays date: "
label(data$q1) <- "Q1. How frequent was your childs cough last night? "
label(data$q2) <- "Q2. How much did last nights cough affect your childs ability to sleep? "
label(data$q3) <- "Q3. How much did last nights cough affect your ability to sleep?"
label(data$q4) <- "Q4. How severe was your childs cough last night?"
label(data$q5) <- "Q5. How bothersome was last nights cough to your child? "
label(data$hc_pediatric_cough_survey_complete) <- "Complete?"
label(data$interim_call_date) <- "Date of phone call"
label(data$surveys_interim) <- "Have you been able to fill out the surveys sent to your email?"
label(data$abx_interim) <- "Was your child prescribed antibiotics for treatment of a respiratory illness since the last phone call?"
label(data$abx_interim_spec) <- "Comments regarding antibiotics: "
label(data$meds_interim) <- "Did the subject have any medication changes since the last phone call?"
label(data$meds_interim_spec) <- "Comments regarding medication changes:"
label(data$interim_phone_call_complete) <- "Complete?"
label(data$cohort_v2) <- "Subject cohort:"
label(data$date_v2) <- "Date of Study Conclusion Visit"
label(data$h_obtained_v2) <- "Was height obtained? "
label(data$height_v2) <- "Height (cm)"
label(data$no_h_v2) <- "Specify reason not obtained: "
label(data$w_obtained_v2) <- "Was weight obtained? "
label(data$weight_v2) <- "Weight (kilograms)"
label(data$no_w_v2) <- "Specify reason not obtained: "
label(data$med_changes) <- "Did the subject have any medication changes during the last phone call?"
label(data$med_changes_spec) <- "Comments: "
label(data$pft_v2) <- "For subjects with CF age 6 and up, has Spirometry been done in the past 4 months? "
label(data$pft_date_v2) <- "Date of PFT:"
label(data$pre_fvc_v2) <- "Pre-bronchodilator FVC"
label(data$pre_fev_v2) <- "Pre-bronchodilator FEV1"
label(data$pre_fev2575_v2) <- "Pre-bronchodilator FEV25-75: "
label(data$post_pft_v2) <- "Was a bronchodilator administered? "
label(data$post_fvc_v2) <- "Post-FVC:"
label(data$post_fev_v2) <- "Post-FEV1:"
label(data$post_fev2575_v2) <- "Post-FEV25-75:"
label(data$pulm_ex_v2) <- "Was the subject prescribed antibiotics for treatment of a respiratory illness during the study period?"
label(data$pulm_ex_spec_v2) <- "Comments regarding pulmonary exacerbation: "
label(data$abx_other_v2) <- "Was the subject prescribed antibiotics for any other reason during the study period?"
label(data$abx_other_spec_v2) <- "Comments:"
label(data$device_returned) <- "Was the device returned at the end of the study?"
label(data$return_id) <- "Machine serial number/ID:"
label(data$visit_2_complete) <- "Complete?"
label(data$cfq_r_p_a_v2) <- "A. What is your childs date of birth?"
label(data$cfq_r_p_b_v2) <- "B. What is your relationship to the child?"
label(data$cfq_r_p_b2_v2) <- "Please describe."
label(data$cfq_r_p_c_v2___1) <- "C. Which of the following best describes your childs racial or ethnic background? (choice=Caucasian)"
label(data$cfq_r_p_c_v2___2) <- "C. Which of the following best describes your childs racial or ethnic background? (choice=African American)"
label(data$cfq_r_p_c_v2___3) <- "C. Which of the following best describes your childs racial or ethnic background? (choice=Hispanic)"
label(data$cfq_r_p_c_v2___4) <- "C. Which of the following best describes your childs racial or ethnic background? (choice=Asian/Oriental or Pacific Islander)"
label(data$cfq_r_p_c_v2___5) <- "C. Which of the following best describes your childs racial or ethnic background? (choice=Native American or Native Alaskan)"
label(data$cfq_r_p_c_v2___6) <- "C. Which of the following best describes your childs racial or ethnic background? (choice=Other)"
label(data$cfq_r_p_c_v2___7) <- "C. Which of the following best describes your childs racial or ethnic background? (choice=Prefer not to answer this question)"
label(data$cfq_r_p_c2_v2) <- "Please describe."
label(data$cfq_r_p_d_v2) <- "D. During the past two weeks, has your child been on vacation or out of school for reasons NOT related to his or her health?"
label(data$cfq_r_p_e_v2) <- "E. What is your date of birth?"
label(data$cfq_r_p_f_v2) <- "F. What is your current marital status?"
label(data$cfq_r_p_g_v2) <- "G. What is the highest grade in school you have completed?"
label(data$cfq_r_p_h_v2) <- "H. Which of the following best describes your current work status?"
label(data$cfq_r_p_1_v2) <- "1. Performing vigorous activities such as running or playing sports"
label(data$cfq_r_p_2_v2) <- "2. Walking as fast as others"
label(data$cfq_r_p_3_v2) <- "3. Climbing stairs as fast as others"
label(data$cfq_r_p_4_v2) <- "4. Carrying or lifting heavy objects such as books, a school bag, or backpack"
label(data$cfq_r_p_5_v2) <- "5. Climbing several flights of stairs"
label(data$cfq_r_p_6_v2) <- "6. Seemed happy"
label(data$cfq_r_p_7_v2) <- "7. Seemed worried"
label(data$cfq_r_p_8_v2) <- "8. Seemed tired"
label(data$cfq_r_p_9_v2) <- "9. Seemed short-tempered"
label(data$cfq_r_p_10_v2) <- "10. Seemed well"
label(data$cfq_r_p_11_v2) <- "11. Seemed grouchy"
label(data$cfq_r_p_12_v2) <- "12. Seemed energetic"
label(data$cfq_r_p_13_v2) <- "13. Was absent or late for school or other activities because of his/her illness or treatments"
label(data$cfq_r_p_14_v2) <- "14. The extent to which your child participated in sports and other physical activities, such as gym class"
label(data$cfq_r_p_15_v2) <- "15. The extent to which your child has difficulty walking"
label(data$cfq_r_p_16_v2) <- "16. My child has trouble recovering after physical effort."
label(data$cfq_r_p_17_v2) <- "17. Mealtimes are a struggle."
label(data$cfq_r_p_18_v2) <- "18. My childs treatments get in the way of his/her activities."
label(data$cfq_r_p_19_v2) <- "19. My child feels small compared to other kids the same age."
label(data$cfq_r_p_20_v2) <- "20. My child feels physically different from other kids the same age."
label(data$cfq_r_p_21_v2) <- "21. My child thinks that he/she is too thin."
label(data$cfq_r_p_22_v2) <- "22. My child feels healthy."
label(data$cfq_r_p_23_v2) <- "23. My child tends to be withdrawn."
label(data$cfq_r_p_24_v2) <- "24. My child leads a normal life."
label(data$cfq_r_p_25_v2) <- "25. My child has less fun than usual."
label(data$cfq_r_p_26_v2) <- "26. My child has trouble getting along with others."
label(data$cfq_r_p_27_v2) <- "27. My child has trouble concentrating."
label(data$cfq_r_p_28_v2) <- "28. My child is able to keep up with his/her school work or summer activities (e.g. camp)."
label(data$cfq_r_p_29_v2) <- "29. My child is not doing as well as usual in school or summer activities (e.g. camp)."
label(data$cfq_r_p_30_v2) <- "30. My child spends a lot of time on his/her treatments everyday."
label(data$cfq_r_p_31_v2) <- "31. How difficult is it for your child to do his/her treatments (including medications) each day?"
label(data$cfq_r_p_32_v2) <- "32. How do you think your childs health is now?"
label(data$cfq_r_p_33_v2) <- "33. My child had trouble gaining weight."
label(data$cfq_r_p_34_v2) <- "34. My child was congested."
label(data$cfq_r_p_35_v2) <- "35. My child coughed during the day."
label(data$cfq_r_p_36_v2) <- "36. My child had to cough up mucus."
label(data$cfq_r_p_37_v2) <- "37. My childs mucus has been mostly:"
label(data$cfq_r_p_38_v2) <- "38. My child wheezed."
label(data$cfq_r_p_39_v2) <- "39. My child had trouble breathing."
label(data$cfq_r_p_40_v2) <- "40. My child woke up during the night because he/she was coughing."
label(data$cfq_r_p_41_v2) <- "41. My child had gas."
label(data$cfq_r_p_42_v2) <- "42. My child had diarrhea."
label(data$cfq_r_p_43_v2) <- "43. My child had abdominal pain."
label(data$cfq_r_p_44_v2) <- "44. My child has had eating problems.Please be sure you have answered all the questions.THANK YOU FOR YOUR COOPERATION!"
label(data$cfqr_caregivers_613_visit_2_complete) <- "Complete?"
label(data$cfq_r_y_a_v2) <- "A. What is your date of birth?"
label(data$cfq_r_y_b_v2) <- "B.  Are you?"
label(data$cfq_r_y_c_v2) <- "C. During the past two weeks, have you been on vacation or out of school for reasons NOT related to your health?"
label(data$cfq_r_y_d_v2___1) <- "D. Which of the following best describes your racial background? (choice=Caucasian)"
label(data$cfq_r_y_d_v2___2) <- "D. Which of the following best describes your racial background? (choice=African American)"
label(data$cfq_r_y_d_v2___3) <- "D. Which of the following best describes your racial background? (choice=Hispanic)"
label(data$cfq_r_y_d_v2___4) <- "D. Which of the following best describes your racial background? (choice=Asian / Oriental or Pacific Islander)"
label(data$cfq_r_y_d_v2___5) <- "D. Which of the following best describes your racial background? (choice=Native American or Native Alaskan)"
label(data$cfq_r_y_d_v2___6) <- "D. Which of the following best describes your racial background? (choice=Other (please describe))"
label(data$cfq_r_y_d_v2___7) <- "D. Which of the following best describes your racial background? (choice=Prefer not to answer this question)"
label(data$cfq_r_y_d1_v2) <- "Please describe other"
label(data$cfq_r_y_e_v2) <- "E. Which grade are you in now? (If summer, grade just finished)"
label(data$cfq_r_y_1_v2) <- "1. You were able to walk as fast as others."
label(data$cfq_r_y_2_v2) <- "2. You were able to climb stairs as fast as others."
label(data$cfq_r_y_3_v2) <- "3. You were able to run, jump, and climb as you wanted."
label(data$cfq_r_y_4_v2) <- "4. You were able to run as quickly and as long as others."
label(data$cfq_r_y_5_v2) <- "5. You were able to participate in sports that you enjoy (e.g., swimming, soccer, dancing, or others)."
label(data$cfq_r_y_6_v2) <- "6. You had difficulty carrying or lifting heavy things such as books, your school bag, or a backpack."
label(data$cfq_r_y_7_v2) <- "7. You felt tired."
label(data$cfq_r_y_8_v2) <- "8 . You felt mad."
label(data$cfq_r_y_9_v2) <- "9. You felt grouchy."
label(data$cfq_r_y_10_v2) <- "10. You felt worried."
label(data$cfq_r_y_11_v2) <- "11. You felt sad."
label(data$cfq_r_y_12_v2) <- "12. You had trouble falling asleep."
label(data$cfq_r_y_13_v2) <- "13. You had bad dreams or nightmares."
label(data$cfq_r_y_14_v2) <- "14. You felt good about yourself."
label(data$cfq_r_y_15_v2) <- "15 . You had trouble eating."
label(data$cfq_r_y_16_v2) <- "16. You had to stop fun activities to do your treatments."
label(data$cfq_r_y_17_v2) <- "17 . You were pushed to eat."
label(data$cfq_r_y_18_v2) <- "18 . You were able to do all of your treatments."
label(data$cfq_r_y_19_v2) <- "19 . You enjoyed eating."
label(data$cfq_r_y_20_v2) <- "20 . You got together with friends a lot."
label(data$cfq_r_y_21_v2) <- "21 . You stayed at home more than you wanted to."
label(data$cfq_r_y_22_v2) <- "22 . You felt comfortable sleeping away from home (at a friend or family members house or elsewhere)."
label(data$cfq_r_y_23_v2) <- "23 . You felt left out."
label(data$cfq_r_y_24_v2) <- "24 . You often invited friends to your house."
label(data$cfq_r_y_25_v2) <- "25 . You were teased by other children."
label(data$cfq_r_y_26_v2) <- "26 . You felt comfortable discussing your illness with others (friends, teachers)."
label(data$cfq_r_y_27_v2) <- "27 . You thought you were too short."
label(data$cfq_r_y_28_v2) <- "28 . You thought you were too thin."
label(data$cfq_r_y_29_v2) <- "29 . You thought you were physically different from others your age."
label(data$cfq_r_y_30_v2) <- "30. Doing your treatments bothered you."
label(data$cfq_r_y_31_v2) <- "31 . You coughed during the day."
label(data$cfq_r_y_32_v2) <- "32. You woke up during the night because you were coughing."
label(data$cfq_r_y_33_v2) <- "33. You had to cough up mucus."
label(data$cfq_r_y_34_v2) <- "34. You had trouble breathing."
label(data$cfq_r_y_35_v2) <- "35.Your stomach hurt.Please be sure all the questions have been answered.THANK YOU FOR YOUR COOPERATION!"
label(data$cfqr_children_ages_611_visit_2_complete) <- "Complete?"
label(data$cfq_r_o_a_v2) <- "A. What is your date of birth?"
label(data$cfq_r_o_b_v2) <- "B. Are you?"
label(data$cfq_r_o_c_v2) <- "C. During the past two weeks, have you been on vacation or out of school for reasons NOT related to your health?"
label(data$cfq_r_o_d_v2___1) <- "D. Which of the following best describes your racial background? (choice=Caucasian)"
label(data$cfq_r_o_d_v2___2) <- "D. Which of the following best describes your racial background? (choice=African American)"
label(data$cfq_r_o_d_v2___3) <- "D. Which of the following best describes your racial background? (choice=Hispanic)"
label(data$cfq_r_o_d_v2___4) <- "D. Which of the following best describes your racial background? (choice=Asian/Oriental or Pacific Islander)"
label(data$cfq_r_o_d_v2___5) <- "D. Which of the following best describes your racial background? (choice=Native American or Native Alaskan)"
label(data$cfq_r_o_d_v2___6) <- "D. Which of the following best describes your racial background? (choice=Other)"
label(data$cfq_r_o_d_v2___7) <- "D. Which of the following best describes your racial background? (choice=Prefer not to answer this question)"
label(data$cfq_r_d_other_v2) <- "Please describe your racial background"
label(data$cfq_r_o_e_v2) <- "E. What grade are you in now? (If summer, grade you just finished)"
label(data$cfq_r_o1_v2) <- "1. You were able to walk as fast as others."
label(data$cfq_r_o2_v2) <- "2. You were able to climb stairs as fast as others."
label(data$cfq_r_o3_v2) <- "3. You were able to run, jump, and climb as you wanted."
label(data$cfq_r_o4_v2) <- "4. You were able to run as quickly and as long as others."
label(data$cfq_r_o5_v2) <- "5. You were able to participate in sports that you enjoy (e.g., swimming, soccer, dancing or others)."
label(data$cfq_r_o6_v2) <- "6. You had difficulty carrying or lifting heavy things such as books, your school bag, or a backpack."
label(data$cfq_r_o7_v2) <- "7. You felt tired."
label(data$cfq_r_o8_v2) <- "8. You felt mad."
label(data$cfq_r_or9_v2) <- "9. You felt grouchy."
label(data$cfq_r_o10_v2) <- "10. You felt worried."
label(data$cfq_r_o11_v2) <- "11. You felt sad."
label(data$cfq_r_o12_v2) <- "12. You had trouble falling asleep."
label(data$cfq_r_o13_v2) <- "13. You had bad dreams or nightmares."
label(data$cfq_r_o14_v2) <- "14. You felt good about yourself."
label(data$cfq_r_o15_v2) <- "15. You had trouble eating."
label(data$cfq_r_o16_v2) <- "16. You had to stop fun activities to do your treatments."
label(data$cfq_r_o17_v2) <- "17. You were pushed to eat."
label(data$cfq_r_o18_v2) <- "18. You were able to do all of your treatments."
label(data$cfq_r_o19_v2) <- "19. You enjoyed eating."
label(data$cfq_r_o20_v2) <- "20. You got together with friends a lot."
label(data$cfq_r_o21_v2) <- "21. You stayed at home more than you wanted to."
label(data$cfq_r_o22_v2) <- "22. You felt comfortable sleeping away from home (at a friend or family members house or elsewhere)."
label(data$cfq_r_o23_v2) <- "23. You felt left out."
label(data$cfq_r_o24_v2) <- "24. You often invited friends to your house."
label(data$cfq_r_o25_v2) <- "25. You were teased by other children."
label(data$cfq_r_o26_v2) <- "26. You felt comfortable discussing your illness with others (friends, teachers)."
label(data$cfq_r_o27_v2) <- "27. You thought you were too short."
label(data$cfq_r_o28_v2) <- "28. You thought you were too thin."
label(data$cfq_r_o29_v2) <- "29. You thought you were physically different from others your age."
label(data$cfq_r_o30_v2) <- "30. Doing your treatments bothered you."
label(data$cfq_r_o31_v2) <- "31. You coughed during the day."
label(data$cfq_r_o32_v2) <- "32. You woke up during the night because you were coughing."
label(data$cfq_r_o33_v2) <- "33. You had to cough up mucus."
label(data$cfq_r_o34_v2) <- "34. You had trouble breathing."
label(data$cfq_r_o35_v2) <- "35. Your stomach hurt.Please be sure all the questions have been answered.THANK YOU FOR YOUR COOPERATION!"
label(data$cfqr_children_ages_1213_visit_2_complete) <- "Complete?"
label(data$cfq_r_a_a_v2) <- "A. What is your date of birth?"
label(data$cfq_r_a_b_v2) <- "B. What is your gender?"
label(data$cfq_r_a_c_v2) <- "C. During the past two weeks, have you been on vacation or out of school or work for reasons NOT related to your health?"
label(data$cfq_r_a_d_v2) <- "D. What is your current marital status?"
label(data$cfq_r_a_e_v2___1) <- "E. Which of the following best describes your racial background? (choice=Caucasian)"
label(data$cfq_r_a_e_v2___2) <- "E. Which of the following best describes your racial background? (choice=African American)"
label(data$cfq_r_a_e_v2___3) <- "E. Which of the following best describes your racial background? (choice=Hispanic)"
label(data$cfq_r_a_e_v2___4) <- "E. Which of the following best describes your racial background? (choice=Asian/Oriental or Pacific Islander)"
label(data$cfq_r_a_e_v2___5) <- "E. Which of the following best describes your racial background? (choice=Native American or Native Alaskan)"
label(data$cfq_r_a_e_v2___6) <- "E. Which of the following best describes your racial background? (choice=Other)"
label(data$cfq_r_a_e_v2___7) <- "E. Which of the following best describes your racial background? (choice=Prefer not to answer this question.)"
label(data$cfq_r_a_e1_v2) <- "Please describe"
label(data$cfq_r_a_f_v2) <- "F. What is the highest grade of school you have completed?"
label(data$cfq_r_a_g_v2) <- "G. Which of the following best describes your current work or school status?"
label(data$cfq_r_a_1_v2) <- "1. Performing vigorous activities such as running or playing sports."
label(data$cfq_r_a_2_v2) <- "2. Walking as fast as others."
label(data$cfq_r_a_3_v2) <- "3. Carrying or lifting heavy things such as books, groceries, or school bags."
label(data$cfq_r_a_4_v2) <- "4. Climbing one flight of stairs."
label(data$cfq_r_a_5_v2) <- "5. Climbing stairs as fast as others."
label(data$cfq_r_a_6_v2) <- "6. You felt well."
label(data$cfq_r_a_7_v2) <- "7. You felt worried."
label(data$cfq_r_a_8_v2) <- "8. You felt useless."
label(data$cfq_r_a_9_v2) <- "9. You felt tired."
label(data$cfq_r_a_10_v2) <- "10. You felt energetic."
label(data$cfq_r_a_11_v2) <- "11. You felt exhausted."
label(data$cfq_r_a_12_v2) <- "12. You felt sad."
label(data$cfq_r_a_13_v2) <- "13. To what extent do you have difficulty walking?"
label(data$cfq_r_a_14_v2) <- "14. How do you feel about eating?"
label(data$cfq_r_a_15_v2) <- "15. To what extent do your treatments make your daily life more difficult?"
label(data$cfq_r_a_16_v2) <- "16. How much time do you currently spend each day on your treatments?"
label(data$cfq_r_a_17_v2) <- "17. How difficult is it for you to do your treatments (including medications) each day?"
label(data$cfq_r_a_18_v2) <- "18. How do you think your health is now?"
label(data$cfq_r_a_19_v2) <- "19. I have trouble recovering after physical effort."
label(data$cfq_r_a_20_v2) <- "20. I have to limit vigorous activities such as running or playing sports."
label(data$cfq_r_a_21_v2) <- "21. I have to force myself to eat."
label(data$cfq_r_a_22_v2) <- "22. I have to stay at home more than I want to."
label(data$cfq_r_a_23_v2) <- "23. I feel comfortable discussing my illness with others."
label(data$cfq_r_a_24_v2) <- "24. I think I am too thin."
label(data$cfq_r_a_25_v2) <- "25. I think I look different from others my age."
label(data$cfq_r_a_26_v2) <- "26. I feel bad about my physical appearance."
label(data$cfq_r_a_27_v2) <- "27. People are afraid that I may be contagious."
label(data$cfq_r_a_28_v2) <- "28. I get together with my friends a lot."
label(data$cfq_r_a_29_v2) <- "29. I think my coughing bothers others."
label(data$cfq_r_a_30_v2) <- "30. I feel comfortable going out at night."
label(data$cfq_r_a_31_v2) <- "31. I often feel lonely."
label(data$cfq_r_a_32_v2) <- "32. I feel healthy."
label(data$cfq_r_a_33_v2) <- "33. It is difficult to make plans for the future (for example, going to college, getting married, advancing in a job, etc.)."
label(data$cfq_r_a_34_v2) <- "34. I lead a normal life."
label(data$cfq_r_a_35_v2) <- "35. To what extent did you have trouble keeping up with your schoolwork, professional work, or other daily activities during the past two weeks?"
label(data$cfq_r_a_36_v2) <- "36. How often were you absent from school, work, or unable to complete daily activities during the last two weeks because of your illness or treatments?"
label(data$cfq_r_a_37_v2) <- "37. How often does CF get in the way of meeting your school, work, or personal goals?"
label(data$cfq_r_a_38_v2) <- "38. How often does CF interfere with getting out of the house to run errands such as shopping or going to the bank?"
label(data$cfq_r_a_39_v2) <- "39. Have you had trouble gaining weight?"
label(data$cfq_r_a_40_v2) <- "40. Have you been congested?"
label(data$cfq_r_a_41_v2) <- "41. Have you been coughing during the day?"
label(data$cfq_r_a_42_v2) <- "42. Have you had to cough up mucus?"
label(data$cfq_r_a_43_v2) <- "43. Has your mucus been mostly:"
label(data$cfq_r_a_44_v2) <- "44. Have you been wheezing?"
label(data$cfq_r_a_45_v2) <- "45. Have you had trouble breathing?"
label(data$cfq_r_a_46_v2) <- "46. Have you woken up during the night because you were coughing?"
label(data$cfq_r_a_47_v2) <- "47. Have you had problems with gas?"
label(data$cfq_r_a_48_v2) <- "48. Have you had diarrhea?"
label(data$cfq_r_a_49_v2) <- "49. Have you had abdominal pain?"
label(data$cfq_r_a_50_v2) <- "50. Have you had eating problems?Please be sure you have answered all the questions.THANK YOU FOR YOUR COOPERATION!"
label(data$cfqr_adolescents_and_adults_14_years_visit_2_complete) <- "Complete?"
label(data$cfqr_p_es_a_v2) <- "A. ¿Cuál es la fecha de nacimiento de su niño(a)?"
label(data$cfqr_p_es_b_v2) <- "B. ¿Cuál es su relación con él (la) niño(a)?"
label(data$cfqr_p_es_b_spec_v2) <- "Especifique"
label(data$cfqr_p_es_c_v2___1) <- "E. ¿Cuál de las siguientes alternativas describe su raza? (choice=Blanco)"
label(data$cfqr_p_es_c_v2___2) <- "E. ¿Cuál de las siguientes alternativas describe su raza? (choice=Negro)"
label(data$cfqr_p_es_c_v2___3) <- "E. ¿Cuál de las siguientes alternativas describe su raza? (choice=Mulato)"
label(data$cfqr_p_es_c_v2___4) <- "E. ¿Cuál de las siguientes alternativas describe su raza? (choice=Indio)"
label(data$cfqr_p_es_c_v2___5) <- "E. ¿Cuál de las siguientes alternativas describe su raza? (choice=Asiatico)"
label(data$cfqr_p_es_c_v2___6) <- "E. ¿Cuál de las siguientes alternativas describe su raza? (choice=Otro {cfqr_p_es_c_spec_v2})"
label(data$cfqr_p_es_c_v2___7) <- "E. ¿Cuál de las siguientes alternativas describe su raza? (choice=Prefiere no contestar a la pregunta)"
label(data$cfqr_p_es_c_spec_v2) <- "Especifique"
label(data$cfqr_p_es_d_v2) <- "D. Durante las dos semanas pasadas, ¿ha estado su niño(a) de vacaciones o faltado a la escuela (colegio) por razones no relacionadas a su salud?"
label(data$cfqr_p_es_e_v2) <- "E. ¿Cuál es su fecha de nacimiento?"
label(data$cfqr_p_es_f_v2) <- "F. Estado Civil"
label(data$cfqr_p_es_g_v2) <- "G. Nivel de educacion"
label(data$cfqr_p_es_h_v2) <- "H. ¿Cuál de las siguientes opciones mejor describe su estado de estudios o a que se dedica?"
label(data$cfqr_p_es_1_v2) <- "1. Participando en actividades extenuantes como correr o practicar algún deporte"
label(data$cfqr_p_es_2_v2) <- "2. Caminando tan rápido como los demás"
label(data$cfqr_p_es_3_v2) <- "3. Subiendo escaleras tan rápido como los demás"
label(data$cfqr_p_es_4_v2) <- "4. Cargando o levantar cosas pesadas como libros o una mochila"
label(data$cfqr_p_es_5_v2) <- "5. Subiendo muchos escalones"
label(data$cfqr_p_es_6_v2) <- "6. Pareció estar contento(a)"
label(data$cfqr_p_es_7_v2) <- "7. Pareció estar preocupado(a)"
label(data$cfqr_p_es_8_v2) <- "8. Pareció estar cansado(a)"
label(data$cfqr_p_es_9_v2) <- "9. Pareció estar de mal humor"
label(data$cfqr_p_es_10_v2) <- "10. Pareció estar bien"
label(data$cfqr_p_es_11_v2) <- "11. Pareció estar enojado(a)"
label(data$cfqr_p_es_12_v2) <- "12. Pareció tener mucha energía"
label(data$cfqr_p_es_13_v2) <- "13. Estuvo ausente o llego tarde a la escuela u otra actividad por culpa de su enfermedad o tratamientos"
label(data$cfqr_p_es_14_v2) <- "14. ¿ Cuánto participó su niño(a) en deportes en la escuela, incluyendo durante el recreo y la clase de educación física?"
label(data$cfqr_p_es_15_v2) <- "15. ¿Cuán difícil le resulta caminar a su niño(a)?"
label(data$cfqr_p_es_16_v2) <- "16. Mi niño(a) tiene dificultad recuperándose después de un esfuerzo físico"
label(data$cfqr_p_es_17_v2) <- "17. Las horas de comer son difíciles"
label(data$cfqr_p_es_18_v2) <- "18. Los tratamientos de mi niño(a) interfieren con sus actividades"
label(data$cfqr_p_es_19_v2) <- "19. Mi niño(a) se siente pequeño(a) comparado con otros niños(as) de su misma edad"
label(data$cfqr_p_es_20_v2) <- "20. Mi niño(a) se siente físicamente diferente a otros niños(as) de su misma edad"
label(data$cfqr_p_es_21_v2) <- "21. Mi niño(a) piensa que es muy delgado(a)"
label(data$cfqr_p_es_22_v2) <- "22. Mi niño(a) se siente saludable"
label(data$cfqr_p_es_23_v2) <- "23. Mi niño(a) tiende a ser retraído(a)"
label(data$cfqr_p_es_24_v2) <- "24. Mi niño(a) lleva una vida normal"
label(data$cfqr_p_es_25_v2) <- "25. Mi niño(a) se divierte menos de lo usual"
label(data$cfqr_p_es_26_v2) <- "26. Mi niño(a) tiene dificultad llevándose bien con los demás"
label(data$cfqr_p_es_27_v2) <- "27. Mi niño(a) tiene dificultad concentrándose"
label(data$cfqr_p_es_28_v2) <- "28. Mi niño(a) es capaz de mantenerse al día con sus tareas de la escuela o actividades de verano (ejemplo: en el campamento de verano)"
label(data$cfqr_p_es_29_v2) <- "29. A mi niño(a) no le va tan bien como antes en la escuela o en sus actividades del verano (ejemplo: en el campamento de verano)"
label(data$cfqr_p_es_30_v2) <- "30. Mi niño gasta mucho tiempo en sus tratamientos todos los días"
label(data$cfqr_p_es_31_v2) <- "31. ¿Cuán difícil es para su niño(a) hacer sus tratamientos (incluyendo los medicamentos) cada día?"
label(data$cfqr_p_es_32_v2) <- "32. ¿Cómo cree que está la salud de su niño(a) en este momento?"
label(data$cfqr_p_es_33_v2) <- "33. Mi niño(a) ha tenido dificultad aumentando de peso"
label(data$cfqr_p_es_34_v2) <- "34. Mi niño(a) estuvo congestionado(a)"
label(data$cfqr_p_es_35_v2) <- "35. Mi niño(a) tosió durante el día"
label(data$cfqr_p_es_36_v2) <- "36. Mi niño(a) tosió mucosidad"
label(data$cfqr_p_es_37_v2) <- "37. La mucosidad de mi niño(a) ha sido mayormente:"
label(data$cfqr_p_es_38_v2) <- "38. Mi niño(a) estuvo con sonido asmático al respirar"
label(data$cfqr_p_es_39_v2) <- "39. Mi niño(a) tuvo dificultad al respirar"
label(data$cfqr_p_es_40_v2) <- "40. Mi niño(a) se despertó durante la noche porque estaba tosiendo"
label(data$cfqr_p_es_41_v2) <- "41. Mi niño(a) tuvo gases"
label(data$cfqr_p_es_42_v2) <- "42. Mi niño(a) tuvo diarrea"
label(data$cfqr_p_es_43_v2) <- "43. Mi niño(a) tuvo dolor abdominal"
label(data$cfqr_p_es_44_v2) <- "44. Mi niño(a) tuvo problemas para comer"
label(data$spanish_cfqr_caregivers_age_613_vist_2_complete) <- "Complete?"
label(data$cfq_r_o_a_es_v2) <- "A. ¿Cuál es tu fecha de nacimiento?"
label(data$cfq_r_o_b_es_v2) <- "B. ¿Eres del sexo?"
label(data$cfq_r_o_c_es_v2) <- "C. Durante las dos semanas pasadas, ¿has estado de vacaciones o faltado a la escuela (colegio) por razones NO relacionadas a tu salud?"
label(data$cfq_r_o_d_es_v2___1) <- "D. ¿Cuál de las siguientes alternativas describe tu raza? (Por favor seleccione todas las que apliquen) (choice=Blanco)"
label(data$cfq_r_o_d_es_v2___2) <- "D. ¿Cuál de las siguientes alternativas describe tu raza? (Por favor seleccione todas las que apliquen) (choice=Negro)"
label(data$cfq_r_o_d_es_v2___3) <- "D. ¿Cuál de las siguientes alternativas describe tu raza? (Por favor seleccione todas las que apliquen) (choice=Mulato)"
label(data$cfq_r_o_d_es_v2___4) <- "D. ¿Cuál de las siguientes alternativas describe tu raza? (Por favor seleccione todas las que apliquen) (choice=Indio)"
label(data$cfq_r_o_d_es_v2___5) <- "D. ¿Cuál de las siguientes alternativas describe tu raza? (Por favor seleccione todas las que apliquen) (choice=Asiatico)"
label(data$cfq_r_o_d_es_v2___6) <- "D. ¿Cuál de las siguientes alternativas describe tu raza? (Por favor seleccione todas las que apliquen) (choice=Otro {cfq_r_d_other_es_v2})"
label(data$cfq_r_o_d_es_v2___7) <- "D. ¿Cuál de las siguientes alternativas describe tu raza? (Por favor seleccione todas las que apliquen) (choice=Prefer not to answer this question)"
label(data$cfq_r_d_other_es_v2) <- "Especifique"
label(data$cfq_r_o_e_es_v2) <- "E. ¿En que grado estás en la escuela (colegio)? (Si ya completaste el término escolar, ¿cuál completaste?)"
label(data$cfq_r_o1_es_v2) <- "1. Pudiste caminar tan rápido como los demás"
label(data$cfq_r_o2_es_v2) <- "2. Pudiste subir escaleras tan rápido como los demás"
label(data$cfq_r_o3_es_v2) <- "3. Pudiste correr, brincar y escalar como quisiste"
label(data$cfq_r_o4_es_v2) <- "4. Pudiste correr tan rápido y tan lejos como los demás."
label(data$cfq_r_o5_es_v2) <- "5. Pudiste participar en deportes que te gustan (béisbol, fútbol, baile, baloncesto, natación, etc.)"
label(data$cfq_r_o6_es_v2) <- "6. Tuviste dificultad cargando o levantando objetos pesados como tus libros, tu bulto escolar, o una mochila"
label(data$cfqr_o7_es_v2) <- "7. Te sentiste cansado(a)"
label(data$cfqr_o8_es_v2) <- "8. Te sentiste enojado(a)"
label(data$cfqr_o9_es_v2) <- "9. Estuviste de mal humor"
label(data$cfqr_o10_es_v2) <- "10. Te sentiste preocupado(a)"
label(data$cfqr_o11_es_v2) <- "11. Te sentiste triste"
label(data$cfqr_o12_es_v2) <- "12. Tuviste dificultad en dormirte"
label(data$cfqr_o13_es_v2) <- "13. Tuviste sueños malos o pesadillas"
label(data$cfq_r_o14_es_v2) <- "14. Te sentiste bien con ti mismo(a)"
label(data$cfq_r_o15_es_v2) <- "15. Te fué difícil comer"
label(data$cfq_r_o16_es_v2) <- "16. Tuviste que dejar hacer actividades divertidas para hacer tus tratamientos"
label(data$cfq_r_o17_es_v2) <- "17. Te tuvieron que obligar a comer"
label(data$cfq_r_o18_es_v2) <- "18. Pudiste hacer todos tus tratamientos"
label(data$cfq_r_o19_es_v2) <- "19. Disfrutaste comer"
label(data$cfq_r_o20_es_v2) <- "20. Te reuniste mucho con tus amigos."
label(data$cfq_r_o21_es_v2) <- "21. Te quedaste en casa más de lo que hubieses querido."
label(data$cfq_r_o22_es_v2) <- "22. Te sentiste cómodo(a) durmiendo fuera de casa (en casa de amigos, familiares ú otro sitio)."
label(data$cfq_r_o23_es_v2) <- "23. Te sentiste excluido(a)."
label(data$cfq_r_o24_es_v2) <- "24. Invitaste amigos(as) a tu casa a menudo."
label(data$cfq_r_o25_es_v2) <- "25. Otros niños(as) se burlaron de ti."
label(data$cfq_r_o26_es_v2) <- "26. Te sentiste cómodo hablando de tu enfermedad con otros (tus amigos, profesores)."
label(data$cfq_r_o27_es_v2) <- "27. Pensaste que eras muy bajo(a) de estatura."
label(data$cfq_r_o28_es_v2) <- "28. Pensaste que estabas muy delgado(a)."
label(data$cfq_r_o29_es_v2) <- "29. Pensaste que eras físicamente diferente a otros de tu misma edad"
label(data$cfq_r_o30_es_v2) <- "30. Te molestó hacer tus tratamientos "
label(data$cfqr_o31_es_v2) <- "31. Tosiste durante el día"
label(data$cfqr_o32_es_v2) <- "32. Te despertaste durante la noche porque estabas tosiendo"
label(data$cfqr_o33_es_v2) <- "33. Tosiste mucosidad"
label(data$cfqr_o34_es_v2) <- "34. Tuviste dificultad respirando"
label(data$cfqr_o35_es_v2) <- "35. Te dolió el estómago"
label(data$spanish_cfqr_children_ages_1213_visit_2_complete) <- "Complete?"
label(data$cfqr_a_es_a_v2) <- "A. Fecha de nacimiento"
label(data$cfqr_a_es_b_v2) <- "B. Sexo"
label(data$cfqr_a_es_c_v2) <- "C. En las pasadas dos semanas, ¿ha estado de vacaciones ofaltado a la escuela (colegio) o trabajo por razones NO  relacionadas a su salud?"
label(data$cfqr_a_es_d_v2) <- "D. Estado Civil"
label(data$cfqr_a_es_e_v2___1) <- "E. ¿Cuál de las siguientes alternativas describe su raza? (choice=Blanco)"
label(data$cfqr_a_es_e_v2___2) <- "E. ¿Cuál de las siguientes alternativas describe su raza? (choice=Negro)"
label(data$cfqr_a_es_e_v2___3) <- "E. ¿Cuál de las siguientes alternativas describe su raza? (choice=Mulato)"
label(data$cfqr_a_es_e_v2___4) <- "E. ¿Cuál de las siguientes alternativas describe su raza? (choice=Indio)"
label(data$cfqr_a_es_e_v2___5) <- "E. ¿Cuál de las siguientes alternativas describe su raza? (choice=Asiatico)"
label(data$cfqr_a_es_e_v2___6) <- "E. ¿Cuál de las siguientes alternativas describe su raza? (choice=Otro {cfqr_a_es_e_spec_v2})"
label(data$cfqr_a_es_e_v2___7) <- "E. ¿Cuál de las siguientes alternativas describe su raza? (choice=Prefiere no contestar a la pregunta)"
label(data$cfqr_a_es_e_spec_v2) <- "Especifique:"
label(data$cfqr_a_es_f_v2) <- "F. Nivel de educacion"
label(data$cfqr_a_es_g_v2) <- "G. ¿Cuál de las siguientes opciones mejor describe su estado de estudios o a que se dedica?"
label(data$cfqr_a_es_1_v2) <- "1. Participando en actividades extenuantes como correr o practicar algún deporte"
label(data$cfqr_a_es_2_v2) <- "2. Caminando tan rápido como los demás"
label(data$cfqr_a_es_3_v2) <- "3. Cargando o levantando cosas pesadas como libros o mochilas"
label(data$cfqr_a_es_4_v2) <- "4. Subiendo escaleras"
label(data$cfqr_a_es_5_v2) <- "5. Subiendo escaleras tan rápido como los demás"
label(data$cfqr_a_es_6_v2) <- "6. Se sintio bien"
label(data$cfqr_a_es_7_v2) <- "7. Se sintio preocupado(a)"
label(data$cfqr_a_es_8_v2) <- "8. Se sintio inutil"
label(data$cfqr_a_es_9_v2) <- "9. Se sintio cansado(a)"
label(data$cfqr_a_es_10_v2) <- "10. Se sintio con mucha energia"
label(data$cfqr_a_es_11_v2) <- "11. Se sintio agotado(a)"
label(data$cfqr_a_es_12_v2) <- "12. Se sintio triste"
label(data$cfqr_a_es_13_v2) <- "13, ¿Hasta qué punto tiene dificultad al caminar?"
label(data$cfqr_a_es_14_v2) <- "14, ¿Cómo se siente con respecto al comer?"
label(data$cfqr_a_es_15_v2) <- "15, ¿Hasta qué punto los tratamientos le hacen su vida diaria más difícil?"
label(data$cfqr_a_es_16_v2) <- "16. ¿Cuánto tiempo les dedica cada día a sus tratamientos?"
label(data$cfqr_a_es_17_v2) <- "17. ¿Cuán difícil es para usted hacer los tratamientos (incluyendo medicamentos) cada día?"
label(data$cfqr_a_es_18_v2) <- "18. ¿Cómo piensa que está su salud en este momento?"
label(data$cfqr_a_es_19_v2) <- "19. Tengo dificultad recuperándome después de esfuerzo físico"
label(data$cfqr_a_es_20_v2) <- "20. Tengo que limitar mis actividades físicas como correr o practicar deportes"
label(data$cfqr_a_es_21_v2) <- "21. Tengo que obligarme a comer"
label(data$cfqr_a_es_22_v2) <- "22. Tengo que quedarme en casa más de lo que quisiera"
label(data$cfqr_a_es_23_v2) <- "23. Me siento cómodo discutiendo mi enfermedad con otros"
label(data$cfqr_a_es_24_v2) <- "24. Pienso que estoy muy delgado(a)"
label(data$cfqr_a_es_25_v2) <- "25. Pienso que me veo diferente en comparación con otros(as) de mi edad"
label(data$cfqr_a_es_26_v2) <- "26. Me siento mal con respecto a mi apariencia física"
label(data$cfqr_a_es_27_v2) <- "27. La gente teme a contagiarse de mí"
label(data$cfqr_a_es_28_v2) <- "28. Me reúno con mis amigos a menudo"
label(data$cfqr_a_es_29_v2) <- "29. Pienso que mi tos molesta a los demás"
label(data$cfqr_a_es_30_v2) <- "30. Me siento cómodo(a) saliendo por la noche"
label(data$cfqr_a_es_31_v2) <- "31. Me siento solo a menudo"
label(data$cfqr_a_es_32_v2) <- "32. Me siento(a) saludable"
label(data$cfqr_a_es_33_v2) <- "33. Es difícil hacer planes para el futuro (por ejemplo, ir a la universidad,  matrimonio, etc.)"
label(data$cfqr_a_es_34_v2) <- "34. Llevo una vida normal"
label(data$cfqr_a_es_35_v2) <- "35. ¿Durante las dos semanas pasadas, hasta qué punto tuvo dificultad manteniéndose al día en su trabajo escolar, profesional, o en otras actividades diarias?"
label(data$cfqr_a_es_36_v2) <- "36. ¿Durante las últimas dos semanas, con qué frecuencia estuvo ausente de la escuela, trabajo, o no pudo completar sus actividades diarias por culpa de su enfermedad o sus tratamientos?"
label(data$cfqr_a_es_37_v2) <- "37. ¿Con qué frecuencia le impide a usted la fibrosis cística de alcanzar sus metas de escuela, trabajo o metas personales?"
label(data$cfqr_a_es_38_v2) <- "38. ¿Con qué frecuencia le impide la fibrosis cística de salir de su casa para hacer diligencias como ir de compras o ir al banco?"
label(data$cfqr_a_es_39_v2) <- "39. Ha tenido dificultad aumentando de peso"
label(data$cfqr_a_es_40_v2) <- "40. Ha estado congestionado(a)"
label(data$cfqr_a_es_41_v2) <- "41. Ha estado tosiendo durante el día"
label(data$cfqr_a_es_42_v2) <- "42. Ha tenido que toser mucosidad"
label(data$cfqr_a_es_43_v2) <- "43. Su mucosidad ha sido mayormente: "
label(data$cfqr_a_es_44_v2) <- "44. Ha estado con sonido asmático al respirar"
label(data$cfqr_a_es_45_v2) <- "45. Ha tenido dificultad al respirar"
label(data$cfqr_a_es_46_v2) <- "46. Se ha despertado durante la noche porque estaba tosiendo"
label(data$cfqr_a_es_47_v2) <- "47. Ha tenido problemas con gases"
label(data$cfqr_a_es_48_v2) <- "48. Ha tenido diarrea"
label(data$cfqr_a_es_49_v2) <- "49. Ha tenido dolor abdominal"
label(data$cfqr_a_es_50_v2) <- "50. Tuvo dificultad con su apetito"
label(data$spanish_cfqr_adolescents_and_adults_visit_2_complete) <- "Complete?"
# Setting Factors(will create new variable for factors)
data$redcap_event_name.factor <- factor(data$redcap_event_name, levels = c("visits_arm_1", "interim_arm_1", "visits_arm_2", "interim_arm_2"))
data$redcap_repeat_instrument.factor <- factor(data$redcap_repeat_instrument, levels = c("cfqr_caregivers_613", "cfqr_children_ages_611", "cfqr_children_ages_1213", "cfqr_adolescents_and_adults_14_years", "spanish_cfqr_caregivers_age_613", "cfqr_children_ages_1213_2", "spanish_cfqr_adolescents_and_adults", "interim_phone_call", "hc_pediatric_cough_survey"))
data$consented.factor <- factor(data$consented, levels = c("1", "0"))
data$icf_copy.factor <- factor(data$icf_copy, levels = c("1", "0"))
data$assent.factor <- factor(data$assent, levels = c("1", "0", "2"))
data$consent_epic.factor <- factor(data$consent_epic, levels = c("1", "0"))
data$carrier.factor <- factor(data$carrier, levels = c("1", "2"))
data$consent_complete.factor <- factor(data$consent_complete, levels = c("0", "1", "2"))
data$confirmed_dx.factor <- factor(data$confirmed_dx, levels = c("1", "0"))
data$eligible_age.factor <- factor(data$eligible_age, levels = c("1", "0"))
data$stable.factor <- factor(data$stable, levels = c("1", "0"))
data$support.factor <- factor(data$support, levels = c("1", "0"))
data$room_env.factor <- factor(data$room_env, levels = c("1", "0"))
data$pulm_antib.factor <- factor(data$pulm_antib, levels = c("1", "0"))
data$sleep_env.factor <- factor(data$sleep_env, levels = c("1", "0"))
data$cf_eligibility_complete.factor <- factor(data$cf_eligibility_complete, levels = c("0", "1", "2"))
data$eligible_age_hc.factor <- factor(data$eligible_age_hc, levels = c("1", "0"))
data$support_hc.factor <- factor(data$support_hc, levels = c("1", "0"))
data$room_env_hc.factor <- factor(data$room_env_hc, levels = c("1", "0"))
data$underlying_disease_hc.factor <- factor(data$underlying_disease_hc, levels = c("1", "0"))
data$sleep_env_hc.factor <- factor(data$sleep_env_hc, levels = c("1", "0"))
data$control_eligibility_complete.factor <- factor(data$control_eligibility_complete, levels = c("0", "1", "2"))
data$confirm_enr.factor <- factor(data$confirm_enr, levels = c("1", "0"))
data$enrollment_complete.factor <- factor(data$enrollment_complete, levels = c("0", "1", "2"))
data$language_caregiver.factor <- factor(data$language_caregiver, levels = c("1", "2"))
data$language_patient.factor <- factor(data$language_patient, levels = c("1", "2"))
data$nih_sex.factor <- factor(data$nih_sex, levels = c("1", "2", "3"))
data$nih_race.factor <- factor(data$nih_race, levels = c("1", "2", "3", "4", "5", "6", "7"))
data$nih_ethnicity.factor <- factor(data$nih_ethnicity, levels = c("1", "2", "3"))
data$cohort.factor <- factor(data$cohort, levels = c("1", "2"))
data$mutation1.factor <- factor(data$mutation1, levels = c("1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30"))
data$tract_type1.factor <- factor(data$tract_type1, levels = c("1", "2", "3", "4", "5", "6"))
data$mutation2.factor <- factor(data$mutation2, levels = c("1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30"))
data$tract_type2.factor <- factor(data$tract_type2, levels = c("1", "2", "3", "4", "5", "6"))
data$h_obtained.factor <- factor(data$h_obtained, levels = c("1", "0"))
data$w_obtained.factor <- factor(data$w_obtained, levels = c("1", "0"))
data$demographics_complete.factor <- factor(data$demographics_complete, levels = c("0", "1", "2"))
data$current_antib.factor <- factor(data$current_antib, levels = c("1", "0"))
data$inh_antib.factor <- factor(data$inh_antib, levels = c("1", "0"))
data$antib2_type___1.factor <- factor(data$antib2_type___1, levels = c("0", "1"))
data$antib2_type___2.factor <- factor(data$antib2_type___2, levels = c("0", "1"))
data$antib2_type___3.factor <- factor(data$antib2_type___3, levels = c("0", "1"))
data$antib2_type___4.factor <- factor(data$antib2_type___4, levels = c("0", "1"))
data$cftr_mod.factor <- factor(data$cftr_mod, levels = c("1", "0"))
data$cftr_mod_type.factor <- factor(data$cftr_mod_type, levels = c("1", "2", "3", "4"))
data$mucolytic.factor <- factor(data$mucolytic, levels = c("1", "0"))
data$mocol_type___1.factor <- factor(data$mocol_type___1, levels = c("0", "1"))
data$mocol_type___2.factor <- factor(data$mocol_type___2, levels = c("0", "1"))
data$mocol_type___3.factor <- factor(data$mocol_type___3, levels = c("0", "1"))
data$inh_ster.factor <- factor(data$inh_ster, levels = c("1", "0"))
data$freq_ster.factor <- factor(data$freq_ster, levels = c("1", "2", "3"))
data$air_clear.factor <- factor(data$air_clear, levels = c("1", "0"))
data$freq_clear.factor <- factor(data$freq_clear, levels = c("1", "2", "3"))
data$singulair.factor <- factor(data$singulair, levels = c("1", "0"))
data$antih.factor <- factor(data$antih, levels = c("1", "0"))
data$comorbid_dx___1.factor <- factor(data$comorbid_dx___1, levels = c("0", "1"))
data$comorbid_dx___2.factor <- factor(data$comorbid_dx___2, levels = c("0", "1"))
data$comorbid_dx___3.factor <- factor(data$comorbid_dx___3, levels = c("0", "1"))
data$comorbid_dx___4.factor <- factor(data$comorbid_dx___4, levels = c("0", "1"))
data$comorbid_dx___5.factor <- factor(data$comorbid_dx___5, levels = c("0", "1"))
data$comorbid_dx___6.factor <- factor(data$comorbid_dx___6, levels = c("0", "1"))
data$comorbid_dx___7.factor <- factor(data$comorbid_dx___7, levels = c("0", "1"))
data$comorbid_dx___8.factor <- factor(data$comorbid_dx___8, levels = c("0", "1"))
data$polyp_surg.factor <- factor(data$polyp_surg, levels = c("1", "0"))
data$g_tube.factor <- factor(data$g_tube, levels = c("1", "0"))
data$g_tube2.factor <- factor(data$g_tube2, levels = c("1", "0"))
data$pft.factor <- factor(data$pft, levels = c("1", "0"))
data$post_pft.factor <- factor(data$post_pft, levels = c("1", "0"))
data$abn_confirm.factor <- factor(data$abn_confirm, levels = c("1", "0"))
data$micro_type___1.factor <- factor(data$micro_type___1, levels = c("0", "1"))
data$micro_type___2.factor <- factor(data$micro_type___2, levels = c("0", "1"))
data$micro_type___3.factor <- factor(data$micro_type___3, levels = c("0", "1"))
data$micro_type___4.factor <- factor(data$micro_type___4, levels = c("0", "1"))
data$pulm_ex.factor <- factor(data$pulm_ex, levels = c("1", "0"))
data$ex_hosp.factor <- factor(data$ex_hosp, levels = c("1", "0"))
data$question_complete_cf.factor <- factor(data$question_complete_cf, levels = c("1", "0"))
data$cf_visit_1_complete.factor <- factor(data$cf_visit_1_complete, levels = c("0", "1", "2"))
data$cfq_r_p_b.factor <- factor(data$cfq_r_p_b, levels = c("1", "2", "3", "4", "5", "6", "7", "8"))
data$cfq_r_p_c___1.factor <- factor(data$cfq_r_p_c___1, levels = c("0", "1"))
data$cfq_r_p_c___2.factor <- factor(data$cfq_r_p_c___2, levels = c("0", "1"))
data$cfq_r_p_c___3.factor <- factor(data$cfq_r_p_c___3, levels = c("0", "1"))
data$cfq_r_p_c___4.factor <- factor(data$cfq_r_p_c___4, levels = c("0", "1"))
data$cfq_r_p_c___5.factor <- factor(data$cfq_r_p_c___5, levels = c("0", "1"))
data$cfq_r_p_c___6.factor <- factor(data$cfq_r_p_c___6, levels = c("0", "1"))
data$cfq_r_p_c___7.factor <- factor(data$cfq_r_p_c___7, levels = c("0", "1"))
data$cfq_r_p_d.factor <- factor(data$cfq_r_p_d, levels = c("1", "0"))
data$cfq_r_p_f.factor <- factor(data$cfq_r_p_f, levels = c("1", "2", "3", "4", "5", "6", "7"))
data$cfq_r_p_g.factor <- factor(data$cfq_r_p_g, levels = c("1", "2", "3", "4", "5", "6"))
data$cfq_r_p_h.factor <- factor(data$cfq_r_p_h, levels = c("1", "2", "3", "4", "5"))
data$cfq_r_p_1.factor <- factor(data$cfq_r_p_1, levels = c("1", "2", "3", "4"))
data$cfq_r_p_2.factor <- factor(data$cfq_r_p_2, levels = c("1", "2", "3", "4"))
data$cfq_r_p_3.factor <- factor(data$cfq_r_p_3, levels = c("1", "2", "3", "4"))
data$cfq_r_p_4.factor <- factor(data$cfq_r_p_4, levels = c("1", "2", "3", "4"))
data$cfq_r_p_5.factor <- factor(data$cfq_r_p_5, levels = c("1", "2", "3", "4"))
data$cfq_r_p_6.factor <- factor(data$cfq_r_p_6, levels = c("4", "3", "2", "1"))
data$cfq_r_p_7.factor <- factor(data$cfq_r_p_7, levels = c("1", "2", "3", "4"))
data$cfq_r_p_8.factor <- factor(data$cfq_r_p_8, levels = c("1", "2", "3", "4"))
data$cfq_r_p_9.factor <- factor(data$cfq_r_p_9, levels = c("1", "2", "3", "4"))
data$cfq_r_p_10.factor <- factor(data$cfq_r_p_10, levels = c("4", "3", "2", "1"))
data$cfq_r_p_11.factor <- factor(data$cfq_r_p_11, levels = c("1", "2", "3", "4"))
data$cfq_r_p_12.factor <- factor(data$cfq_r_p_12, levels = c("4", "3", "2", "1"))
data$cfq_r_p_13.factor <- factor(data$cfq_r_p_13, levels = c("1", "2", "3", "4"))
data$cfq_r_p_14.factor <- factor(data$cfq_r_p_14, levels = c("1", "2", "3", "4"))
data$cfq_r_p_15.factor <- factor(data$cfq_r_p_15, levels = c("1", "2", "3", "4"))
data$cfq_r_p_16.factor <- factor(data$cfq_r_p_16, levels = c("1", "2", "3", "4"))
data$cfq_r_p_17.factor <- factor(data$cfq_r_p_17, levels = c("1", "2", "3", "4"))
data$cfq_r_p_18.factor <- factor(data$cfq_r_p_18, levels = c("1", "2", "3", "4"))
data$cfq_r_p_19.factor <- factor(data$cfq_r_p_19, levels = c("1", "2", "3", "4"))
data$cfq_r_p_20.factor <- factor(data$cfq_r_p_20, levels = c("1", "2", "3", "4"))
data$cfq_r_p_21.factor <- factor(data$cfq_r_p_21, levels = c("1", "2", "3", "4"))
data$cfq_r_p_22.factor <- factor(data$cfq_r_p_22, levels = c("1", "2", "3", "4"))
data$cfq_r_p_23.factor <- factor(data$cfq_r_p_23, levels = c("1", "2", "3", "4"))
data$cfq_r_p_24.factor <- factor(data$cfq_r_p_24, levels = c("1", "2", "3", "4"))
data$cfq_r_p_25.factor <- factor(data$cfq_r_p_25, levels = c("1", "2", "3", "4"))
data$cfq_r_p_26.factor <- factor(data$cfq_r_p_26, levels = c("1", "2", "3", "4"))
data$cfq_r_p_27.factor <- factor(data$cfq_r_p_27, levels = c("1", "2", "3", "4"))
data$cfq_r_p_28.factor <- factor(data$cfq_r_p_28, levels = c("1", "2", "3", "4"))
data$cfq_r_p_29.factor <- factor(data$cfq_r_p_29, levels = c("1", "2", "3", "4"))
data$cfq_r_p_30.factor <- factor(data$cfq_r_p_30, levels = c("1", "2", "3", "4"))
data$cfq_r_p_31.factor <- factor(data$cfq_r_p_31, levels = c("1", "2", "3", "4"))
data$cfq_r_p_32.factor <- factor(data$cfq_r_p_32, levels = c("1", "2", "3", "4"))
data$cfq_r_p_33.factor <- factor(data$cfq_r_p_33, levels = c("1", "2", "3", "4"))
data$cfq_r_p_34.factor <- factor(data$cfq_r_p_34, levels = c("1", "2", "3", "4"))
data$cfq_r_p_35.factor <- factor(data$cfq_r_p_35, levels = c("1", "2", "3", "4"))
data$cfq_r_p_36.factor <- factor(data$cfq_r_p_36, levels = c("1", "2", "3", "4"))
data$cfq_r_p_37.factor <- factor(data$cfq_r_p_37, levels = c("1", "2", "3", "4", "5"))
data$cfq_r_p_38.factor <- factor(data$cfq_r_p_38, levels = c("1", "2", "3", "4"))
data$cfq_r_p_39.factor <- factor(data$cfq_r_p_39, levels = c("1", "2", "3", "4"))
data$cfq_r_p_40.factor <- factor(data$cfq_r_p_40, levels = c("1", "2", "3", "4"))
data$cfq_r_p_41.factor <- factor(data$cfq_r_p_41, levels = c("1", "2", "3", "4"))
data$cfq_r_p_42.factor <- factor(data$cfq_r_p_42, levels = c("1", "2", "3", "4"))
data$cfq_r_p_43.factor <- factor(data$cfq_r_p_43, levels = c("1", "2", "3", "4"))
data$cfq_r_p_44.factor <- factor(data$cfq_r_p_44, levels = c("1", "2", "3", "4"))
data$cfqr_caregivers_613_complete.factor <- factor(data$cfqr_caregivers_613_complete, levels = c("0", "1", "2"))
data$cfq_r_y_b.factor <- factor(data$cfq_r_y_b, levels = c("1", "2"))
data$cfq_r_y_c.factor <- factor(data$cfq_r_y_c, levels = c("1", "2"))
data$cfq_r_y_d___1.factor <- factor(data$cfq_r_y_d___1, levels = c("0", "1"))
data$cfq_r_y_d___2.factor <- factor(data$cfq_r_y_d___2, levels = c("0", "1"))
data$cfq_r_y_d___3.factor <- factor(data$cfq_r_y_d___3, levels = c("0", "1"))
data$cfq_r_y_d___4.factor <- factor(data$cfq_r_y_d___4, levels = c("0", "1"))
data$cfq_r_y_d___5.factor <- factor(data$cfq_r_y_d___5, levels = c("0", "1"))
data$cfq_r_y_d___6.factor <- factor(data$cfq_r_y_d___6, levels = c("0", "1"))
data$cfq_r_y_d___7.factor <- factor(data$cfq_r_y_d___7, levels = c("0", "1"))
data$cfq_r_y_e.factor <- factor(data$cfq_r_y_e, levels = c("1", "2", "3", "4", "5", "6", "7", "8", "9"))
data$cfq_r_y_1.factor <- factor(data$cfq_r_y_1, levels = c("4", "3", "2", "1"))
data$cfq_r_y_2.factor <- factor(data$cfq_r_y_2, levels = c("4", "3", "2", "1"))
data$cfq_r_y_3.factor <- factor(data$cfq_r_y_3, levels = c("4", "3", "2", "1"))
data$cfq_r_y_4.factor <- factor(data$cfq_r_y_4, levels = c("4", "3", "2", "1"))
data$cfq_r_y_5.factor <- factor(data$cfq_r_y_5, levels = c("4", "3", "2", "1"))
data$cfq_r_y_6.factor <- factor(data$cfq_r_y_6, levels = c("1", "2", "3", "4"))
data$cfq_r_y_7.factor <- factor(data$cfq_r_y_7, levels = c("1", "2", "3", "4"))
data$cfq_r_y_8.factor <- factor(data$cfq_r_y_8, levels = c("1", "2", "3", "4"))
data$cfq_r_y_9.factor <- factor(data$cfq_r_y_9, levels = c("1", "2", "3", "4"))
data$cfq_r_y_10.factor <- factor(data$cfq_r_y_10, levels = c("1", "2", "3", "4"))
data$cfq_r_y_11.factor <- factor(data$cfq_r_y_11, levels = c("1", "2", "3", "4"))
data$cfq_r_y_12.factor <- factor(data$cfq_r_y_12, levels = c("1", "2", "3", "4"))
data$cfq_r_y_13.factor <- factor(data$cfq_r_y_13, levels = c("1", "2", "3", "4"))
data$cfq_r_y_14.factor <- factor(data$cfq_r_y_14, levels = c("1", "2", "3", "4"))
data$cfq_r_y_15.factor <- factor(data$cfq_r_y_15, levels = c("1", "2", "3", "4"))
data$cfq_r_y_16.factor <- factor(data$cfq_r_y_16, levels = c("1", "2", "3", "4"))
data$cfq_r_y_17.factor <- factor(data$cfq_r_y_17, levels = c("1", "2", "3", "4"))
data$cfq_r_y_18.factor <- factor(data$cfq_r_y_18, levels = c("4", "3", "2", "1"))
data$cfq_r_y_19.factor <- factor(data$cfq_r_y_19, levels = c("4", "3", "2", "1"))
data$cfq_r_y_20.factor <- factor(data$cfq_r_y_20, levels = c("4", "3", "2", "1"))
data$cfq_r_y_21.factor <- factor(data$cfq_r_y_21, levels = c("1", "2", "3", "4"))
data$cfq_r_y_22.factor <- factor(data$cfq_r_y_22, levels = c("4", "3", "2", "1"))
data$cfq_r_y_23.factor <- factor(data$cfq_r_y_23, levels = c("1", "2", "3", "4"))
data$cfq_r_y_24.factor <- factor(data$cfq_r_y_24, levels = c("4", "3", "2", "1"))
data$cfq_r_y_25.factor <- factor(data$cfq_r_y_25, levels = c("1", "2", "3", "4"))
data$cfq_r_y_26.factor <- factor(data$cfq_r_y_26, levels = c("4", "3", "2", "1"))
data$cfq_r_y_27.factor <- factor(data$cfq_r_y_27, levels = c("1", "2", "3", "4"))
data$cfq_r_y_28.factor <- factor(data$cfq_r_y_28, levels = c("1", "2", "3", "4"))
data$cfq_r_y_29.factor <- factor(data$cfq_r_y_29, levels = c("1", "2", "3", "4"))
data$cfq_r_y_30.factor <- factor(data$cfq_r_y_30, levels = c("1", "2", "3", "4"))
data$cfq_r_y_31.factor <- factor(data$cfq_r_y_31, levels = c("1", "2", "3", "4"))
data$cfq_r_y_32.factor <- factor(data$cfq_r_y_32, levels = c("1", "2", "3", "4"))
data$cfq_r_y_33.factor <- factor(data$cfq_r_y_33, levels = c("1", "2", "3", "4"))
data$cfq_r_y_34.factor <- factor(data$cfq_r_y_34, levels = c("1", "2", "3", "4"))
data$cfq_r_y_35.factor <- factor(data$cfq_r_y_35, levels = c("1", "2", "3", "4"))
data$cfqr_children_ages_611_complete.factor <- factor(data$cfqr_children_ages_611_complete, levels = c("0", "1", "2"))
data$cfq_r_o_b.factor <- factor(data$cfq_r_o_b, levels = c("1", "2"))
data$cfq_r_o_c.factor <- factor(data$cfq_r_o_c, levels = c("1", "2"))
data$cfq_r_o_d___1.factor <- factor(data$cfq_r_o_d___1, levels = c("0", "1"))
data$cfq_r_o_d___2.factor <- factor(data$cfq_r_o_d___2, levels = c("0", "1"))
data$cfq_r_o_d___3.factor <- factor(data$cfq_r_o_d___3, levels = c("0", "1"))
data$cfq_r_o_d___4.factor <- factor(data$cfq_r_o_d___4, levels = c("0", "1"))
data$cfq_r_o_d___5.factor <- factor(data$cfq_r_o_d___5, levels = c("0", "1"))
data$cfq_r_o_d___6.factor <- factor(data$cfq_r_o_d___6, levels = c("0", "1"))
data$cfq_r_o_d___7.factor <- factor(data$cfq_r_o_d___7, levels = c("0", "1"))
data$cfq_r_o_e.factor <- factor(data$cfq_r_o_e, levels = c("1", "2", "3", "4", "5", "6"))
data$cfq_r_o1.factor <- factor(data$cfq_r_o1, levels = c("4", "3", "2", "1"))
data$cfq_r_o2.factor <- factor(data$cfq_r_o2, levels = c("4", "3", "2", "1"))
data$cfq_r_o3.factor <- factor(data$cfq_r_o3, levels = c("4", "3", "2", "1"))
data$cfq_r_o4.factor <- factor(data$cfq_r_o4, levels = c("4", "3", "2", "1"))
data$cfq_r_o5.factor <- factor(data$cfq_r_o5, levels = c("4", "3", "2", "1"))
data$cfq_r_o6.factor <- factor(data$cfq_r_o6, levels = c("1", "2", "3", "4"))
data$cfq_r_o7.factor <- factor(data$cfq_r_o7, levels = c("1", "2", "3", "4"))
data$cfq_r_o8.factor <- factor(data$cfq_r_o8, levels = c("1", "2", "3", "4"))
data$cfq_r_or9.factor <- factor(data$cfq_r_or9, levels = c("1", "2", "3", "4"))
data$cfq_r_o10.factor <- factor(data$cfq_r_o10, levels = c("1", "2", "3", "4"))
data$cfq_r_o11.factor <- factor(data$cfq_r_o11, levels = c("1", "2", "3", "4"))
data$cfq_r_o12.factor <- factor(data$cfq_r_o12, levels = c("1", "2", "3", "4"))
data$cfq_r_o13.factor <- factor(data$cfq_r_o13, levels = c("1", "2", "3", "4"))
data$cfq_r_o14.factor <- factor(data$cfq_r_o14, levels = c("4", "3", "2", "1"))
data$cfq_r_o15.factor <- factor(data$cfq_r_o15, levels = c("1", "2", "3", "4"))
data$cfq_r_o16.factor <- factor(data$cfq_r_o16, levels = c("1", "2", "3", "4"))
data$cfq_r_o17.factor <- factor(data$cfq_r_o17, levels = c("1", "2", "3", "4"))
data$cfq_r_o18.factor <- factor(data$cfq_r_o18, levels = c("4", "3", "2", "1"))
data$cfq_r_o19.factor <- factor(data$cfq_r_o19, levels = c("4", "3", "2", "1"))
data$cfq_r_o20.factor <- factor(data$cfq_r_o20, levels = c("4", "3", "2", "1"))
data$cfq_r_o21.factor <- factor(data$cfq_r_o21, levels = c("1", "2", "3", "4"))
data$cfq_r_o22.factor <- factor(data$cfq_r_o22, levels = c("4", "3", "2", "1"))
data$cfq_r_o23.factor <- factor(data$cfq_r_o23, levels = c("1", "2", "3", "4"))
data$cfq_r_o24.factor <- factor(data$cfq_r_o24, levels = c("4", "3", "2", "1"))
data$cfq_r_o25.factor <- factor(data$cfq_r_o25, levels = c("1", "2", "3", "4"))
data$cfq_r_o26.factor <- factor(data$cfq_r_o26, levels = c("4", "3", "2", "1"))
data$cfq_r_o27.factor <- factor(data$cfq_r_o27, levels = c("1", "2", "3", "4"))
data$cfq_r_o28.factor <- factor(data$cfq_r_o28, levels = c("1", "2", "3", "4"))
data$cfq_r_o29.factor <- factor(data$cfq_r_o29, levels = c("1", "2", "3", "4"))
data$cfq_r_o30.factor <- factor(data$cfq_r_o30, levels = c("1", "2", "3", "4"))
data$cfq_r_o31.factor <- factor(data$cfq_r_o31, levels = c("1", "2", "3", "4"))
data$cfq_r_o32.factor <- factor(data$cfq_r_o32, levels = c("1", "2", "3", "4"))
data$cfq_r_o33.factor <- factor(data$cfq_r_o33, levels = c("1", "2", "3", "4"))
data$cfq_r_o34.factor <- factor(data$cfq_r_o34, levels = c("1", "2", "3", "4"))
data$cfq_r_o35.factor <- factor(data$cfq_r_o35, levels = c("1", "2", "3", "4"))
data$cfqr_children_ages_1213_complete.factor <- factor(data$cfqr_children_ages_1213_complete, levels = c("0", "1", "2"))
data$cfq_r_a_b.factor <- factor(data$cfq_r_a_b, levels = c("1", "0"))
data$cfq_r_a_c.factor <- factor(data$cfq_r_a_c, levels = c("1", "0"))
data$cfq_r_a_d.factor <- factor(data$cfq_r_a_d, levels = c("1", "2", "3", "4", "5", "6", "7"))
data$cfq_r_a_e___1.factor <- factor(data$cfq_r_a_e___1, levels = c("0", "1"))
data$cfq_r_a_e___2.factor <- factor(data$cfq_r_a_e___2, levels = c("0", "1"))
data$cfq_r_a_e___3.factor <- factor(data$cfq_r_a_e___3, levels = c("0", "1"))
data$cfq_r_a_e___4.factor <- factor(data$cfq_r_a_e___4, levels = c("0", "1"))
data$cfq_r_a_e___5.factor <- factor(data$cfq_r_a_e___5, levels = c("0", "1"))
data$cfq_r_a_e___6.factor <- factor(data$cfq_r_a_e___6, levels = c("0", "1"))
data$cfq_r_a_e___7.factor <- factor(data$cfq_r_a_e___7, levels = c("0", "1"))
data$cfq_r_a_f.factor <- factor(data$cfq_r_a_f, levels = c("1", "2", "3", "4", "5", "6"))
data$cfq_r_a_g.factor <- factor(data$cfq_r_a_g, levels = c("1", "2", "3", "4", "5", "6", "7"))
data$cfq_r_a_1.factor <- factor(data$cfq_r_a_1, levels = c("1", "2", "3", "4"))
data$cfq_r_a_2.factor <- factor(data$cfq_r_a_2, levels = c("1", "2", "3", "4"))
data$cfq_r_a_3.factor <- factor(data$cfq_r_a_3, levels = c("1", "2", "3", "4"))
data$cfq_r_a_4.factor <- factor(data$cfq_r_a_4, levels = c("1", "2", "3", "4"))
data$cfq_r_a_5.factor <- factor(data$cfq_r_a_5, levels = c("1", "2", "3", "4"))
data$cfq_r_a_6.factor <- factor(data$cfq_r_a_6, levels = c("1", "2", "3", "4"))
data$cfq_r_a_7.factor <- factor(data$cfq_r_a_7, levels = c("4", "3", "2", "1"))
data$cfq_r_a_8.factor <- factor(data$cfq_r_a_8, levels = c("1", "2", "3", "4"))
data$cfq_r_a_9.factor <- factor(data$cfq_r_a_9, levels = c("1", "2", "3", "4"))
data$cfq_r_a_10.factor <- factor(data$cfq_r_a_10, levels = c("1", "2", "3", "4"))
data$cfq_r_a_11.factor <- factor(data$cfq_r_a_11, levels = c("4", "3", "2", "1"))
data$cfq_r_a_12.factor <- factor(data$cfq_r_a_12, levels = c("1", "2", "3", "4"))
data$cfq_r_a_13.factor <- factor(data$cfq_r_a_13, levels = c("1", "2", "3", "4"))
data$cfq_r_a_14.factor <- factor(data$cfq_r_a_14, levels = c("1", "2", "3", "4"))
data$cfq_r_a_15.factor <- factor(data$cfq_r_a_15, levels = c("1", "2", "3", "4"))
data$cfq_r_a_16.factor <- factor(data$cfq_r_a_16, levels = c("1", "2", "3", "4"))
data$cfq_r_a_17.factor <- factor(data$cfq_r_a_17, levels = c("1", "2", "3", "4"))
data$cfq_r_a_18.factor <- factor(data$cfq_r_a_18, levels = c("1", "2", "3", "4"))
data$cfq_r_a_19.factor <- factor(data$cfq_r_a_19, levels = c("1", "2", "3", "4"))
data$cfq_r_a_20.factor <- factor(data$cfq_r_a_20, levels = c("1", "2", "3", "4"))
data$cfq_r_a_21.factor <- factor(data$cfq_r_a_21, levels = c("1", "2", "3", "4"))
data$cfq_r_a_22.factor <- factor(data$cfq_r_a_22, levels = c("1", "2", "3", "4"))
data$cfq_r_a_23.factor <- factor(data$cfq_r_a_23, levels = c("1", "2", "3", "4"))
data$cfq_r_a_24.factor <- factor(data$cfq_r_a_24, levels = c("1", "2", "3", "4"))
data$cfq_r_a_25.factor <- factor(data$cfq_r_a_25, levels = c("1", "2", "3", "4"))
data$cfq_r_a_26.factor <- factor(data$cfq_r_a_26, levels = c("1", "2", "3", "4"))
data$cfq_r_a_27.factor <- factor(data$cfq_r_a_27, levels = c("1", "2", "3", "4"))
data$cfq_r_a_28.factor <- factor(data$cfq_r_a_28, levels = c("1", "2", "3", "4"))
data$cfq_r_a_29.factor <- factor(data$cfq_r_a_29, levels = c("1", "2", "3", "4"))
data$cfq_r_a_30.factor <- factor(data$cfq_r_a_30, levels = c("1", "2", "3", "4"))
data$cfq_r_a_31.factor <- factor(data$cfq_r_a_31, levels = c("1", "2", "3", "4"))
data$cfq_r_a_32.factor <- factor(data$cfq_r_a_32, levels = c("1", "2", "3", "4"))
data$cfq_r_a_33.factor <- factor(data$cfq_r_a_33, levels = c("1", "2", "3", "4"))
data$cfq_r_a_34.factor <- factor(data$cfq_r_a_34, levels = c("1", "2", "3", "4"))
data$cfq_r_a_35.factor <- factor(data$cfq_r_a_35, levels = c("1", "2", "3", "4"))
data$cfq_r_a_36.factor <- factor(data$cfq_r_a_36, levels = c("1", "2", "3", "4"))
data$cfq_r_a_37.factor <- factor(data$cfq_r_a_37, levels = c("1", "2", "3", "4"))
data$cfq_r_a_38.factor <- factor(data$cfq_r_a_38, levels = c("1", "2", "3", "4"))
data$cfq_r_a_39.factor <- factor(data$cfq_r_a_39, levels = c("1", "2", "3", "4"))
data$cfq_r_a_40.factor <- factor(data$cfq_r_a_40, levels = c("1", "2", "3", "4"))
data$cfq_r_a_41.factor <- factor(data$cfq_r_a_41, levels = c("1", "2", "3", "4"))
data$cfq_r_a_42.factor <- factor(data$cfq_r_a_42, levels = c("1", "2", "3", "4"))
data$cfq_r_a_43.factor <- factor(data$cfq_r_a_43, levels = c("1", "2", "3", "4", "5"))
data$cfq_r_a_44.factor <- factor(data$cfq_r_a_44, levels = c("1", "2", "3", "4"))
data$cfq_r_a_45.factor <- factor(data$cfq_r_a_45, levels = c("1", "2", "3", "4"))
data$cfq_r_a_46.factor <- factor(data$cfq_r_a_46, levels = c("1", "2", "3", "4"))
data$cfq_r_a_47.factor <- factor(data$cfq_r_a_47, levels = c("1", "2", "3", "4"))
data$cfq_r_a_48.factor <- factor(data$cfq_r_a_48, levels = c("1", "2", "3", "4"))
data$cfq_r_a_49.factor <- factor(data$cfq_r_a_49, levels = c("1", "2", "3", "4"))
data$cfq_r_a_50.factor <- factor(data$cfq_r_a_50, levels = c("1", "2", "3", "4"))
data$cfqr_adolescents_and_adults_14_years_complete.factor <- factor(data$cfqr_adolescents_and_adults_14_years_complete, levels = c("0", "1", "2"))
data$cfqr_p_es_b.factor <- factor(data$cfqr_p_es_b, levels = c("1", "2", "3", "4", "5", "6", "7", "8"))
data$cfqr_p_es_c___1.factor <- factor(data$cfqr_p_es_c___1, levels = c("0", "1"))
data$cfqr_p_es_c___2.factor <- factor(data$cfqr_p_es_c___2, levels = c("0", "1"))
data$cfqr_p_es_c___3.factor <- factor(data$cfqr_p_es_c___3, levels = c("0", "1"))
data$cfqr_p_es_c___4.factor <- factor(data$cfqr_p_es_c___4, levels = c("0", "1"))
data$cfqr_p_es_c___5.factor <- factor(data$cfqr_p_es_c___5, levels = c("0", "1"))
data$cfqr_p_es_c___6.factor <- factor(data$cfqr_p_es_c___6, levels = c("0", "1"))
data$cfqr_p_es_c___7.factor <- factor(data$cfqr_p_es_c___7, levels = c("0", "1"))
data$cfqr_p_es_d.factor <- factor(data$cfqr_p_es_d, levels = c("1", "0"))
data$cfqr_p_es_f.factor <- factor(data$cfqr_p_es_f, levels = c("1", "2", "3", "4", "5", "6", "7"))
data$cfqr_p_es_g.factor <- factor(data$cfqr_p_es_g, levels = c("1", "2", "3", "4", "5", "6"))
data$cfqr_p_es_h.factor <- factor(data$cfqr_p_es_h, levels = c("1", "2", "3", "4", "5"))
data$cfqr_p_es_1.factor <- factor(data$cfqr_p_es_1, levels = c("1", "2", "3", "4"))
data$cfqr_p_es_2.factor <- factor(data$cfqr_p_es_2, levels = c("1", "2", "3", "4"))
data$cfqr_p_es_3.factor <- factor(data$cfqr_p_es_3, levels = c("1", "2", "3", "4"))
data$cfqr_p_es_4.factor <- factor(data$cfqr_p_es_4, levels = c("1", "2", "3", "4"))
data$cfqr_p_es_5.factor <- factor(data$cfqr_p_es_5, levels = c("1", "2", "3", "4"))
data$cfqr_p_es_6.factor <- factor(data$cfqr_p_es_6, levels = c("4", "3", "2", "1"))
data$cfqr_p_es_7.factor <- factor(data$cfqr_p_es_7, levels = c("1", "2", "3", "4"))
data$cfqr_p_es_8.factor <- factor(data$cfqr_p_es_8, levels = c("1", "2", "3", "4"))
data$cfqr_p_es_9.factor <- factor(data$cfqr_p_es_9, levels = c("1", "2", "3", "4"))
data$cfqr_p_es_10.factor <- factor(data$cfqr_p_es_10, levels = c("4", "3", "2", "1"))
data$cfqr_p_es_11.factor <- factor(data$cfqr_p_es_11, levels = c("1", "2", "3", "4"))
data$cfqr_p_es_12.factor <- factor(data$cfqr_p_es_12, levels = c("4", "3", "2", "1"))
data$cfqr_p_es_13.factor <- factor(data$cfqr_p_es_13, levels = c("1", "2", "3", "4"))
data$cfqr_p_es_14.factor <- factor(data$cfqr_p_es_14, levels = c("1", "2", "3", "4"))
data$cfqr_p_es_15.factor <- factor(data$cfqr_p_es_15, levels = c("1", "2", "3", "4"))
data$cfqr_p_es_16.factor <- factor(data$cfqr_p_es_16, levels = c("1", "2", "3", "4"))
data$cfqr_p_es_17.factor <- factor(data$cfqr_p_es_17, levels = c("1", "2", "3", "4"))
data$cfqr_p_es_18.factor <- factor(data$cfqr_p_es_18, levels = c("1", "2", "3", "4"))
data$cfqr_p_es_19.factor <- factor(data$cfqr_p_es_19, levels = c("1", "2", "3", "4"))
data$cfqr_p_es_20.factor <- factor(data$cfqr_p_es_20, levels = c("1", "2", "3", "4"))
data$cfqr_p_es_21.factor <- factor(data$cfqr_p_es_21, levels = c("1", "2", "3", "4"))
data$cfqr_p_es_22.factor <- factor(data$cfqr_p_es_22, levels = c("1", "2", "3", "4"))
data$cfqr_p_es_23.factor <- factor(data$cfqr_p_es_23, levels = c("1", "2", "3", "4"))
data$cfqr_p_es_24.factor <- factor(data$cfqr_p_es_24, levels = c("1", "2", "3", "4"))
data$cfqr_p_es_25.factor <- factor(data$cfqr_p_es_25, levels = c("1", "2", "3", "4"))
data$cfqr_p_es_26.factor <- factor(data$cfqr_p_es_26, levels = c("1", "2", "3", "4"))
data$cfqr_p_es_27.factor <- factor(data$cfqr_p_es_27, levels = c("1", "2", "3", "4"))
data$cfqr_p_es_28.factor <- factor(data$cfqr_p_es_28, levels = c("1", "2", "3", "4"))
data$cfqr_p_es_29.factor <- factor(data$cfqr_p_es_29, levels = c("1", "2", "3", "4"))
data$cfqr_p_es_30.factor <- factor(data$cfqr_p_es_30, levels = c("1", "2", "3", "4"))
data$cfqr_p_es_31.factor <- factor(data$cfqr_p_es_31, levels = c("1", "2", "3", "4"))
data$cfqr_p_es_32.factor <- factor(data$cfqr_p_es_32, levels = c("1", "2", "3", "4"))
data$cfqr_p_es_33.factor <- factor(data$cfqr_p_es_33, levels = c("1", "2", "3", "4"))
data$cfqr_p_es_34.factor <- factor(data$cfqr_p_es_34, levels = c("1", "2", "3", "4"))
data$cfqr_p_es_35.factor <- factor(data$cfqr_p_es_35, levels = c("1", "2", "3", "4"))
data$cfqr_p_es_36.factor <- factor(data$cfqr_p_es_36, levels = c("1", "2", "3", "4"))
data$cfqr_p_es_37.factor <- factor(data$cfqr_p_es_37, levels = c("1", "2", "3", "4", "5"))
data$cfqr_p_es_38.factor <- factor(data$cfqr_p_es_38, levels = c("1", "2", "3", "4"))
data$cfqr_p_es_39.factor <- factor(data$cfqr_p_es_39, levels = c("1", "2", "3", "4"))
data$cfqr_p_es_40.factor <- factor(data$cfqr_p_es_40, levels = c("1", "2", "3", "4"))
data$cfqr_p_es_41.factor <- factor(data$cfqr_p_es_41, levels = c("1", "2", "3", "4"))
data$cfqr_p_es_42.factor <- factor(data$cfqr_p_es_42, levels = c("1", "2", "3", "4"))
data$cfqr_p_es_43.factor <- factor(data$cfqr_p_es_43, levels = c("1", "2", "3", "4"))
data$cfqr_p_es_44.factor <- factor(data$cfqr_p_es_44, levels = c("1", "2", "3", "4"))
data$spanish_cfqr_caregivers_age_613_complete.factor <- factor(data$spanish_cfqr_caregivers_age_613_complete, levels = c("0", "1", "2"))
data$cfq_r_o_b_es.factor <- factor(data$cfq_r_o_b_es, levels = c("1", "2"))
data$cfq_r_o_c_es.factor <- factor(data$cfq_r_o_c_es, levels = c("1", "0"))
data$cfq_r_o_d_es___1.factor <- factor(data$cfq_r_o_d_es___1, levels = c("0", "1"))
data$cfq_r_o_d_es___2.factor <- factor(data$cfq_r_o_d_es___2, levels = c("0", "1"))
data$cfq_r_o_d_es___3.factor <- factor(data$cfq_r_o_d_es___3, levels = c("0", "1"))
data$cfq_r_o_d_es___4.factor <- factor(data$cfq_r_o_d_es___4, levels = c("0", "1"))
data$cfq_r_o_d_es___5.factor <- factor(data$cfq_r_o_d_es___5, levels = c("0", "1"))
data$cfq_r_o_d_es___6.factor <- factor(data$cfq_r_o_d_es___6, levels = c("0", "1"))
data$cfq_r_o_d_es___7.factor <- factor(data$cfq_r_o_d_es___7, levels = c("0", "1"))
data$cfq_r_o_e_es.factor <- factor(data$cfq_r_o_e_es, levels = c("1", "2", "3", "4", "5", "6"))
data$cfq_r_o1_es.factor <- factor(data$cfq_r_o1_es, levels = c("4", "3", "2", "1"))
data$cfq_r_o2_es.factor <- factor(data$cfq_r_o2_es, levels = c("4", "3", "2", "1"))
data$cfq_r_o3_es.factor <- factor(data$cfq_r_o3_es, levels = c("4", "3", "2", "1"))
data$cfq_r_o4_es.factor <- factor(data$cfq_r_o4_es, levels = c("4", "3", "2", "1"))
data$cfq_r_o5_es.factor <- factor(data$cfq_r_o5_es, levels = c("4", "3", "2", "1"))
data$cfq_r_o6_es.factor <- factor(data$cfq_r_o6_es, levels = c("4", "3", "2", "1"))
data$cfqr_o7_es.factor <- factor(data$cfqr_o7_es, levels = c("1", "2", "3", "4"))
data$cfqr_o8_es.factor <- factor(data$cfqr_o8_es, levels = c("1", "2", "3", "4"))
data$cfqr_o9_es.factor <- factor(data$cfqr_o9_es, levels = c("1", "2", "3", "4"))
data$cfqr_o10_es.factor <- factor(data$cfqr_o10_es, levels = c("1", "2", "3", "4"))
data$cfqr_o11_es.factor <- factor(data$cfqr_o11_es, levels = c("1", "2", "3", "4"))
data$cfqr_o12_es.factor <- factor(data$cfqr_o12_es, levels = c("1", "2", "3", "4"))
data$cfqr_o13_es.factor <- factor(data$cfqr_o13_es, levels = c("1", "2", "3", "4"))
data$cfq_r_o14_es.factor <- factor(data$cfq_r_o14_es, levels = c("4", "3", "2", "1"))
data$cfq_r_o15_es.factor <- factor(data$cfq_r_o15_es, levels = c("1", "2", "3", "4"))
data$cfq_r_o16_es.factor <- factor(data$cfq_r_o16_es, levels = c("1", "2", "3", "4"))
data$cfq_r_o17_es.factor <- factor(data$cfq_r_o17_es, levels = c("1", "2", "3", "4"))
data$cfq_r_o18_es.factor <- factor(data$cfq_r_o18_es, levels = c("4", "3", "2", "1"))
data$cfq_r_o19_es.factor <- factor(data$cfq_r_o19_es, levels = c("4", "3", "2", "1"))
data$cfq_r_o20_es.factor <- factor(data$cfq_r_o20_es, levels = c("4", "3", "2", "1"))
data$cfq_r_o21_es.factor <- factor(data$cfq_r_o21_es, levels = c("1", "2", "3", "4"))
data$cfq_r_o22_es.factor <- factor(data$cfq_r_o22_es, levels = c("4", "3", "2", "1"))
data$cfq_r_o23_es.factor <- factor(data$cfq_r_o23_es, levels = c("1", "2", "3", "4"))
data$cfq_r_o24_es.factor <- factor(data$cfq_r_o24_es, levels = c("4", "3", "2", "1"))
data$cfq_r_o25_es.factor <- factor(data$cfq_r_o25_es, levels = c("1", "2", "3", "4"))
data$cfq_r_o26_es.factor <- factor(data$cfq_r_o26_es, levels = c("4", "3", "2", "1"))
data$cfq_r_o27_es.factor <- factor(data$cfq_r_o27_es, levels = c("1", "2", "3", "4"))
data$cfq_r_o28_es.factor <- factor(data$cfq_r_o28_es, levels = c("1", "2", "3", "4"))
data$cfq_r_o29_es.factor <- factor(data$cfq_r_o29_es, levels = c("1", "2", "3", "4"))
data$cfq_r_o30_es.factor <- factor(data$cfq_r_o30_es, levels = c("1", "2", "3", "4"))
data$cfqr_o31_es.factor <- factor(data$cfqr_o31_es, levels = c("1", "2", "3", "4"))
data$cfqr_o32_es.factor <- factor(data$cfqr_o32_es, levels = c("1", "2", "3", "4"))
data$cfqr_o33_es.factor <- factor(data$cfqr_o33_es, levels = c("1", "2", "3", "4"))
data$cfqr_o34_es.factor <- factor(data$cfqr_o34_es, levels = c("1", "2", "3", "4"))
data$cfqr_o35_es.factor <- factor(data$cfqr_o35_es, levels = c("1", "2", "3", "4"))
data$cfqr_children_ages_1213_2_complete.factor <- factor(data$cfqr_children_ages_1213_2_complete, levels = c("0", "1", "2"))
data$cfqr_a_es_b.factor <- factor(data$cfqr_a_es_b, levels = c("1", "2"))
data$cfqr_a_es_c.factor <- factor(data$cfqr_a_es_c, levels = c("1", "0"))
data$cfqr_a_es_d.factor <- factor(data$cfqr_a_es_d, levels = c("1", "2", "3", "4", "5", "6", "7"))
data$cfqr_a_es_e___1.factor <- factor(data$cfqr_a_es_e___1, levels = c("0", "1"))
data$cfqr_a_es_e___2.factor <- factor(data$cfqr_a_es_e___2, levels = c("0", "1"))
data$cfqr_a_es_e___3.factor <- factor(data$cfqr_a_es_e___3, levels = c("0", "1"))
data$cfqr_a_es_e___4.factor <- factor(data$cfqr_a_es_e___4, levels = c("0", "1"))
data$cfqr_a_es_e___5.factor <- factor(data$cfqr_a_es_e___5, levels = c("0", "1"))
data$cfqr_a_es_e___6.factor <- factor(data$cfqr_a_es_e___6, levels = c("0", "1"))
data$cfqr_a_es_e___7.factor <- factor(data$cfqr_a_es_e___7, levels = c("0", "1"))
data$cfqr_a_es_f.factor <- factor(data$cfqr_a_es_f, levels = c("1", "2", "3", "4", "5", "6"))
data$cfqr_a_es_g.factor <- factor(data$cfqr_a_es_g, levels = c("1", "2", "3", "4", "5", "6", "7"))
data$cfqr_a_es_1.factor <- factor(data$cfqr_a_es_1, levels = c("1", "2", "3", "4"))
data$cfqr_a_es_2.factor <- factor(data$cfqr_a_es_2, levels = c("1", "2", "3", "4"))
data$cfqr_a_es_3.factor <- factor(data$cfqr_a_es_3, levels = c("1", "2", "3", "4"))
data$cfqr_a_es_4.factor <- factor(data$cfqr_a_es_4, levels = c("1", "2", "3", "4"))
data$cfqr_a_es_5.factor <- factor(data$cfqr_a_es_5, levels = c("1", "2", "3", "4"))
data$cfqr_a_es_6.factor <- factor(data$cfqr_a_es_6, levels = c("4", "3", "2", "1"))
data$cfqr_a_es_7.factor <- factor(data$cfqr_a_es_7, levels = c("1", "2", "3", "4"))
data$cfqr_a_es_8.factor <- factor(data$cfqr_a_es_8, levels = c("1", "2", "3", "4"))
data$cfqr_a_es_9.factor <- factor(data$cfqr_a_es_9, levels = c("1", "2", "3", "4"))
data$cfqr_a_es_10.factor <- factor(data$cfqr_a_es_10, levels = c("4", "3", "2", "1"))
data$cfqr_a_es_11.factor <- factor(data$cfqr_a_es_11, levels = c("1", "2", "3", "4"))
data$cfqr_a_es_12.factor <- factor(data$cfqr_a_es_12, levels = c("1", "2", "3", "4"))
data$cfqr_a_es_13.factor <- factor(data$cfqr_a_es_13, levels = c("1", "2", "3", "4"))
data$cfqr_a_es_14.factor <- factor(data$cfqr_a_es_14, levels = c("1", "2", "3", "4"))
data$cfqr_a_es_15.factor <- factor(data$cfqr_a_es_15, levels = c("1", "2", "3", "4"))
data$cfqr_a_es_16.factor <- factor(data$cfqr_a_es_16, levels = c("1", "2", "3", "4"))
data$cfqr_a_es_17.factor <- factor(data$cfqr_a_es_17, levels = c("1", "2", "3", "4"))
data$cfqr_a_es_18.factor <- factor(data$cfqr_a_es_18, levels = c("1", "2", "3", "4"))
data$cfqr_a_es_19.factor <- factor(data$cfqr_a_es_19, levels = c("1", "2", "3", "4"))
data$cfqr_a_es_20.factor <- factor(data$cfqr_a_es_20, levels = c("1", "2", "3", "4"))
data$cfqr_a_es_21.factor <- factor(data$cfqr_a_es_21, levels = c("1", "2", "3", "4"))
data$cfqr_a_es_22.factor <- factor(data$cfqr_a_es_22, levels = c("1", "2", "3", "4"))
data$cfqr_a_es_23.factor <- factor(data$cfqr_a_es_23, levels = c("1", "2", "3", "4"))
data$cfqr_a_es_24.factor <- factor(data$cfqr_a_es_24, levels = c("1", "2", "3", "4"))
data$cfqr_a_es_25.factor <- factor(data$cfqr_a_es_25, levels = c("1", "2", "3", "4"))
data$cfqr_a_es_26.factor <- factor(data$cfqr_a_es_26, levels = c("1", "2", "3", "4"))
data$cfqr_a_es_27.factor <- factor(data$cfqr_a_es_27, levels = c("1", "2", "3", "4"))
data$cfqr_a_es_28.factor <- factor(data$cfqr_a_es_28, levels = c("1", "2", "3", "4"))
data$cfqr_a_es_29.factor <- factor(data$cfqr_a_es_29, levels = c("1", "2", "3", "4"))
data$cfqr_a_es_30.factor <- factor(data$cfqr_a_es_30, levels = c("1", "2", "3", "4"))
data$cfqr_a_es_31.factor <- factor(data$cfqr_a_es_31, levels = c("1", "2", "3", "4"))
data$cfqr_a_es_32.factor <- factor(data$cfqr_a_es_32, levels = c("1", "2", "3", "4"))
data$cfqr_a_es_33.factor <- factor(data$cfqr_a_es_33, levels = c("1", "2", "3", "4"))
data$cfqr_a_es_34.factor <- factor(data$cfqr_a_es_34, levels = c("1", "2", "3", "4"))
data$cfqr_a_es_35.factor <- factor(data$cfqr_a_es_35, levels = c("1", "2", "3", "4"))
data$cfqr_a_es_36.factor <- factor(data$cfqr_a_es_36, levels = c("1", "2", "3", "4"))
data$cfqr_a_es_37.factor <- factor(data$cfqr_a_es_37, levels = c("1", "2", "3", "4"))
data$cfqr_a_es_38.factor <- factor(data$cfqr_a_es_38, levels = c("1", "2", "3", "4"))
data$cfqr_a_es_39.factor <- factor(data$cfqr_a_es_39, levels = c("1", "2", "3", "4"))
data$cfqr_a_es_40.factor <- factor(data$cfqr_a_es_40, levels = c("1", "2", "3", "4"))
data$cfqr_a_es_41.factor <- factor(data$cfqr_a_es_41, levels = c("1", "2", "3", "4"))
data$cfqr_a_es_42.factor <- factor(data$cfqr_a_es_42, levels = c("1", "2", "3", "4"))
data$cfqr_a_es_43.factor <- factor(data$cfqr_a_es_43, levels = c("1", "2", "3", "4", "5"))
data$cfqr_a_es_44.factor <- factor(data$cfqr_a_es_44, levels = c("1", "2", "3", "4"))
data$cfqr_a_es_45.factor <- factor(data$cfqr_a_es_45, levels = c("1", "2", "3", "4"))
data$cfqr_a_es_46.factor <- factor(data$cfqr_a_es_46, levels = c("1", "2", "3", "4"))
data$cfqr_a_es_47.factor <- factor(data$cfqr_a_es_47, levels = c("1", "2", "3", "4"))
data$cfqr_a_es_48.factor <- factor(data$cfqr_a_es_48, levels = c("1", "2", "3", "4"))
data$cfqr_a_es_49.factor <- factor(data$cfqr_a_es_49, levels = c("1", "2", "3", "4"))
data$cfqr_a_es_50.factor <- factor(data$cfqr_a_es_50, levels = c("1", "2", "3", "4"))
data$spanish_cfqr_adolescents_and_adults_complete.factor <- factor(data$spanish_cfqr_adolescents_and_adults_complete, levels = c("0", "1", "2"))
data$meds_hc.factor <- factor(data$meds_hc, levels = c("1", "0"))
data$comorbid_dx_hc___3.factor <- factor(data$comorbid_dx_hc___3, levels = c("0", "1"))
data$comorbid_dx_hc___4.factor <- factor(data$comorbid_dx_hc___4, levels = c("0", "1"))
data$comorbid_dx_hc___5.factor <- factor(data$comorbid_dx_hc___5, levels = c("0", "1"))
data$pulm_ex_hc.factor <- factor(data$pulm_ex_hc, levels = c("1", "0"))
data$antib.factor <- factor(data$antib, levels = c("1", "0"))
data$question_complete_hc.factor <- factor(data$question_complete_hc, levels = c("1", "0"))
data$hc_visit_1_complete.factor <- factor(data$hc_visit_1_complete, levels = c("0", "1", "2"))
data$q1.factor <- factor(data$q1, levels = c("1", "2", "3", "4", "5", "6"))
data$q2.factor <- factor(data$q2, levels = c("1", "2", "3", "4", "5", "6"))
data$q3.factor <- factor(data$q3, levels = c("1", "2", "3", "4", "5", "6"))
data$q4.factor <- factor(data$q4, levels = c("1", "2", "3", "4", "5", "6"))
data$q5.factor <- factor(data$q5, levels = c("1", "2", "3", "4", "5", "6"))
data$hc_pediatric_cough_survey_complete.factor <- factor(data$hc_pediatric_cough_survey_complete, levels = c("0", "1", "2"))
data$surveys_interim.factor <- factor(data$surveys_interim, levels = c("1", "0"))
data$abx_interim.factor <- factor(data$abx_interim, levels = c("1", "0"))
data$meds_interim.factor <- factor(data$meds_interim, levels = c("1", "0"))
data$interim_phone_call_complete.factor <- factor(data$interim_phone_call_complete, levels = c("0", "1", "2"))
data$cohort_v2.factor <- factor(data$cohort_v2, levels = c("1", "2"))
data$h_obtained_v2.factor <- factor(data$h_obtained_v2, levels = c("1", "0"))
data$w_obtained_v2.factor <- factor(data$w_obtained_v2, levels = c("1", "0"))
data$med_changes.factor <- factor(data$med_changes, levels = c("1", "0"))
data$pft_v2.factor <- factor(data$pft_v2, levels = c("1", "0"))
data$post_pft_v2.factor <- factor(data$post_pft_v2, levels = c("1", "0"))
data$pulm_ex_v2.factor <- factor(data$pulm_ex_v2, levels = c("1", "0"))
data$abx_other_v2.factor <- factor(data$abx_other_v2, levels = c("1", "0"))
data$device_returned.factor <- factor(data$device_returned, levels = c("1", "0"))
data$visit_2_complete.factor <- factor(data$visit_2_complete, levels = c("0", "1", "2"))
data$cfq_r_p_b_v2.factor <- factor(data$cfq_r_p_b_v2, levels = c("1", "2", "3", "4", "5", "6", "7", "8"))
data$cfq_r_p_c_v2___1.factor <- factor(data$cfq_r_p_c_v2___1, levels = c("0", "1"))
data$cfq_r_p_c_v2___2.factor <- factor(data$cfq_r_p_c_v2___2, levels = c("0", "1"))
data$cfq_r_p_c_v2___3.factor <- factor(data$cfq_r_p_c_v2___3, levels = c("0", "1"))
data$cfq_r_p_c_v2___4.factor <- factor(data$cfq_r_p_c_v2___4, levels = c("0", "1"))
data$cfq_r_p_c_v2___5.factor <- factor(data$cfq_r_p_c_v2___5, levels = c("0", "1"))
data$cfq_r_p_c_v2___6.factor <- factor(data$cfq_r_p_c_v2___6, levels = c("0", "1"))
data$cfq_r_p_c_v2___7.factor <- factor(data$cfq_r_p_c_v2___7, levels = c("0", "1"))
data$cfq_r_p_d_v2.factor <- factor(data$cfq_r_p_d_v2, levels = c("1", "0"))
data$cfq_r_p_f_v2.factor <- factor(data$cfq_r_p_f_v2, levels = c("1", "2", "3", "4", "5", "6", "7"))
data$cfq_r_p_g_v2.factor <- factor(data$cfq_r_p_g_v2, levels = c("1", "2", "3", "4", "5", "6"))
data$cfq_r_p_h_v2.factor <- factor(data$cfq_r_p_h_v2, levels = c("1", "2", "3", "4", "5"))
data$cfq_r_p_1_v2.factor <- factor(data$cfq_r_p_1_v2, levels = c("1", "2", "3", "4"))
data$cfq_r_p_2_v2.factor <- factor(data$cfq_r_p_2_v2, levels = c("1", "2", "3", "4"))
data$cfq_r_p_3_v2.factor <- factor(data$cfq_r_p_3_v2, levels = c("1", "2", "3", "4"))
data$cfq_r_p_4_v2.factor <- factor(data$cfq_r_p_4_v2, levels = c("1", "2", "3", "4"))
data$cfq_r_p_5_v2.factor <- factor(data$cfq_r_p_5_v2, levels = c("1", "2", "3", "4"))
data$cfq_r_p_6_v2.factor <- factor(data$cfq_r_p_6_v2, levels = c("4", "3", "2", "1"))
data$cfq_r_p_7_v2.factor <- factor(data$cfq_r_p_7_v2, levels = c("1", "2", "3", "4"))
data$cfq_r_p_8_v2.factor <- factor(data$cfq_r_p_8_v2, levels = c("1", "2", "3", "4"))
data$cfq_r_p_9_v2.factor <- factor(data$cfq_r_p_9_v2, levels = c("1", "2", "3", "4"))
data$cfq_r_p_10_v2.factor <- factor(data$cfq_r_p_10_v2, levels = c("4", "3", "2", "1"))
data$cfq_r_p_11_v2.factor <- factor(data$cfq_r_p_11_v2, levels = c("1", "2", "3", "4"))
data$cfq_r_p_12_v2.factor <- factor(data$cfq_r_p_12_v2, levels = c("4", "3", "2", "1"))
data$cfq_r_p_13_v2.factor <- factor(data$cfq_r_p_13_v2, levels = c("1", "2", "3", "4"))
data$cfq_r_p_14_v2.factor <- factor(data$cfq_r_p_14_v2, levels = c("1", "2", "3", "4"))
data$cfq_r_p_15_v2.factor <- factor(data$cfq_r_p_15_v2, levels = c("1", "2", "3", "4"))
data$cfq_r_p_16_v2.factor <- factor(data$cfq_r_p_16_v2, levels = c("1", "2", "3", "4"))
data$cfq_r_p_17_v2.factor <- factor(data$cfq_r_p_17_v2, levels = c("1", "2", "3", "4"))
data$cfq_r_p_18_v2.factor <- factor(data$cfq_r_p_18_v2, levels = c("1", "2", "3", "4"))
data$cfq_r_p_19_v2.factor <- factor(data$cfq_r_p_19_v2, levels = c("1", "2", "3", "4"))
data$cfq_r_p_20_v2.factor <- factor(data$cfq_r_p_20_v2, levels = c("1", "2", "3", "4"))
data$cfq_r_p_21_v2.factor <- factor(data$cfq_r_p_21_v2, levels = c("1", "2", "3", "4"))
data$cfq_r_p_22_v2.factor <- factor(data$cfq_r_p_22_v2, levels = c("1", "2", "3", "4"))
data$cfq_r_p_23_v2.factor <- factor(data$cfq_r_p_23_v2, levels = c("1", "2", "3", "4"))
data$cfq_r_p_24_v2.factor <- factor(data$cfq_r_p_24_v2, levels = c("1", "2", "3", "4"))
data$cfq_r_p_25_v2.factor <- factor(data$cfq_r_p_25_v2, levels = c("1", "2", "3", "4"))
data$cfq_r_p_26_v2.factor <- factor(data$cfq_r_p_26_v2, levels = c("1", "2", "3", "4"))
data$cfq_r_p_27_v2.factor <- factor(data$cfq_r_p_27_v2, levels = c("1", "2", "3", "4"))
data$cfq_r_p_28_v2.factor <- factor(data$cfq_r_p_28_v2, levels = c("1", "2", "3", "4"))
data$cfq_r_p_29_v2.factor <- factor(data$cfq_r_p_29_v2, levels = c("1", "2", "3", "4"))
data$cfq_r_p_30_v2.factor <- factor(data$cfq_r_p_30_v2, levels = c("1", "2", "3", "4"))
data$cfq_r_p_31_v2.factor <- factor(data$cfq_r_p_31_v2, levels = c("1", "2", "3", "4"))
data$cfq_r_p_32_v2.factor <- factor(data$cfq_r_p_32_v2, levels = c("1", "2", "3", "4"))
data$cfq_r_p_33_v2.factor <- factor(data$cfq_r_p_33_v2, levels = c("1", "2", "3", "4"))
data$cfq_r_p_34_v2.factor <- factor(data$cfq_r_p_34_v2, levels = c("1", "2", "3", "4"))
data$cfq_r_p_35_v2.factor <- factor(data$cfq_r_p_35_v2, levels = c("1", "2", "3", "4"))
data$cfq_r_p_36_v2.factor <- factor(data$cfq_r_p_36_v2, levels = c("1", "2", "3", "4"))
data$cfq_r_p_37_v2.factor <- factor(data$cfq_r_p_37_v2, levels = c("1", "2", "3", "4", "5"))
data$cfq_r_p_38_v2.factor <- factor(data$cfq_r_p_38_v2, levels = c("1", "2", "3", "4"))
data$cfq_r_p_39_v2.factor <- factor(data$cfq_r_p_39_v2, levels = c("1", "2", "3", "4"))
data$cfq_r_p_40_v2.factor <- factor(data$cfq_r_p_40_v2, levels = c("1", "2", "3", "4"))
data$cfq_r_p_41_v2.factor <- factor(data$cfq_r_p_41_v2, levels = c("1", "2", "3", "4"))
data$cfq_r_p_42_v2.factor <- factor(data$cfq_r_p_42_v2, levels = c("1", "2", "3", "4"))
data$cfq_r_p_43_v2.factor <- factor(data$cfq_r_p_43_v2, levels = c("1", "2", "3", "4"))
data$cfq_r_p_44_v2.factor <- factor(data$cfq_r_p_44_v2, levels = c("1", "2", "3", "4"))
data$cfqr_caregivers_613_visit_2_complete.factor <- factor(data$cfqr_caregivers_613_visit_2_complete, levels = c("0", "1", "2"))
data$cfq_r_y_b_v2.factor <- factor(data$cfq_r_y_b_v2, levels = c("1", "2"))
data$cfq_r_y_c_v2.factor <- factor(data$cfq_r_y_c_v2, levels = c("1", "2"))
data$cfq_r_y_d_v2___1.factor <- factor(data$cfq_r_y_d_v2___1, levels = c("0", "1"))
data$cfq_r_y_d_v2___2.factor <- factor(data$cfq_r_y_d_v2___2, levels = c("0", "1"))
data$cfq_r_y_d_v2___3.factor <- factor(data$cfq_r_y_d_v2___3, levels = c("0", "1"))
data$cfq_r_y_d_v2___4.factor <- factor(data$cfq_r_y_d_v2___4, levels = c("0", "1"))
data$cfq_r_y_d_v2___5.factor <- factor(data$cfq_r_y_d_v2___5, levels = c("0", "1"))
data$cfq_r_y_d_v2___6.factor <- factor(data$cfq_r_y_d_v2___6, levels = c("0", "1"))
data$cfq_r_y_d_v2___7.factor <- factor(data$cfq_r_y_d_v2___7, levels = c("0", "1"))
data$cfq_r_y_e_v2.factor <- factor(data$cfq_r_y_e_v2, levels = c("1", "2", "3", "4", "5", "6", "7", "8", "9"))
data$cfq_r_y_1_v2.factor <- factor(data$cfq_r_y_1_v2, levels = c("4", "3", "2", "1"))
data$cfq_r_y_2_v2.factor <- factor(data$cfq_r_y_2_v2, levels = c("4", "3", "2", "1"))
data$cfq_r_y_3_v2.factor <- factor(data$cfq_r_y_3_v2, levels = c("4", "3", "2", "1"))
data$cfq_r_y_4_v2.factor <- factor(data$cfq_r_y_4_v2, levels = c("4", "3", "2", "1"))
data$cfq_r_y_5_v2.factor <- factor(data$cfq_r_y_5_v2, levels = c("4", "3", "2", "1"))
data$cfq_r_y_6_v2.factor <- factor(data$cfq_r_y_6_v2, levels = c("1", "2", "3", "4"))
data$cfq_r_y_7_v2.factor <- factor(data$cfq_r_y_7_v2, levels = c("1", "2", "3", "4"))
data$cfq_r_y_8_v2.factor <- factor(data$cfq_r_y_8_v2, levels = c("1", "2", "3", "4"))
data$cfq_r_y_9_v2.factor <- factor(data$cfq_r_y_9_v2, levels = c("1", "2", "3", "4"))
data$cfq_r_y_10_v2.factor <- factor(data$cfq_r_y_10_v2, levels = c("1", "2", "3", "4"))
data$cfq_r_y_11_v2.factor <- factor(data$cfq_r_y_11_v2, levels = c("1", "2", "3", "4"))
data$cfq_r_y_12_v2.factor <- factor(data$cfq_r_y_12_v2, levels = c("1", "2", "3", "4"))
data$cfq_r_y_13_v2.factor <- factor(data$cfq_r_y_13_v2, levels = c("1", "2", "3", "4"))
data$cfq_r_y_14_v2.factor <- factor(data$cfq_r_y_14_v2, levels = c("1", "2", "3", "4"))
data$cfq_r_y_15_v2.factor <- factor(data$cfq_r_y_15_v2, levels = c("1", "2", "3", "4"))
data$cfq_r_y_16_v2.factor <- factor(data$cfq_r_y_16_v2, levels = c("1", "2", "3", "4"))
data$cfq_r_y_17_v2.factor <- factor(data$cfq_r_y_17_v2, levels = c("1", "2", "3", "4"))
data$cfq_r_y_18_v2.factor <- factor(data$cfq_r_y_18_v2, levels = c("4", "3", "2", "1"))
data$cfq_r_y_19_v2.factor <- factor(data$cfq_r_y_19_v2, levels = c("4", "3", "2", "1"))
data$cfq_r_y_20_v2.factor <- factor(data$cfq_r_y_20_v2, levels = c("4", "3", "2", "1"))
data$cfq_r_y_21_v2.factor <- factor(data$cfq_r_y_21_v2, levels = c("1", "2", "3", "4"))
data$cfq_r_y_22_v2.factor <- factor(data$cfq_r_y_22_v2, levels = c("4", "3", "2", "1"))
data$cfq_r_y_23_v2.factor <- factor(data$cfq_r_y_23_v2, levels = c("1", "2", "3", "4"))
data$cfq_r_y_24_v2.factor <- factor(data$cfq_r_y_24_v2, levels = c("4", "3", "2", "1"))
data$cfq_r_y_25_v2.factor <- factor(data$cfq_r_y_25_v2, levels = c("1", "2", "3", "4"))
data$cfq_r_y_26_v2.factor <- factor(data$cfq_r_y_26_v2, levels = c("4", "3", "2", "1"))
data$cfq_r_y_27_v2.factor <- factor(data$cfq_r_y_27_v2, levels = c("1", "2", "3", "4"))
data$cfq_r_y_28_v2.factor <- factor(data$cfq_r_y_28_v2, levels = c("1", "2", "3", "4"))
data$cfq_r_y_29_v2.factor <- factor(data$cfq_r_y_29_v2, levels = c("1", "2", "3", "4"))
data$cfq_r_y_30_v2.factor <- factor(data$cfq_r_y_30_v2, levels = c("1", "2", "3", "4"))
data$cfq_r_y_31_v2.factor <- factor(data$cfq_r_y_31_v2, levels = c("1", "2", "3", "4"))
data$cfq_r_y_32_v2.factor <- factor(data$cfq_r_y_32_v2, levels = c("1", "2", "3", "4"))
data$cfq_r_y_33_v2.factor <- factor(data$cfq_r_y_33_v2, levels = c("1", "2", "3", "4"))
data$cfq_r_y_34_v2.factor <- factor(data$cfq_r_y_34_v2, levels = c("1", "2", "3", "4"))
data$cfq_r_y_35_v2.factor <- factor(data$cfq_r_y_35_v2, levels = c("1", "2", "3", "4"))
data$cfqr_children_ages_611_visit_2_complete.factor <- factor(data$cfqr_children_ages_611_visit_2_complete, levels = c("0", "1", "2"))
data$cfq_r_o_b_v2.factor <- factor(data$cfq_r_o_b_v2, levels = c("1", "2"))
data$cfq_r_o_c_v2.factor <- factor(data$cfq_r_o_c_v2, levels = c("1", "2"))
data$cfq_r_o_d_v2___1.factor <- factor(data$cfq_r_o_d_v2___1, levels = c("0", "1"))
data$cfq_r_o_d_v2___2.factor <- factor(data$cfq_r_o_d_v2___2, levels = c("0", "1"))
data$cfq_r_o_d_v2___3.factor <- factor(data$cfq_r_o_d_v2___3, levels = c("0", "1"))
data$cfq_r_o_d_v2___4.factor <- factor(data$cfq_r_o_d_v2___4, levels = c("0", "1"))
data$cfq_r_o_d_v2___5.factor <- factor(data$cfq_r_o_d_v2___5, levels = c("0", "1"))
data$cfq_r_o_d_v2___6.factor <- factor(data$cfq_r_o_d_v2___6, levels = c("0", "1"))
data$cfq_r_o_d_v2___7.factor <- factor(data$cfq_r_o_d_v2___7, levels = c("0", "1"))
data$cfq_r_o_e_v2.factor <- factor(data$cfq_r_o_e_v2, levels = c("1", "2", "3", "4", "5", "6"))
data$cfq_r_o1_v2.factor <- factor(data$cfq_r_o1_v2, levels = c("4", "3", "2", "1"))
data$cfq_r_o2_v2.factor <- factor(data$cfq_r_o2_v2, levels = c("4", "3", "2", "1"))
data$cfq_r_o3_v2.factor <- factor(data$cfq_r_o3_v2, levels = c("4", "3", "2", "1"))
data$cfq_r_o4_v2.factor <- factor(data$cfq_r_o4_v2, levels = c("4", "3", "2", "1"))
data$cfq_r_o5_v2.factor <- factor(data$cfq_r_o5_v2, levels = c("4", "3", "2", "1"))
data$cfq_r_o6_v2.factor <- factor(data$cfq_r_o6_v2, levels = c("1", "2", "3", "4"))
data$cfq_r_o7_v2.factor <- factor(data$cfq_r_o7_v2, levels = c("1", "2", "3", "4"))
data$cfq_r_o8_v2.factor <- factor(data$cfq_r_o8_v2, levels = c("1", "2", "3", "4"))
data$cfq_r_or9_v2.factor <- factor(data$cfq_r_or9_v2, levels = c("1", "2", "3", "4"))
data$cfq_r_o10_v2.factor <- factor(data$cfq_r_o10_v2, levels = c("1", "2", "3", "4"))
data$cfq_r_o11_v2.factor <- factor(data$cfq_r_o11_v2, levels = c("1", "2", "3", "4"))
data$cfq_r_o12_v2.factor <- factor(data$cfq_r_o12_v2, levels = c("1", "2", "3", "4"))
data$cfq_r_o13_v2.factor <- factor(data$cfq_r_o13_v2, levels = c("1", "2", "3", "4"))
data$cfq_r_o14_v2.factor <- factor(data$cfq_r_o14_v2, levels = c("4", "3", "2", "1"))
data$cfq_r_o15_v2.factor <- factor(data$cfq_r_o15_v2, levels = c("1", "2", "3", "4"))
data$cfq_r_o16_v2.factor <- factor(data$cfq_r_o16_v2, levels = c("1", "2", "3", "4"))
data$cfq_r_o17_v2.factor <- factor(data$cfq_r_o17_v2, levels = c("1", "2", "3", "4"))
data$cfq_r_o18_v2.factor <- factor(data$cfq_r_o18_v2, levels = c("4", "3", "2", "1"))
data$cfq_r_o19_v2.factor <- factor(data$cfq_r_o19_v2, levels = c("4", "3", "2", "1"))
data$cfq_r_o20_v2.factor <- factor(data$cfq_r_o20_v2, levels = c("4", "3", "2", "1"))
data$cfq_r_o21_v2.factor <- factor(data$cfq_r_o21_v2, levels = c("1", "2", "3", "4"))
data$cfq_r_o22_v2.factor <- factor(data$cfq_r_o22_v2, levels = c("4", "3", "2", "1"))
data$cfq_r_o23_v2.factor <- factor(data$cfq_r_o23_v2, levels = c("1", "2", "3", "4"))
data$cfq_r_o24_v2.factor <- factor(data$cfq_r_o24_v2, levels = c("4", "3", "2", "1"))
data$cfq_r_o25_v2.factor <- factor(data$cfq_r_o25_v2, levels = c("1", "2", "3", "4"))
data$cfq_r_o26_v2.factor <- factor(data$cfq_r_o26_v2, levels = c("4", "3", "2", "1"))
data$cfq_r_o27_v2.factor <- factor(data$cfq_r_o27_v2, levels = c("1", "2", "3", "4"))
data$cfq_r_o28_v2.factor <- factor(data$cfq_r_o28_v2, levels = c("1", "2", "3", "4"))
data$cfq_r_o29_v2.factor <- factor(data$cfq_r_o29_v2, levels = c("1", "2", "3", "4"))
data$cfq_r_o30_v2.factor <- factor(data$cfq_r_o30_v2, levels = c("1", "2", "3", "4"))
data$cfq_r_o31_v2.factor <- factor(data$cfq_r_o31_v2, levels = c("1", "2", "3", "4"))
data$cfq_r_o32_v2.factor <- factor(data$cfq_r_o32_v2, levels = c("1", "2", "3", "4"))
data$cfq_r_o33_v2.factor <- factor(data$cfq_r_o33_v2, levels = c("1", "2", "3", "4"))
data$cfq_r_o34_v2.factor <- factor(data$cfq_r_o34_v2, levels = c("1", "2", "3", "4"))
data$cfq_r_o35_v2.factor <- factor(data$cfq_r_o35_v2, levels = c("1", "2", "3", "4"))
data$cfqr_children_ages_1213_visit_2_complete.factor <- factor(data$cfqr_children_ages_1213_visit_2_complete, levels = c("0", "1", "2"))
data$cfq_r_a_b_v2.factor <- factor(data$cfq_r_a_b_v2, levels = c("1", "0"))
data$cfq_r_a_c_v2.factor <- factor(data$cfq_r_a_c_v2, levels = c("1", "0"))
data$cfq_r_a_d_v2.factor <- factor(data$cfq_r_a_d_v2, levels = c("1", "2", "3", "4", "5", "6", "7"))
data$cfq_r_a_e_v2___1.factor <- factor(data$cfq_r_a_e_v2___1, levels = c("0", "1"))
data$cfq_r_a_e_v2___2.factor <- factor(data$cfq_r_a_e_v2___2, levels = c("0", "1"))
data$cfq_r_a_e_v2___3.factor <- factor(data$cfq_r_a_e_v2___3, levels = c("0", "1"))
data$cfq_r_a_e_v2___4.factor <- factor(data$cfq_r_a_e_v2___4, levels = c("0", "1"))
data$cfq_r_a_e_v2___5.factor <- factor(data$cfq_r_a_e_v2___5, levels = c("0", "1"))
data$cfq_r_a_e_v2___6.factor <- factor(data$cfq_r_a_e_v2___6, levels = c("0", "1"))
data$cfq_r_a_e_v2___7.factor <- factor(data$cfq_r_a_e_v2___7, levels = c("0", "1"))
data$cfq_r_a_f_v2.factor <- factor(data$cfq_r_a_f_v2, levels = c("1", "2", "3", "4", "5", "6"))
data$cfq_r_a_g_v2.factor <- factor(data$cfq_r_a_g_v2, levels = c("1", "2", "3", "4", "5", "6", "7"))
data$cfq_r_a_1_v2.factor <- factor(data$cfq_r_a_1_v2, levels = c("1", "2", "3", "4"))
data$cfq_r_a_2_v2.factor <- factor(data$cfq_r_a_2_v2, levels = c("1", "2", "3", "4"))
data$cfq_r_a_3_v2.factor <- factor(data$cfq_r_a_3_v2, levels = c("1", "2", "3", "4"))
data$cfq_r_a_4_v2.factor <- factor(data$cfq_r_a_4_v2, levels = c("1", "2", "3", "4"))
data$cfq_r_a_5_v2.factor <- factor(data$cfq_r_a_5_v2, levels = c("1", "2", "3", "4"))
data$cfq_r_a_6_v2.factor <- factor(data$cfq_r_a_6_v2, levels = c("1", "2", "3", "4"))
data$cfq_r_a_7_v2.factor <- factor(data$cfq_r_a_7_v2, levels = c("4", "3", "2", "1"))
data$cfq_r_a_8_v2.factor <- factor(data$cfq_r_a_8_v2, levels = c("1", "2", "3", "4"))
data$cfq_r_a_9_v2.factor <- factor(data$cfq_r_a_9_v2, levels = c("1", "2", "3", "4"))
data$cfq_r_a_10_v2.factor <- factor(data$cfq_r_a_10_v2, levels = c("1", "2", "3", "4"))
data$cfq_r_a_11_v2.factor <- factor(data$cfq_r_a_11_v2, levels = c("4", "3", "2", "1"))
data$cfq_r_a_12_v2.factor <- factor(data$cfq_r_a_12_v2, levels = c("1", "2", "3", "4"))
data$cfq_r_a_13_v2.factor <- factor(data$cfq_r_a_13_v2, levels = c("1", "2", "3", "4"))
data$cfq_r_a_14_v2.factor <- factor(data$cfq_r_a_14_v2, levels = c("1", "2", "3", "4"))
data$cfq_r_a_15_v2.factor <- factor(data$cfq_r_a_15_v2, levels = c("1", "2", "3", "4"))
data$cfq_r_a_16_v2.factor <- factor(data$cfq_r_a_16_v2, levels = c("1", "2", "3", "4"))
data$cfq_r_a_17_v2.factor <- factor(data$cfq_r_a_17_v2, levels = c("1", "2", "3", "4"))
data$cfq_r_a_18_v2.factor <- factor(data$cfq_r_a_18_v2, levels = c("1", "2", "3", "4"))
data$cfq_r_a_19_v2.factor <- factor(data$cfq_r_a_19_v2, levels = c("1", "2", "3", "4"))
data$cfq_r_a_20_v2.factor <- factor(data$cfq_r_a_20_v2, levels = c("1", "2", "3", "4"))
data$cfq_r_a_21_v2.factor <- factor(data$cfq_r_a_21_v2, levels = c("1", "2", "3", "4"))
data$cfq_r_a_22_v2.factor <- factor(data$cfq_r_a_22_v2, levels = c("1", "2", "3", "4"))
data$cfq_r_a_23_v2.factor <- factor(data$cfq_r_a_23_v2, levels = c("1", "2", "3", "4"))
data$cfq_r_a_24_v2.factor <- factor(data$cfq_r_a_24_v2, levels = c("1", "2", "3", "4"))
data$cfq_r_a_25_v2.factor <- factor(data$cfq_r_a_25_v2, levels = c("1", "2", "3", "4"))
data$cfq_r_a_26_v2.factor <- factor(data$cfq_r_a_26_v2, levels = c("1", "2", "3", "4"))
data$cfq_r_a_27_v2.factor <- factor(data$cfq_r_a_27_v2, levels = c("1", "2", "3", "4"))
data$cfq_r_a_28_v2.factor <- factor(data$cfq_r_a_28_v2, levels = c("1", "2", "3", "4"))
data$cfq_r_a_29_v2.factor <- factor(data$cfq_r_a_29_v2, levels = c("1", "2", "3", "4"))
data$cfq_r_a_30_v2.factor <- factor(data$cfq_r_a_30_v2, levels = c("1", "2", "3", "4"))
data$cfq_r_a_31_v2.factor <- factor(data$cfq_r_a_31_v2, levels = c("1", "2", "3", "4"))
data$cfq_r_a_32_v2.factor <- factor(data$cfq_r_a_32_v2, levels = c("1", "2", "3", "4"))
data$cfq_r_a_33_v2.factor <- factor(data$cfq_r_a_33_v2, levels = c("1", "2", "3", "4"))
data$cfq_r_a_34_v2.factor <- factor(data$cfq_r_a_34_v2, levels = c("1", "2", "3", "4"))
data$cfq_r_a_35_v2.factor <- factor(data$cfq_r_a_35_v2, levels = c("1", "2", "3", "4"))
data$cfq_r_a_36_v2.factor <- factor(data$cfq_r_a_36_v2, levels = c("1", "2", "3", "4"))
data$cfq_r_a_37_v2.factor <- factor(data$cfq_r_a_37_v2, levels = c("1", "2", "3", "4"))
data$cfq_r_a_38_v2.factor <- factor(data$cfq_r_a_38_v2, levels = c("1", "2", "3", "4"))
data$cfq_r_a_39_v2.factor <- factor(data$cfq_r_a_39_v2, levels = c("1", "2", "3", "4"))
data$cfq_r_a_40_v2.factor <- factor(data$cfq_r_a_40_v2, levels = c("1", "2", "3", "4"))
data$cfq_r_a_41_v2.factor <- factor(data$cfq_r_a_41_v2, levels = c("1", "2", "3", "4"))
data$cfq_r_a_42_v2.factor <- factor(data$cfq_r_a_42_v2, levels = c("1", "2", "3", "4"))
data$cfq_r_a_43_v2.factor <- factor(data$cfq_r_a_43_v2, levels = c("1", "2", "3", "4", "5"))
data$cfq_r_a_44_v2.factor <- factor(data$cfq_r_a_44_v2, levels = c("1", "2", "3", "4"))
data$cfq_r_a_45_v2.factor <- factor(data$cfq_r_a_45_v2, levels = c("1", "2", "3", "4"))
data$cfq_r_a_46_v2.factor <- factor(data$cfq_r_a_46_v2, levels = c("1", "2", "3", "4"))
data$cfq_r_a_47_v2.factor <- factor(data$cfq_r_a_47_v2, levels = c("1", "2", "3", "4"))
data$cfq_r_a_48_v2.factor <- factor(data$cfq_r_a_48_v2, levels = c("1", "2", "3", "4"))
data$cfq_r_a_49_v2.factor <- factor(data$cfq_r_a_49_v2, levels = c("1", "2", "3", "4"))
data$cfq_r_a_50_v2.factor <- factor(data$cfq_r_a_50_v2, levels = c("1", "2", "3", "4"))
data$cfqr_adolescents_and_adults_14_years_visit_2_complete.factor <- factor(data$cfqr_adolescents_and_adults_14_years_visit_2_complete, levels = c("0", "1", "2"))
data$cfqr_p_es_b_v2.factor <- factor(data$cfqr_p_es_b_v2, levels = c("1", "2", "3", "4", "5", "6", "7", "8"))
data$cfqr_p_es_c_v2___1.factor <- factor(data$cfqr_p_es_c_v2___1, levels = c("0", "1"))
data$cfqr_p_es_c_v2___2.factor <- factor(data$cfqr_p_es_c_v2___2, levels = c("0", "1"))
data$cfqr_p_es_c_v2___3.factor <- factor(data$cfqr_p_es_c_v2___3, levels = c("0", "1"))
data$cfqr_p_es_c_v2___4.factor <- factor(data$cfqr_p_es_c_v2___4, levels = c("0", "1"))
data$cfqr_p_es_c_v2___5.factor <- factor(data$cfqr_p_es_c_v2___5, levels = c("0", "1"))
data$cfqr_p_es_c_v2___6.factor <- factor(data$cfqr_p_es_c_v2___6, levels = c("0", "1"))
data$cfqr_p_es_c_v2___7.factor <- factor(data$cfqr_p_es_c_v2___7, levels = c("0", "1"))
data$cfqr_p_es_d_v2.factor <- factor(data$cfqr_p_es_d_v2, levels = c("1", "0"))
data$cfqr_p_es_f_v2.factor <- factor(data$cfqr_p_es_f_v2, levels = c("1", "2", "3", "4", "5", "6", "7"))
data$cfqr_p_es_g_v2.factor <- factor(data$cfqr_p_es_g_v2, levels = c("1", "2", "3", "4", "5", "6"))
data$cfqr_p_es_h_v2.factor <- factor(data$cfqr_p_es_h_v2, levels = c("1", "2", "3", "4", "5"))
data$cfqr_p_es_1_v2.factor <- factor(data$cfqr_p_es_1_v2, levels = c("1", "2", "3", "4"))
data$cfqr_p_es_2_v2.factor <- factor(data$cfqr_p_es_2_v2, levels = c("1", "2", "3", "4"))
data$cfqr_p_es_3_v2.factor <- factor(data$cfqr_p_es_3_v2, levels = c("1", "2", "3", "4"))
data$cfqr_p_es_4_v2.factor <- factor(data$cfqr_p_es_4_v2, levels = c("1", "2", "3", "4"))
data$cfqr_p_es_5_v2.factor <- factor(data$cfqr_p_es_5_v2, levels = c("1", "2", "3", "4"))
data$cfqr_p_es_6_v2.factor <- factor(data$cfqr_p_es_6_v2, levels = c("4", "3", "2", "1"))
data$cfqr_p_es_7_v2.factor <- factor(data$cfqr_p_es_7_v2, levels = c("1", "2", "3", "4"))
data$cfqr_p_es_8_v2.factor <- factor(data$cfqr_p_es_8_v2, levels = c("1", "2", "3", "4"))
data$cfqr_p_es_9_v2.factor <- factor(data$cfqr_p_es_9_v2, levels = c("1", "2", "3", "4"))
data$cfqr_p_es_10_v2.factor <- factor(data$cfqr_p_es_10_v2, levels = c("4", "3", "2", "1"))
data$cfqr_p_es_11_v2.factor <- factor(data$cfqr_p_es_11_v2, levels = c("1", "2", "3", "4"))
data$cfqr_p_es_12_v2.factor <- factor(data$cfqr_p_es_12_v2, levels = c("4", "3", "2", "1"))
data$cfqr_p_es_13_v2.factor <- factor(data$cfqr_p_es_13_v2, levels = c("1", "2", "3", "4"))
data$cfqr_p_es_14_v2.factor <- factor(data$cfqr_p_es_14_v2, levels = c("1", "2", "3", "4"))
data$cfqr_p_es_15_v2.factor <- factor(data$cfqr_p_es_15_v2, levels = c("1", "2", "3", "4"))
data$cfqr_p_es_16_v2.factor <- factor(data$cfqr_p_es_16_v2, levels = c("1", "2", "3", "4"))
data$cfqr_p_es_17_v2.factor <- factor(data$cfqr_p_es_17_v2, levels = c("1", "2", "3", "4"))
data$cfqr_p_es_18_v2.factor <- factor(data$cfqr_p_es_18_v2, levels = c("1", "2", "3", "4"))
data$cfqr_p_es_19_v2.factor <- factor(data$cfqr_p_es_19_v2, levels = c("1", "2", "3", "4"))
data$cfqr_p_es_20_v2.factor <- factor(data$cfqr_p_es_20_v2, levels = c("1", "2", "3", "4"))
data$cfqr_p_es_21_v2.factor <- factor(data$cfqr_p_es_21_v2, levels = c("1", "2", "3", "4"))
data$cfqr_p_es_22_v2.factor <- factor(data$cfqr_p_es_22_v2, levels = c("1", "2", "3", "4"))
data$cfqr_p_es_23_v2.factor <- factor(data$cfqr_p_es_23_v2, levels = c("1", "2", "3", "4"))
data$cfqr_p_es_24_v2.factor <- factor(data$cfqr_p_es_24_v2, levels = c("1", "2", "3", "4"))
data$cfqr_p_es_25_v2.factor <- factor(data$cfqr_p_es_25_v2, levels = c("1", "2", "3", "4"))
data$cfqr_p_es_26_v2.factor <- factor(data$cfqr_p_es_26_v2, levels = c("1", "2", "3", "4"))
data$cfqr_p_es_27_v2.factor <- factor(data$cfqr_p_es_27_v2, levels = c("1", "2", "3", "4"))
data$cfqr_p_es_28_v2.factor <- factor(data$cfqr_p_es_28_v2, levels = c("1", "2", "3", "4"))
data$cfqr_p_es_29_v2.factor <- factor(data$cfqr_p_es_29_v2, levels = c("1", "2", "3", "4"))
data$cfqr_p_es_30_v2.factor <- factor(data$cfqr_p_es_30_v2, levels = c("1", "2", "3", "4"))
data$cfqr_p_es_31_v2.factor <- factor(data$cfqr_p_es_31_v2, levels = c("1", "2", "3", "4"))
data$cfqr_p_es_32_v2.factor <- factor(data$cfqr_p_es_32_v2, levels = c("1", "2", "3", "4"))
data$cfqr_p_es_33_v2.factor <- factor(data$cfqr_p_es_33_v2, levels = c("1", "2", "3", "4"))
data$cfqr_p_es_34_v2.factor <- factor(data$cfqr_p_es_34_v2, levels = c("1", "2", "3", "4"))
data$cfqr_p_es_35_v2.factor <- factor(data$cfqr_p_es_35_v2, levels = c("1", "2", "3", "4"))
data$cfqr_p_es_36_v2.factor <- factor(data$cfqr_p_es_36_v2, levels = c("1", "2", "3", "4"))
data$cfqr_p_es_37_v2.factor <- factor(data$cfqr_p_es_37_v2, levels = c("1", "2", "3", "4", "5"))
data$cfqr_p_es_38_v2.factor <- factor(data$cfqr_p_es_38_v2, levels = c("1", "2", "3", "4"))
data$cfqr_p_es_39_v2.factor <- factor(data$cfqr_p_es_39_v2, levels = c("1", "2", "3", "4"))
data$cfqr_p_es_40_v2.factor <- factor(data$cfqr_p_es_40_v2, levels = c("1", "2", "3", "4"))
data$cfqr_p_es_41_v2.factor <- factor(data$cfqr_p_es_41_v2, levels = c("1", "2", "3", "4"))
data$cfqr_p_es_42_v2.factor <- factor(data$cfqr_p_es_42_v2, levels = c("1", "2", "3", "4"))
data$cfqr_p_es_43_v2.factor <- factor(data$cfqr_p_es_43_v2, levels = c("1", "2", "3", "4"))
data$cfqr_p_es_44_v2.factor <- factor(data$cfqr_p_es_44_v2, levels = c("1", "2", "3", "4"))
data$spanish_cfqr_caregivers_age_613_vist_2_complete.factor <- factor(data$spanish_cfqr_caregivers_age_613_vist_2_complete, levels = c("0", "1", "2"))
data$cfq_r_o_b_es_v2.factor <- factor(data$cfq_r_o_b_es_v2, levels = c("1", "2"))
data$cfq_r_o_c_es_v2.factor <- factor(data$cfq_r_o_c_es_v2, levels = c("1", "0"))
data$cfq_r_o_d_es_v2___1.factor <- factor(data$cfq_r_o_d_es_v2___1, levels = c("0", "1"))
data$cfq_r_o_d_es_v2___2.factor <- factor(data$cfq_r_o_d_es_v2___2, levels = c("0", "1"))
data$cfq_r_o_d_es_v2___3.factor <- factor(data$cfq_r_o_d_es_v2___3, levels = c("0", "1"))
data$cfq_r_o_d_es_v2___4.factor <- factor(data$cfq_r_o_d_es_v2___4, levels = c("0", "1"))
data$cfq_r_o_d_es_v2___5.factor <- factor(data$cfq_r_o_d_es_v2___5, levels = c("0", "1"))
data$cfq_r_o_d_es_v2___6.factor <- factor(data$cfq_r_o_d_es_v2___6, levels = c("0", "1"))
data$cfq_r_o_d_es_v2___7.factor <- factor(data$cfq_r_o_d_es_v2___7, levels = c("0", "1"))
data$cfq_r_o_e_es_v2.factor <- factor(data$cfq_r_o_e_es_v2, levels = c("1", "2", "3", "4", "5", "6"))
data$cfq_r_o1_es_v2.factor <- factor(data$cfq_r_o1_es_v2, levels = c("4", "3", "2", "1"))
data$cfq_r_o2_es_v2.factor <- factor(data$cfq_r_o2_es_v2, levels = c("4", "3", "2", "1"))
data$cfq_r_o3_es_v2.factor <- factor(data$cfq_r_o3_es_v2, levels = c("4", "3", "2", "1"))
data$cfq_r_o4_es_v2.factor <- factor(data$cfq_r_o4_es_v2, levels = c("4", "3", "2", "1"))
data$cfq_r_o5_es_v2.factor <- factor(data$cfq_r_o5_es_v2, levels = c("4", "3", "2", "1"))
data$cfq_r_o6_es_v2.factor <- factor(data$cfq_r_o6_es_v2, levels = c("4", "3", "2", "1"))
data$cfqr_o7_es_v2.factor <- factor(data$cfqr_o7_es_v2, levels = c("1", "2", "3", "4"))
data$cfqr_o8_es_v2.factor <- factor(data$cfqr_o8_es_v2, levels = c("1", "2", "3", "4"))
data$cfqr_o9_es_v2.factor <- factor(data$cfqr_o9_es_v2, levels = c("1", "2", "3", "4"))
data$cfqr_o10_es_v2.factor <- factor(data$cfqr_o10_es_v2, levels = c("1", "2", "3", "4"))
data$cfqr_o11_es_v2.factor <- factor(data$cfqr_o11_es_v2, levels = c("1", "2", "3", "4"))
data$cfqr_o12_es_v2.factor <- factor(data$cfqr_o12_es_v2, levels = c("1", "2", "3", "4"))
data$cfqr_o13_es_v2.factor <- factor(data$cfqr_o13_es_v2, levels = c("1", "2", "3", "4"))
data$cfq_r_o14_es_v2.factor <- factor(data$cfq_r_o14_es_v2, levels = c("4", "3", "2", "1"))
data$cfq_r_o15_es_v2.factor <- factor(data$cfq_r_o15_es_v2, levels = c("1", "2", "3", "4"))
data$cfq_r_o16_es_v2.factor <- factor(data$cfq_r_o16_es_v2, levels = c("1", "2", "3", "4"))
data$cfq_r_o17_es_v2.factor <- factor(data$cfq_r_o17_es_v2, levels = c("1", "2", "3", "4"))
data$cfq_r_o18_es_v2.factor <- factor(data$cfq_r_o18_es_v2, levels = c("4", "3", "2", "1"))
data$cfq_r_o19_es_v2.factor <- factor(data$cfq_r_o19_es_v2, levels = c("4", "3", "2", "1"))
data$cfq_r_o20_es_v2.factor <- factor(data$cfq_r_o20_es_v2, levels = c("4", "3", "2", "1"))
data$cfq_r_o21_es_v2.factor <- factor(data$cfq_r_o21_es_v2, levels = c("1", "2", "3", "4"))
data$cfq_r_o22_es_v2.factor <- factor(data$cfq_r_o22_es_v2, levels = c("4", "3", "2", "1"))
data$cfq_r_o23_es_v2.factor <- factor(data$cfq_r_o23_es_v2, levels = c("1", "2", "3", "4"))
data$cfq_r_o24_es_v2.factor <- factor(data$cfq_r_o24_es_v2, levels = c("4", "3", "2", "1"))
data$cfq_r_o25_es_v2.factor <- factor(data$cfq_r_o25_es_v2, levels = c("1", "2", "3", "4"))
data$cfq_r_o26_es_v2.factor <- factor(data$cfq_r_o26_es_v2, levels = c("4", "3", "2", "1"))
data$cfq_r_o27_es_v2.factor <- factor(data$cfq_r_o27_es_v2, levels = c("1", "2", "3", "4"))
data$cfq_r_o28_es_v2.factor <- factor(data$cfq_r_o28_es_v2, levels = c("1", "2", "3", "4"))
data$cfq_r_o29_es_v2.factor <- factor(data$cfq_r_o29_es_v2, levels = c("1", "2", "3", "4"))
data$cfq_r_o30_es_v2.factor <- factor(data$cfq_r_o30_es_v2, levels = c("1", "2", "3", "4"))
data$cfqr_o31_es_v2.factor <- factor(data$cfqr_o31_es_v2, levels = c("1", "2", "3", "4"))
data$cfqr_o32_es_v2.factor <- factor(data$cfqr_o32_es_v2, levels = c("1", "2", "3", "4"))
data$cfqr_o33_es_v2.factor <- factor(data$cfqr_o33_es_v2, levels = c("1", "2", "3", "4"))
data$cfqr_o34_es_v2.factor <- factor(data$cfqr_o34_es_v2, levels = c("1", "2", "3", "4"))
data$cfqr_o35_es_v2.factor <- factor(data$cfqr_o35_es_v2, levels = c("1", "2", "3", "4"))
data$spanish_cfqr_children_ages_1213_visit_2_complete.factor <- factor(data$spanish_cfqr_children_ages_1213_visit_2_complete, levels = c("0", "1", "2"))
data$cfqr_a_es_b_v2.factor <- factor(data$cfqr_a_es_b_v2, levels = c("1", "2"))
data$cfqr_a_es_c_v2.factor <- factor(data$cfqr_a_es_c_v2, levels = c("1", "0"))
data$cfqr_a_es_d_v2.factor <- factor(data$cfqr_a_es_d_v2, levels = c("1", "2", "3", "4", "5", "6", "7"))
data$cfqr_a_es_e_v2___1.factor <- factor(data$cfqr_a_es_e_v2___1, levels = c("0", "1"))
data$cfqr_a_es_e_v2___2.factor <- factor(data$cfqr_a_es_e_v2___2, levels = c("0", "1"))
data$cfqr_a_es_e_v2___3.factor <- factor(data$cfqr_a_es_e_v2___3, levels = c("0", "1"))
data$cfqr_a_es_e_v2___4.factor <- factor(data$cfqr_a_es_e_v2___4, levels = c("0", "1"))
data$cfqr_a_es_e_v2___5.factor <- factor(data$cfqr_a_es_e_v2___5, levels = c("0", "1"))
data$cfqr_a_es_e_v2___6.factor <- factor(data$cfqr_a_es_e_v2___6, levels = c("0", "1"))
data$cfqr_a_es_e_v2___7.factor <- factor(data$cfqr_a_es_e_v2___7, levels = c("0", "1"))
data$cfqr_a_es_f_v2.factor <- factor(data$cfqr_a_es_f_v2, levels = c("1", "2", "3", "4", "5", "6"))
data$cfqr_a_es_g_v2.factor <- factor(data$cfqr_a_es_g_v2, levels = c("1", "2", "3", "4", "5", "6", "7"))
data$cfqr_a_es_1_v2.factor <- factor(data$cfqr_a_es_1_v2, levels = c("1", "2", "3", "4"))
data$cfqr_a_es_2_v2.factor <- factor(data$cfqr_a_es_2_v2, levels = c("1", "2", "3", "4"))
data$cfqr_a_es_3_v2.factor <- factor(data$cfqr_a_es_3_v2, levels = c("1", "2", "3", "4"))
data$cfqr_a_es_4_v2.factor <- factor(data$cfqr_a_es_4_v2, levels = c("1", "2", "3", "4"))
data$cfqr_a_es_5_v2.factor <- factor(data$cfqr_a_es_5_v2, levels = c("1", "2", "3", "4"))
data$cfqr_a_es_6_v2.factor <- factor(data$cfqr_a_es_6_v2, levels = c("4", "3", "2", "1"))
data$cfqr_a_es_7_v2.factor <- factor(data$cfqr_a_es_7_v2, levels = c("1", "2", "3", "4"))
data$cfqr_a_es_8_v2.factor <- factor(data$cfqr_a_es_8_v2, levels = c("1", "2", "3", "4"))
data$cfqr_a_es_9_v2.factor <- factor(data$cfqr_a_es_9_v2, levels = c("1", "2", "3", "4"))
data$cfqr_a_es_10_v2.factor <- factor(data$cfqr_a_es_10_v2, levels = c("4", "3", "2", "1"))
data$cfqr_a_es_11_v2.factor <- factor(data$cfqr_a_es_11_v2, levels = c("1", "2", "3", "4"))
data$cfqr_a_es_12_v2.factor <- factor(data$cfqr_a_es_12_v2, levels = c("1", "2", "3", "4"))
data$cfqr_a_es_13_v2.factor <- factor(data$cfqr_a_es_13_v2, levels = c("1", "2", "3", "4"))
data$cfqr_a_es_14_v2.factor <- factor(data$cfqr_a_es_14_v2, levels = c("1", "2", "3", "4"))
data$cfqr_a_es_15_v2.factor <- factor(data$cfqr_a_es_15_v2, levels = c("1", "2", "3", "4"))
data$cfqr_a_es_16_v2.factor <- factor(data$cfqr_a_es_16_v2, levels = c("1", "2", "3", "4"))
data$cfqr_a_es_17_v2.factor <- factor(data$cfqr_a_es_17_v2, levels = c("1", "2", "3", "4"))
data$cfqr_a_es_18_v2.factor <- factor(data$cfqr_a_es_18_v2, levels = c("1", "2", "3", "4"))
data$cfqr_a_es_19_v2.factor <- factor(data$cfqr_a_es_19_v2, levels = c("1", "2", "3", "4"))
data$cfqr_a_es_20_v2.factor <- factor(data$cfqr_a_es_20_v2, levels = c("1", "2", "3", "4"))
data$cfqr_a_es_21_v2.factor <- factor(data$cfqr_a_es_21_v2, levels = c("1", "2", "3", "4"))
data$cfqr_a_es_22_v2.factor <- factor(data$cfqr_a_es_22_v2, levels = c("1", "2", "3", "4"))
data$cfqr_a_es_23_v2.factor <- factor(data$cfqr_a_es_23_v2, levels = c("1", "2", "3", "4"))
data$cfqr_a_es_24_v2.factor <- factor(data$cfqr_a_es_24_v2, levels = c("1", "2", "3", "4"))
data$cfqr_a_es_25_v2.factor <- factor(data$cfqr_a_es_25_v2, levels = c("1", "2", "3", "4"))
data$cfqr_a_es_26_v2.factor <- factor(data$cfqr_a_es_26_v2, levels = c("1", "2", "3", "4"))
data$cfqr_a_es_27_v2.factor <- factor(data$cfqr_a_es_27_v2, levels = c("1", "2", "3", "4"))
data$cfqr_a_es_28_v2.factor <- factor(data$cfqr_a_es_28_v2, levels = c("1", "2", "3", "4"))
data$cfqr_a_es_29_v2.factor <- factor(data$cfqr_a_es_29_v2, levels = c("1", "2", "3", "4"))
data$cfqr_a_es_30_v2.factor <- factor(data$cfqr_a_es_30_v2, levels = c("1", "2", "3", "4"))
data$cfqr_a_es_31_v2.factor <- factor(data$cfqr_a_es_31_v2, levels = c("1", "2", "3", "4"))
data$cfqr_a_es_32_v2.factor <- factor(data$cfqr_a_es_32_v2, levels = c("1", "2", "3", "4"))
data$cfqr_a_es_33_v2.factor <- factor(data$cfqr_a_es_33_v2, levels = c("1", "2", "3", "4"))
data$cfqr_a_es_34_v2.factor <- factor(data$cfqr_a_es_34_v2, levels = c("1", "2", "3", "4"))
data$cfqr_a_es_35_v2.factor <- factor(data$cfqr_a_es_35_v2, levels = c("1", "2", "3", "4"))
data$cfqr_a_es_36_v2.factor <- factor(data$cfqr_a_es_36_v2, levels = c("1", "2", "3", "4"))
data$cfqr_a_es_37_v2.factor <- factor(data$cfqr_a_es_37_v2, levels = c("1", "2", "3", "4"))
data$cfqr_a_es_38_v2.factor <- factor(data$cfqr_a_es_38_v2, levels = c("1", "2", "3", "4"))
data$cfqr_a_es_39_v2.factor <- factor(data$cfqr_a_es_39_v2, levels = c("1", "2", "3", "4"))
data$cfqr_a_es_40_v2.factor <- factor(data$cfqr_a_es_40_v2, levels = c("1", "2", "3", "4"))
data$cfqr_a_es_41_v2.factor <- factor(data$cfqr_a_es_41_v2, levels = c("1", "2", "3", "4"))
data$cfqr_a_es_42_v2.factor <- factor(data$cfqr_a_es_42_v2, levels = c("1", "2", "3", "4"))
data$cfqr_a_es_43_v2.factor <- factor(data$cfqr_a_es_43_v2, levels = c("1", "2", "3", "4", "5"))
data$cfqr_a_es_44_v2.factor <- factor(data$cfqr_a_es_44_v2, levels = c("1", "2", "3", "4"))
data$cfqr_a_es_45_v2.factor <- factor(data$cfqr_a_es_45_v2, levels = c("1", "2", "3", "4"))
data$cfqr_a_es_46_v2.factor <- factor(data$cfqr_a_es_46_v2, levels = c("1", "2", "3", "4"))
data$cfqr_a_es_47_v2.factor <- factor(data$cfqr_a_es_47_v2, levels = c("1", "2", "3", "4"))
data$cfqr_a_es_48_v2.factor <- factor(data$cfqr_a_es_48_v2, levels = c("1", "2", "3", "4"))
data$cfqr_a_es_49_v2.factor <- factor(data$cfqr_a_es_49_v2, levels = c("1", "2", "3", "4"))
data$cfqr_a_es_50_v2.factor <- factor(data$cfqr_a_es_50_v2, levels = c("1", "2", "3", "4"))
data$spanish_cfqr_adolescents_and_adults_visit_2_complete.factor <- factor(data$spanish_cfqr_adolescents_and_adults_visit_2_complete, levels = c("0", "1", "2"))

levels(data$redcap_event_name.factor) <- c("Visits (Arm 1: CF)", "Interim (Arm 1: CF)", "Visits (Arm 2: Control)", "Interim (Arm 2: Control)")
levels(data$redcap_repeat_instrument.factor) <- c("CFQ-R Caregivers 6-13", "CFQ-R Children Ages 6-11", "CFQ-R Children Ages 12-13", "CFQ-R Adolescents And Adults 14 Years", "Spanish CFQ-R Caregivers Age 6-13", "Spanish CFQ-R Children Ages 12-13", "Spanish CFQ-R Adolescents and Adults", "Interim Phone Call", "Hc Pediatric Cough Survey")
levels(data$consented.factor) <- c("Yes", "No")
levels(data$icf_copy.factor) <- c("Yes", "No")
levels(data$assent.factor) <- c("Yes", "No", "Not applicable")
levels(data$consent_epic.factor) <- c("Yes", "No")
levels(data$carrier.factor) <- c("AT&T", "Verizon")
levels(data$consent_complete.factor) <- c("Incomplete", "Unverified", "Complete")
levels(data$confirmed_dx.factor) <- c("Yes", "No")
levels(data$eligible_age.factor) <- c("Yes", "No")
levels(data$stable.factor) <- c("Yes", "No")
levels(data$support.factor) <- c("Yes", "No")
levels(data$room_env.factor) <- c("Yes", "No")
levels(data$pulm_antib.factor) <- c("Yes", "No")
levels(data$sleep_env.factor) <- c("Yes", "No")
levels(data$cf_eligibility_complete.factor) <- c("Incomplete", "Unverified", "Complete")
levels(data$eligible_age_hc.factor) <- c("Yes", "No")
levels(data$support_hc.factor) <- c("Yes", "No")
levels(data$room_env_hc.factor) <- c("Yes", "No")
levels(data$underlying_disease_hc.factor) <- c("Yes", "No")
levels(data$sleep_env_hc.factor) <- c("Yes", "No")
levels(data$control_eligibility_complete.factor) <- c("Incomplete", "Unverified", "Complete")
levels(data$confirm_enr.factor) <- c("Yes", "No")
levels(data$enrollment_complete.factor) <- c("Incomplete", "Unverified", "Complete")
levels(data$language_caregiver.factor) <- c("English", "Spanish")
levels(data$language_patient.factor) <- c("English", "Spanish")
levels(data$nih_sex.factor) <- c("Female", "Male", "Unknown or Not Reported")
levels(data$nih_race.factor) <- c("American Indian or Alaska Native", "Asian", "Black or African-American", "Native Hawaiian or Other Pacific Islander", "White", "More than one race", "Unknown or not reported")
levels(data$nih_ethnicity.factor) <- c("Hispanic or Latino", "Not Hispanic or Latino", "Unknown or not reported")
levels(data$cohort.factor) <- c("CF", "Healthy Control")
levels(data$mutation1.factor) <- c("F508del", "1154InsTC", "1717-1G->A", "1898+1G->A", "2143delT", "2184insA", "2789+5G->A", "3120+1G->A", "3659delC", "3849+10CT", "3905insT", "394delTT", "621+1G->T", "A455E", "E60X", "G542X", "G551D", "I507", "M1101K", "N1303K", "Q493X", "R1162X", "R117C", "R117H", "R347P", "R553X", "R560T", "W1282X", "Other", "Unknown")
levels(data$tract_type1.factor) <- c("5T", "7T", "7T/9T", "9T", "Not 5T", "Not reported/Unknown")
levels(data$mutation2.factor) <- c("F508del", "1154InsTC", "1717-1G->A", "1898+1G->A", "2143delT", "2184insA", "2789+5G->A", "3120+1G->A", "3659delC", "3849+10CT", "3905insT", "394delTT", "621+1G->T", "A455E", "E60X", "G542X", "G551D", "I507", "M1101K", "N1303K", "Q493X", "R1162X", "R117C", "R117H", "R347P", "R553X", "R560T", "W1282X", "Other", "Unknown")
levels(data$tract_type2.factor) <- c("5T", "7T", "7T/9T", "9T", "Not 5T", "Not reported/Unknown")
levels(data$h_obtained.factor) <- c("Yes", "No")
levels(data$w_obtained.factor) <- c("Yes", "No")
levels(data$demographics_complete.factor) <- c("Incomplete", "Unverified", "Complete")
levels(data$current_antib.factor) <- c("Yes", "No")
levels(data$inh_antib.factor) <- c("Yes", "No")
levels(data$antib2_type___1.factor) <- c("Unchecked", "Checked")
levels(data$antib2_type___2.factor) <- c("Unchecked", "Checked")
levels(data$antib2_type___3.factor) <- c("Unchecked", "Checked")
levels(data$antib2_type___4.factor) <- c("Unchecked", "Checked")
levels(data$cftr_mod.factor) <- c("Yes", "No")
levels(data$cftr_mod_type.factor) <- c("Trikafta", "Symdeko", "Orkambi", "Kalydeco")
levels(data$mucolytic.factor) <- c("Yes", "No")
levels(data$mocol_type___1.factor) <- c("Unchecked", "Checked")
levels(data$mocol_type___2.factor) <- c("Unchecked", "Checked")
levels(data$mocol_type___3.factor) <- c("Unchecked", "Checked")
levels(data$inh_ster.factor) <- c("Yes", "No")
levels(data$freq_ster.factor) <- c("Daily", "As needed", "Other")
levels(data$air_clear.factor) <- c("Yes", "No")
levels(data$freq_clear.factor) <- c("Daily", "As needed", "Other")
levels(data$singulair.factor) <- c("Yes", "No")
levels(data$antih.factor) <- c("Yes", "No")
levels(data$comorbid_dx___1.factor) <- c("Unchecked", "Checked")
levels(data$comorbid_dx___2.factor) <- c("Unchecked", "Checked")
levels(data$comorbid_dx___3.factor) <- c("Unchecked", "Checked")
levels(data$comorbid_dx___4.factor) <- c("Unchecked", "Checked")
levels(data$comorbid_dx___5.factor) <- c("Unchecked", "Checked")
levels(data$comorbid_dx___6.factor) <- c("Unchecked", "Checked")
levels(data$comorbid_dx___7.factor) <- c("Unchecked", "Checked")
levels(data$comorbid_dx___8.factor) <- c("Unchecked", "Checked")
levels(data$polyp_surg.factor) <- c("Yes", "No")
levels(data$g_tube.factor) <- c("Yes", "No")
levels(data$g_tube2.factor) <- c("Yes", "No")
levels(data$pft.factor) <- c("Yes", "No")
levels(data$post_pft.factor) <- c("Yes", "No")
levels(data$abn_confirm.factor) <- c("Yes", "No")
levels(data$micro_type___1.factor) <- c("Unchecked", "Checked")
levels(data$micro_type___2.factor) <- c("Unchecked", "Checked")
levels(data$micro_type___3.factor) <- c("Unchecked", "Checked")
levels(data$micro_type___4.factor) <- c("Unchecked", "Checked")
levels(data$pulm_ex.factor) <- c("Yes", "No")
levels(data$ex_hosp.factor) <- c("Yes", "No")
levels(data$question_complete_cf.factor) <- c("Yes", "No")
levels(data$cf_visit_1_complete.factor) <- c("Incomplete", "Unverified", "Complete")
levels(data$cfq_r_p_b.factor) <- c("Mother", "Father", "Grandmother", "Grandfather", "Other relative", "Foster mother", "Foster father", "Other")
levels(data$cfq_r_p_c___1.factor) <- c("Unchecked", "Checked")
levels(data$cfq_r_p_c___2.factor) <- c("Unchecked", "Checked")
levels(data$cfq_r_p_c___3.factor) <- c("Unchecked", "Checked")
levels(data$cfq_r_p_c___4.factor) <- c("Unchecked", "Checked")
levels(data$cfq_r_p_c___5.factor) <- c("Unchecked", "Checked")
levels(data$cfq_r_p_c___6.factor) <- c("Unchecked", "Checked")
levels(data$cfq_r_p_c___7.factor) <- c("Unchecked", "Checked")
levels(data$cfq_r_p_d.factor) <- c("Yes", "No")
levels(data$cfq_r_p_f.factor) <- c("Single/never married", "Married", "Widowed", "Divorced", "Separated", "Remarried", "With a partner")
levels(data$cfq_r_p_g.factor) <- c("Some high school or less", "High school diploma/GED", "Vocational school", "Some college", "College degree", "Professional or graduate degree")
levels(data$cfq_r_p_h.factor) <- c("Seeking work", "Working full- or part-time (either outside the home or at a home-based business)", "Full-time homemaker", "Not working due to my health", "Not working for other reasons")
levels(data$cfq_r_p_1.factor) <- c("A lot of difficulty", "Some difficulty", "A little difficulty", "No difficulty")
levels(data$cfq_r_p_2.factor) <- c("A lot of difficulty", "Some difficulty", "A little difficulty", "No difficulty")
levels(data$cfq_r_p_3.factor) <- c("A lot of difficulty", "Some difficulty", "A little difficulty", "No difficulty")
levels(data$cfq_r_p_4.factor) <- c("A lot of difficulty", "Some difficulty", "A little difficulty", "No difficulty")
levels(data$cfq_r_p_5.factor) <- c("A lot of difficulty", "Some difficulty", "A little difficulty", "No difficulty")
levels(data$cfq_r_p_6.factor) <- c("Always", "Often", "Sometimes", "Never")
levels(data$cfq_r_p_7.factor) <- c("Always", "Often", "Sometimes", "Never")
levels(data$cfq_r_p_8.factor) <- c("Always", "Often", "Sometimes", "Never")
levels(data$cfq_r_p_9.factor) <- c("Always", "Often", "Sometimes", "Never")
levels(data$cfq_r_p_10.factor) <- c("Always", "Often", "Sometimes", "Never")
levels(data$cfq_r_p_11.factor) <- c("Always", "Often", "Sometimes", "Never")
levels(data$cfq_r_p_12.factor) <- c("Always", "Often", "Sometimes", "Never")
levels(data$cfq_r_p_13.factor) <- c("Always", "Often", "Sometimes", "Never")
levels(data$cfq_r_p_14.factor) <- c("1. Has not participated in physical activities", "2. Has participated less than usual in sports", "3. Has participated as much as usual but with some difficulty", "4. Has been able to participate in physical activities without any difficulty")
levels(data$cfq_r_p_15.factor) <- c("1. He or she can walk a long time without getting tired", "2. He or she can walk a long time but gets tired", "3. He or she cannot walk a long time, because he or she gets tired quickly", "4. He or she avoids walking whenever possible, because its too tiring for him or her")
levels(data$cfq_r_p_16.factor) <- c("Very true", "Somewhat true", "Somewhat false", "Very false")
levels(data$cfq_r_p_17.factor) <- c("Very true", "Somewhat true", "Somewhat false", "Very false")
levels(data$cfq_r_p_18.factor) <- c("Very true", "Somewhat true", "Somewhat false", "Very false")
levels(data$cfq_r_p_19.factor) <- c("Very true", "Somewhat true", "Somewhat false", "Very false")
levels(data$cfq_r_p_20.factor) <- c("Very true", "Somewhat true", "Somewhat false", "Very false")
levels(data$cfq_r_p_21.factor) <- c("Very true", "Somewhat true", "Somewhat false", "Very false")
levels(data$cfq_r_p_22.factor) <- c("Very true", "Somewhat true", "Somewhat false", "Very false")
levels(data$cfq_r_p_23.factor) <- c("Very true", "Somewhat true", "Somewhat false", "Very false")
levels(data$cfq_r_p_24.factor) <- c("Very true", "Somewhat true", "Somewhat false", "Very false")
levels(data$cfq_r_p_25.factor) <- c("Very true", "Somewhat true", "Somewhat false", "Very false")
levels(data$cfq_r_p_26.factor) <- c("Very true", "Somewhat true", "Somewhat false", "Very false")
levels(data$cfq_r_p_27.factor) <- c("Very true", "Somewhat true", "Somewhat false", "Very false")
levels(data$cfq_r_p_28.factor) <- c("Very true", "Somewhat true", "Somewhat false", "Very false")
levels(data$cfq_r_p_29.factor) <- c("Very true", "Somewhat true", "Somewhat false", "Very false")
levels(data$cfq_r_p_30.factor) <- c("Very true", "Somewhat true", "Somewhat false", "Very false")
levels(data$cfq_r_p_31.factor) <- c("1. Not at all", "2. A little", "3. Moderately", "4. Very")
levels(data$cfq_r_p_32.factor) <- c("Excellent", "Good", "Fair", "Poor")
levels(data$cfq_r_p_33.factor) <- c("A great deal", "Somewhat", "A little", "Not at all")
levels(data$cfq_r_p_34.factor) <- c("A great deal", "Somewhat", "A little", "Not at all")
levels(data$cfq_r_p_35.factor) <- c("A great deal", "Somewhat", "A little", "Not at all")
levels(data$cfq_r_p_36.factor) <- c("A great deal", "Somewhat", "A little", "Not at all (Skip question 37, go to question 38)")
levels(data$cfq_r_p_37.factor) <- c("Clear", "Clear to yellow", "Yellowish-green", "Green with traces of blood", "Dont know")
levels(data$cfq_r_p_38.factor) <- c("Always", "Often", "Sometimes", "Never")
levels(data$cfq_r_p_39.factor) <- c("Always", "Often", "Sometimes", "Never")
levels(data$cfq_r_p_40.factor) <- c("Always", "Often", "Sometimes", "Never")
levels(data$cfq_r_p_41.factor) <- c("Always", "Often", "Sometimes", "Never")
levels(data$cfq_r_p_42.factor) <- c("Always", "Often", "Sometimes", "Never")
levels(data$cfq_r_p_43.factor) <- c("Always", "Often", "Sometimes", "Never")
levels(data$cfq_r_p_44.factor) <- c("Always", "Often", "Sometimes", "Never")
levels(data$cfqr_caregivers_613_complete.factor) <- c("Incomplete", "Unverified", "Complete")
levels(data$cfq_r_y_b.factor) <- c("Male", "Female")
levels(data$cfq_r_y_c.factor) <- c("Yes", "No")
levels(data$cfq_r_y_d___1.factor) <- c("Unchecked", "Checked")
levels(data$cfq_r_y_d___2.factor) <- c("Unchecked", "Checked")
levels(data$cfq_r_y_d___3.factor) <- c("Unchecked", "Checked")
levels(data$cfq_r_y_d___4.factor) <- c("Unchecked", "Checked")
levels(data$cfq_r_y_d___5.factor) <- c("Unchecked", "Checked")
levels(data$cfq_r_y_d___6.factor) <- c("Unchecked", "Checked")
levels(data$cfq_r_y_d___7.factor) <- c("Unchecked", "Checked")
levels(data$cfq_r_y_e.factor) <- c("Kindergarten", "1st grade", "2nd grade", "3rd grade", "4th grade", "5th grade", "6th grade", "7th grade", "Not in school")
levels(data$cfq_r_y_1.factor) <- c("Very True", "Mostly True", "Somewhat True", "Not at all True")
levels(data$cfq_r_y_2.factor) <- c("Very True", "Mostly True", "Somewhat True", "Not at all True")
levels(data$cfq_r_y_3.factor) <- c("Very True", "Mostly True", "Somewhat True", "Not at all True")
levels(data$cfq_r_y_4.factor) <- c("Very True", "Mostly True", "Somewhat True", "Not at all True")
levels(data$cfq_r_y_5.factor) <- c("Very True", "Mostly True", "Somewhat True", "Not at all True")
levels(data$cfq_r_y_6.factor) <- c("Very True", "Mostly True", "Somewhat True", "Not at all True")
levels(data$cfq_r_y_7.factor) <- c("Always", "Often", "Sometimes", "Never")
levels(data$cfq_r_y_8.factor) <- c("Always", "Often", "Sometimes", "Never")
levels(data$cfq_r_y_9.factor) <- c("Always", "Often", "Sometimes", "Never")
levels(data$cfq_r_y_10.factor) <- c("Always", "Often", "Sometimes", "Never")
levels(data$cfq_r_y_11.factor) <- c("Always", "Often", "Sometimes", "Never")
levels(data$cfq_r_y_12.factor) <- c("Always", "Often", "Sometimes", "Never")
levels(data$cfq_r_y_13.factor) <- c("Always", "Often", "Sometimes", "Never")
levels(data$cfq_r_y_14.factor) <- c("Always", "Often", "Sometimes", "Never")
levels(data$cfq_r_y_15.factor) <- c("Always", "Often", "Sometimes", "Never")
levels(data$cfq_r_y_16.factor) <- c("Always", "Often", "Sometimes", "Never")
levels(data$cfq_r_y_17.factor) <- c("Always", "Often", "Sometimes", "Never")
levels(data$cfq_r_y_18.factor) <- c("Very True", "Mostly True", "Somewhat True", "Not at all True")
levels(data$cfq_r_y_19.factor) <- c("Very True", "Mostly True", "Somewhat True", "Not at all True")
levels(data$cfq_r_y_20.factor) <- c("Very True", "Mostly True", "Somewhat True", "Not at all True")
levels(data$cfq_r_y_21.factor) <- c("Very True", "Mostly True", "Somewhat True", "Not at all True")
levels(data$cfq_r_y_22.factor) <- c("Very True", "Mostly True", "Somewhat True", "Not at all True")
levels(data$cfq_r_y_23.factor) <- c("Very True", "Mostly True", "Somewhat True", "Not at all True")
levels(data$cfq_r_y_24.factor) <- c("Very True", "Mostly True", "Somewhat True", "Not at all True")
levels(data$cfq_r_y_25.factor) <- c("Very True", "Mostly True", "Somewhat True", "Not at all True")
levels(data$cfq_r_y_26.factor) <- c("Very True", "Mostly True", "Somewhat True", "Not at all True")
levels(data$cfq_r_y_27.factor) <- c("Very True", "Mostly True", "Somewhat True", "Not at all True")
levels(data$cfq_r_y_28.factor) <- c("Very True", "Mostly True", "Somewhat True", "Not at all True")
levels(data$cfq_r_y_29.factor) <- c("Very True", "Mostly True", "Somewhat True", "Not at all True")
levels(data$cfq_r_y_30.factor) <- c("Very True", "Mostly True", "Somewhat True", "Not at all True")
levels(data$cfq_r_y_31.factor) <- c("Always", "Often", "Sometimes", "Never")
levels(data$cfq_r_y_32.factor) <- c("Always", "Often", "Sometimes", "Never")
levels(data$cfq_r_y_33.factor) <- c("Always", "Often", "Sometimes", "Never")
levels(data$cfq_r_y_34.factor) <- c("Always", "Often", "Sometimes", "Never")
levels(data$cfq_r_y_35.factor) <- c("Always", "Often", "Sometimes", "Never")
levels(data$cfqr_children_ages_611_complete.factor) <- c("Incomplete", "Unverified", "Complete")
levels(data$cfq_r_o_b.factor) <- c("Male", "Female")
levels(data$cfq_r_o_c.factor) <- c("Yes", "No")
levels(data$cfq_r_o_d___1.factor) <- c("Unchecked", "Checked")
levels(data$cfq_r_o_d___2.factor) <- c("Unchecked", "Checked")
levels(data$cfq_r_o_d___3.factor) <- c("Unchecked", "Checked")
levels(data$cfq_r_o_d___4.factor) <- c("Unchecked", "Checked")
levels(data$cfq_r_o_d___5.factor) <- c("Unchecked", "Checked")
levels(data$cfq_r_o_d___6.factor) <- c("Unchecked", "Checked")
levels(data$cfq_r_o_d___7.factor) <- c("Unchecked", "Checked")
levels(data$cfq_r_o_e.factor) <- c("5th grade", "6th grade", "7th grade", "8th grade", "9th grade", "Not in school")
levels(data$cfq_r_o1.factor) <- c("Very True", "Mostly True", "Somewhat True", "Not at all True")
levels(data$cfq_r_o2.factor) <- c("Very True", "Mostly True", "Somewhat True", "Not at all True")
levels(data$cfq_r_o3.factor) <- c("Very True", "Mostly True", "Somewhat True", "Not at all True")
levels(data$cfq_r_o4.factor) <- c("Very True", "Mostly True", "Somewhat True", "Not at all True")
levels(data$cfq_r_o5.factor) <- c("Very True", "Mostly True", "Somewhat True", "Not at all True")
levels(data$cfq_r_o6.factor) <- c("Very True", "Mostly True", "Somewhat True", "Not at all True")
levels(data$cfq_r_o7.factor) <- c("Always", "Often", "Somewhat", "Never")
levels(data$cfq_r_o8.factor) <- c("Always", "Often", "Somewhat", "Never")
levels(data$cfq_r_or9.factor) <- c("Always", "Often", "Somewhat", "Never")
levels(data$cfq_r_o10.factor) <- c("Always", "Often", "Somewhat", "Never")
levels(data$cfq_r_o11.factor) <- c("Always", "Often", "Somewhat", "Never")
levels(data$cfq_r_o12.factor) <- c("Always", "Often", "Somewhat", "Never")
levels(data$cfq_r_o13.factor) <- c("Always", "Often", "Somewhat", "Never")
levels(data$cfq_r_o14.factor) <- c("Always", "Often", "Somewhat", "Never")
levels(data$cfq_r_o15.factor) <- c("Always", "Often", "Somewhat", "Never")
levels(data$cfq_r_o16.factor) <- c("Always", "Often", "Somewhat", "Never")
levels(data$cfq_r_o17.factor) <- c("Always", "Often", "Somewhat", "Never")
levels(data$cfq_r_o18.factor) <- c("Very True", "Mostly True", "Somewhat True", "Not at all True")
levels(data$cfq_r_o19.factor) <- c("Very True", "Mostly True", "Somewhat True", "Not at all True")
levels(data$cfq_r_o20.factor) <- c("Very True", "Mostly True", "Somewhat True", "Not at all True")
levels(data$cfq_r_o21.factor) <- c("Very True", "Mostly True", "Somewhat True", "Not at all True")
levels(data$cfq_r_o22.factor) <- c("Very True", "Mostly True", "Somewhat True", "Not at all True")
levels(data$cfq_r_o23.factor) <- c("Very True", "Mostly True", "Somewhat True", "Not at all True")
levels(data$cfq_r_o24.factor) <- c("Very True", "Mostly True", "Somewhat True", "Not at all True")
levels(data$cfq_r_o25.factor) <- c("Very True", "Mostly True", "Somewhat True", "Not at all True")
levels(data$cfq_r_o26.factor) <- c("Very True", "Mostly True", "Somewhat True", "Not at all True")
levels(data$cfq_r_o27.factor) <- c("Very True", "Mostly True", "Somewhat True", "Not at all True")
levels(data$cfq_r_o28.factor) <- c("Very True", "Mostly True", "Somewhat True", "Not at all True")
levels(data$cfq_r_o29.factor) <- c("Very True", "Mostly True", "Somewhat True", "Not at all True")
levels(data$cfq_r_o30.factor) <- c("Very True", "Mostly True", "Somewhat True", "Not at all True")
levels(data$cfq_r_o31.factor) <- c("Always", "Often", "Sometimes", "Never")
levels(data$cfq_r_o32.factor) <- c("Always", "Often", "Sometimes", "Never")
levels(data$cfq_r_o33.factor) <- c("Always", "Often", "Sometimes", "Never")
levels(data$cfq_r_o34.factor) <- c("Always", "Often", "Sometimes", "Never")
levels(data$cfq_r_o35.factor) <- c("Always", "Often", "Sometimes", "Never")
levels(data$cfqr_children_ages_1213_complete.factor) <- c("Incomplete", "Unverified", "Complete")
levels(data$cfq_r_a_b.factor) <- c("Male", "Female")
levels(data$cfq_r_a_c.factor) <- c("Yes", "No")
levels(data$cfq_r_a_d.factor) <- c("Single/Never married", "Married", "Widowed", "Divorced", "Separated", "Remarried", "With a partner")
levels(data$cfq_r_a_e___1.factor) <- c("Unchecked", "Checked")
levels(data$cfq_r_a_e___2.factor) <- c("Unchecked", "Checked")
levels(data$cfq_r_a_e___3.factor) <- c("Unchecked", "Checked")
levels(data$cfq_r_a_e___4.factor) <- c("Unchecked", "Checked")
levels(data$cfq_r_a_e___5.factor) <- c("Unchecked", "Checked")
levels(data$cfq_r_a_e___6.factor) <- c("Unchecked", "Checked")
levels(data$cfq_r_a_e___7.factor) <- c("Unchecked", "Checked")
levels(data$cfq_r_a_f.factor) <- c("Some high school or less", "High school diploma/GED", "Vocational School", "Some college", "College degree", "Professional or graduate degree")
levels(data$cfq_r_a_g.factor) <- c("Attending school outside the home", "Taking educational courses at home", "Seeking work", "Working full or part time (either outside the home or at a home based business)", "Full time homemaker", "Not attending school or working due to my health", "Not working for other reasons")
levels(data$cfq_r_a_1.factor) <- c("A lot of difficulty", "Some difficulty", "A little difficulty", "No difficulty")
levels(data$cfq_r_a_2.factor) <- c("A lot of difficulty", "Some difficulty", "A little difficulty", "No difficulty")
levels(data$cfq_r_a_3.factor) <- c("A lot of difficulty", "Some difficulty", "A little difficulty", "No difficulty")
levels(data$cfq_r_a_4.factor) <- c("A lot of difficulty", "Some difficulty", "A little difficulty", "No difficulty")
levels(data$cfq_r_a_5.factor) <- c("A lot of difficulty", "Some difficulty", "A little difficulty", "No difficulty")
levels(data$cfq_r_a_6.factor) <- c("Always", "Often", "Sometimes", "Never")
levels(data$cfq_r_a_7.factor) <- c("Always", "Often", "Sometimes", "Never")
levels(data$cfq_r_a_8.factor) <- c("Always", "Often", "Sometimes", "Never")
levels(data$cfq_r_a_9.factor) <- c("Always", "Often", "Sometimes", "Never")
levels(data$cfq_r_a_10.factor) <- c("Always", "Often", "Sometimes", "Never")
levels(data$cfq_r_a_11.factor) <- c("Always", "Often", "Sometimes", "Never")
levels(data$cfq_r_a_12.factor) <- c("Always", "Often", "Sometimes", "Never")
levels(data$cfq_r_a_13.factor) <- c("You can walk a long time without getting tired", "You can walk a long time but you get tired", "You cannot walk a long time because you get tired quickly", "You avoid walking whenever possible because its too tiring for you")
levels(data$cfq_r_a_14.factor) <- c("Just thinking about food makes you feel sick", "You never enjoy eating", "You are sometimes able to enjoy eating", "You are always able to enjoy eating")
levels(data$cfq_r_a_15.factor) <- c("Not at all", "A little", "Moderately", "A lot")
levels(data$cfq_r_a_16.factor) <- c("A lot", "Some", "A little", "Not very much")
levels(data$cfq_r_a_17.factor) <- c("Not at all", "A little", "Moderately", "Very")
levels(data$cfq_r_a_18.factor) <- c("Excellent", "Good", "Fair", "Poor")
levels(data$cfq_r_a_19.factor) <- c("Very true", "Somewhat true", "Somewhat false", "Very false")
levels(data$cfq_r_a_20.factor) <- c("Very true", "Somewhat true", "Somewhat false", "Very false")
levels(data$cfq_r_a_21.factor) <- c("Very true", "Somewhat true", "Somewhat false", "Very false")
levels(data$cfq_r_a_22.factor) <- c("Very true", "Somewhat true", "Somewhat false", "Very false")
levels(data$cfq_r_a_23.factor) <- c("Very true", "Somewhat true", "Somewhat false", "Very false")
levels(data$cfq_r_a_24.factor) <- c("Very true", "Somewhat true", "Somewhat false", "Very false")
levels(data$cfq_r_a_25.factor) <- c("Very true", "Somewhat true", "Somewhat false", "Very false")
levels(data$cfq_r_a_26.factor) <- c("Very true", "Somewhat true", "Somewhat false", "Very false")
levels(data$cfq_r_a_27.factor) <- c("Very true", "Somewhat true", "Somewhat false", "Very false")
levels(data$cfq_r_a_28.factor) <- c("Very true", "Somewhat true", "Somewhat false", "Very false")
levels(data$cfq_r_a_29.factor) <- c("Very true", "Somewhat true", "Somewhat false", "Very false")
levels(data$cfq_r_a_30.factor) <- c("Very true", "Somewhat true", "Somewhat false", "Very false")
levels(data$cfq_r_a_31.factor) <- c("Very true", "Somewhat true", "Somewhat false", "Very false")
levels(data$cfq_r_a_32.factor) <- c("Very true", "Somewhat true", "Somewhat false", "Very false")
levels(data$cfq_r_a_33.factor) <- c("Very true", "Somewhat true", "Somewhat false", "Very false")
levels(data$cfq_r_a_34.factor) <- c("Very true", "Somewhat true", "Somewhat false", "Very false")
levels(data$cfq_r_a_35.factor) <- c("You have had no trouble keeping up", "You have managed to keep up but its been difficult", "You have been behind", "You have not been able to do these activities at all")
levels(data$cfq_r_a_36.factor) <- c("Always", "Often", "Sometimes", "Never")
levels(data$cfq_r_a_37.factor) <- c("Always", "Often", "Sometimes", "Never")
levels(data$cfq_r_a_38.factor) <- c("Always", "Often", "Sometimes", "Never")
levels(data$cfq_r_a_39.factor) <- c("A great deal", "Somewhat", "A little", "Not at all")
levels(data$cfq_r_a_40.factor) <- c("A great deal", "Somewhat", "A little", "Not at all")
levels(data$cfq_r_a_41.factor) <- c("A great deal", "Somewhat", "A little", "Not at all")
levels(data$cfq_r_a_42.factor) <- c("A great deal", "Somewhat", "A little", "Not at all (Skip question 43, go to question 44)")
levels(data$cfq_r_a_43.factor) <- c("Clear", "Clear to yellow", "Yellowish-green", "Green with traces of blood", "Dont know")
levels(data$cfq_r_a_44.factor) <- c("Always", "Often", "Sometimes", "Never")
levels(data$cfq_r_a_45.factor) <- c("Always", "Often", "Sometimes", "Never")
levels(data$cfq_r_a_46.factor) <- c("Always", "Often", "Sometimes", "Never")
levels(data$cfq_r_a_47.factor) <- c("Always", "Often", "Sometimes", "Never")
levels(data$cfq_r_a_48.factor) <- c("Always", "Often", "Sometimes", "Never")
levels(data$cfq_r_a_49.factor) <- c("Always", "Often", "Sometimes", "Never")
levels(data$cfq_r_a_50.factor) <- c("Always", "Often", "Sometimes", "Never")
levels(data$cfqr_adolescents_and_adults_14_years_complete.factor) <- c("Incomplete", "Unverified", "Complete")
levels(data$cfqr_p_es_b.factor) <- c("Madre", "Padre", "Abuela", "Abuelo", "Otro familiar", "Madre adoptiva", "Padre adoptivo", "Otro (especifique): {cfqr_p_es_b_spec}")
levels(data$cfqr_p_es_c___1.factor) <- c("Unchecked", "Checked")
levels(data$cfqr_p_es_c___2.factor) <- c("Unchecked", "Checked")
levels(data$cfqr_p_es_c___3.factor) <- c("Unchecked", "Checked")
levels(data$cfqr_p_es_c___4.factor) <- c("Unchecked", "Checked")
levels(data$cfqr_p_es_c___5.factor) <- c("Unchecked", "Checked")
levels(data$cfqr_p_es_c___6.factor) <- c("Unchecked", "Checked")
levels(data$cfqr_p_es_c___7.factor) <- c("Unchecked", "Checked")
levels(data$cfqr_p_es_d.factor) <- c("Yes", "No")
levels(data$cfqr_p_es_f.factor) <- c("Soltero / nunca casado(a)", "Casado(a)", "Viudo(a)", "Divorciado(a)", "Seperado(a)", "Casado(a) de neuva", "Con un companero(a)")
levels(data$cfqr_p_es_g.factor) <- c("Algo de escuela superior o menos", "Diploma de escuela superior/GED", "Estudios vocacionales", "Algo de universidad", "Título de universidad", "Título graduado o profesional")
levels(data$cfqr_p_es_h.factor) <- c("Busca trabajo", "Trabaja a tiempo parcial o completo (desde la casa o fuera de casa)", "Amo(a) de casa a tiempo completo", "No puede trabajar debido a su salud", "No trabaja por otros razones")
levels(data$cfqr_p_es_1.factor) <- c("Mucha dificultad", "Alguna dificultad", "Un poco de dificultad", "Ninguna dificultad")
levels(data$cfqr_p_es_2.factor) <- c("Mucha dificultad", "Alguna dificultad", "Un poco de dificultad", "Ninguna dificultad")
levels(data$cfqr_p_es_3.factor) <- c("Mucha dificultad", "Alguna dificultad", "Un poco de dificultad", "Ninguna dificultad")
levels(data$cfqr_p_es_4.factor) <- c("Mucha dificultad", "Alguna dificultad", "Un poco de dificultad", "Ninguna dificultad")
levels(data$cfqr_p_es_5.factor) <- c("Mucha dificultad", "Alguna dificultad", "Un poco de dificultad", "Ninguna dificultad")
levels(data$cfqr_p_es_6.factor) <- c("Siempre", "A menudo", "A veces", "Nunca")
levels(data$cfqr_p_es_7.factor) <- c("Siempre", "A menudo", "A veces", "Nunca")
levels(data$cfqr_p_es_8.factor) <- c("Siempre", "A menudo", "A veces", "Nunca")
levels(data$cfqr_p_es_9.factor) <- c("Siempre", "A menudo", "A veces", "Nunca")
levels(data$cfqr_p_es_10.factor) <- c("Siempre", "A menudo", "A veces", "Nunca")
levels(data$cfqr_p_es_11.factor) <- c("Siempre", "A menudo", "A veces", "Nunca")
levels(data$cfqr_p_es_12.factor) <- c("Siempre", "A menudo", "A veces", "Nunca")
levels(data$cfqr_p_es_13.factor) <- c("Siempre", "A menudo", "A veces", "Nunca")
levels(data$cfqr_p_es_14.factor) <- c("No ha participado en deportes en la escuela", "Ha participado menos de lo usual en deportes en la escuela", "Ha participado igual que siempre pero con alguna dificultad", "Ha podido participar en deportes sin ninguna dificultad")
levels(data$cfqr_p_es_15.factor) <- c("Puede caminar por mucho tiempo sin cansarse", "Puede caminar por mucho tiempo pero se cansa", "No puede caminar mucho porque él (ella) se cansa rápidamente", "Evita caminar siempre que puede, porque le cansa mucho")
levels(data$cfqr_p_es_16.factor) <- c("Muy cierto", "Un poco cierto", "Un poco falso", "Muy falso")
levels(data$cfqr_p_es_17.factor) <- c("Muy cierto", "Un poco cierto", "Un poco falso", "Muy falso")
levels(data$cfqr_p_es_18.factor) <- c("Muy cierto", "Un poco cierto", "Un poco falso", "Muy falso")
levels(data$cfqr_p_es_19.factor) <- c("Muy cierto", "Un poco cierto", "Un poco falso", "Muy falso")
levels(data$cfqr_p_es_20.factor) <- c("Muy cierto", "Un poco cierto", "Un poco falso", "Muy falso")
levels(data$cfqr_p_es_21.factor) <- c("Muy cierto", "Un poco cierto", "Un poco falso", "Muy falso")
levels(data$cfqr_p_es_22.factor) <- c("Muy cierto", "Un poco cierto", "Un poco falso", "Muy falso")
levels(data$cfqr_p_es_23.factor) <- c("Muy cierto", "Un poco cierto", "Un poco falso", "Muy falso")
levels(data$cfqr_p_es_24.factor) <- c("Muy cierto", "Un poco cierto", "Un poco falso", "Muy falso")
levels(data$cfqr_p_es_25.factor) <- c("Muy cierto", "Un poco cierto", "Un poco falso", "Muy falso")
levels(data$cfqr_p_es_26.factor) <- c("Muy cierto", "Un poco cierto", "Un poco falso", "Muy falso")
levels(data$cfqr_p_es_27.factor) <- c("Muy cierto", "Un poco cierto", "Un poco falso", "Muy falso")
levels(data$cfqr_p_es_28.factor) <- c("Muy cierto", "Un poco cierto", "Un poco falso", "Muy falso")
levels(data$cfqr_p_es_29.factor) <- c("Muy cierto", "Un poco cierto", "Un poco falso", "Muy falso")
levels(data$cfqr_p_es_30.factor) <- c("Muy cierto", "Un poco cierto", "Un poco falso", "Muy falso")
levels(data$cfqr_p_es_31.factor) <- c("Nada en lo absoluto", "Un poco", "Moderadamente", "Mucho")
levels(data$cfqr_p_es_32.factor) <- c("Excelente", "Buena", "Regular", "Mala")
levels(data$cfqr_p_es_33.factor) <- c("Bastante", "Algo", "Un poco", "Nunca")
levels(data$cfqr_p_es_34.factor) <- c("Bastante", "Algo", "Un poco", "Nunca")
levels(data$cfqr_p_es_35.factor) <- c("Bastante", "Algo", "Un poco", "Nunca")
levels(data$cfqr_p_es_36.factor) <- c("Bastante", "Algo", "Un poco", "Nunca")
levels(data$cfqr_p_es_37.factor) <- c("Transparente", "Transparente a amarilla", "Amarillosa-verde", "Verde con muestras de sangre", "No se")
levels(data$cfqr_p_es_38.factor) <- c("Siempre", "A menudo", "A veces", "Nunca")
levels(data$cfqr_p_es_39.factor) <- c("Siempre", "A menudo", "A veces", "Nunca")
levels(data$cfqr_p_es_40.factor) <- c("Siempre", "A menudo", "A veces", "Nunca")
levels(data$cfqr_p_es_41.factor) <- c("Siempre", "A menudo", "A veces", "Nunca")
levels(data$cfqr_p_es_42.factor) <- c("Siempre", "A menudo", "A veces", "Nunca")
levels(data$cfqr_p_es_43.factor) <- c("Siempre", "A menudo", "A veces", "Nunca")
levels(data$cfqr_p_es_44.factor) <- c("Siempre", "A menudo", "A veces", "Nunca")
levels(data$spanish_cfqr_caregivers_age_613_complete.factor) <- c("Incomplete", "Unverified", "Complete")
levels(data$cfq_r_o_b_es.factor) <- c("Masculino", "Femenino")
levels(data$cfq_r_o_c_es.factor) <- c("Yes", "No")
levels(data$cfq_r_o_d_es___1.factor) <- c("Unchecked", "Checked")
levels(data$cfq_r_o_d_es___2.factor) <- c("Unchecked", "Checked")
levels(data$cfq_r_o_d_es___3.factor) <- c("Unchecked", "Checked")
levels(data$cfq_r_o_d_es___4.factor) <- c("Unchecked", "Checked")
levels(data$cfq_r_o_d_es___5.factor) <- c("Unchecked", "Checked")
levels(data$cfq_r_o_d_es___6.factor) <- c("Unchecked", "Checked")
levels(data$cfq_r_o_d_es___7.factor) <- c("Unchecked", "Checked")
levels(data$cfq_r_o_e_es.factor) <- c("5th grado", "6th grado", "7th grado", "8th grado", "9th grado", "No estas en la escuela")
levels(data$cfq_r_o1_es.factor) <- c("Muy cierto", "Mayormente cierto", "Algo cierto", "Falso")
levels(data$cfq_r_o2_es.factor) <- c("Muy cierto", "Mayormente cierto", "Algo cierto", "Falso")
levels(data$cfq_r_o3_es.factor) <- c("Muy cierto", "Mayormente cierto", "Algo cierto", "Falso")
levels(data$cfq_r_o4_es.factor) <- c("Muy cierto", "Mayormente cierto", "Algo cierto", "Falso")
levels(data$cfq_r_o5_es.factor) <- c("Muy cierto", "Mayormente cierto", "Algo cierto", "Falso")
levels(data$cfq_r_o6_es.factor) <- c("Muy cierto", "Mayormente cierto", "Algo cierto", "Falso")
levels(data$cfqr_o7_es.factor) <- c("Siempre", "A menudo", "A veces", "Nunca")
levels(data$cfqr_o8_es.factor) <- c("Siempre", "A menudo", "A veces", "Nunca")
levels(data$cfqr_o9_es.factor) <- c("Siempre", "A menudo", "A veces", "Nunca")
levels(data$cfqr_o10_es.factor) <- c("Siempre", "A menudo", "A veces", "Nunca")
levels(data$cfqr_o11_es.factor) <- c("Siempre", "A menudo", "A veces", "Nunca")
levels(data$cfqr_o12_es.factor) <- c("Siempre", "A menudo", "A veces", "Nunca")
levels(data$cfqr_o13_es.factor) <- c("Siempre", "A menudo", "A veces", "Nunca")
levels(data$cfq_r_o14_es.factor) <- c("Siempre", "A menudo", "A veces", "Nunca")
levels(data$cfq_r_o15_es.factor) <- c("Siempre", "A menudo", "A veces", "Nunca")
levels(data$cfq_r_o16_es.factor) <- c("Siempre", "A menudo", "A veces", "Nunca")
levels(data$cfq_r_o17_es.factor) <- c("Siempre", "A menudo", "A veces", "Nunca")
levels(data$cfq_r_o18_es.factor) <- c("Muy cierto", "Mayormente cierto", "Algo cierto", "Falso")
levels(data$cfq_r_o19_es.factor) <- c("Muy cierto", "Mayormente cierto", "Algo cierto", "Falso")
levels(data$cfq_r_o20_es.factor) <- c("Muy cierto", "Mayormente cierto", "Algo cierto", "Falso")
levels(data$cfq_r_o21_es.factor) <- c("Muy cierto", "Mayormente cierto", "Algo cierto", "Falso")
levels(data$cfq_r_o22_es.factor) <- c("Muy cierto", "Mayormente cierto", "Algo cierto", "Falso")
levels(data$cfq_r_o23_es.factor) <- c("Muy cierto", "Mayormente cierto", "Algo cierto", "Falso")
levels(data$cfq_r_o24_es.factor) <- c("Muy cierto", "Mayormente cierto", "Algo cierto", "Falso")
levels(data$cfq_r_o25_es.factor) <- c("Muy cierto", "Mayormente cierto", "Algo cierto", "Falso")
levels(data$cfq_r_o26_es.factor) <- c("Muy cierto", "Mayormente cierto", "Algo cierto", "Falso")
levels(data$cfq_r_o27_es.factor) <- c("Muy cierto", "Mayormente cierto", "Algo cierto", "Falso")
levels(data$cfq_r_o28_es.factor) <- c("Muy cierto", "Mayormente cierto", "Algo cierto", "Falso")
levels(data$cfq_r_o29_es.factor) <- c("Muy cierto", "Mayormente cierto", "Algo cierto", "Falso")
levels(data$cfq_r_o30_es.factor) <- c("Muy cierto", "Mayormente cierto", "Algo cierto", "Falso")
levels(data$cfqr_o31_es.factor) <- c("Siempre", "A menudo", "A veces", "Nunca")
levels(data$cfqr_o32_es.factor) <- c("Siempre", "A menudo", "A veces", "Nunca")
levels(data$cfqr_o33_es.factor) <- c("Siempre", "A menudo", "A veces", "Nunca")
levels(data$cfqr_o34_es.factor) <- c("Siempre", "A menudo", "A veces", "Nunca")
levels(data$cfqr_o35_es.factor) <- c("Siempre", "A menudo", "A veces", "Nunca")
levels(data$cfqr_children_ages_1213_2_complete.factor) <- c("Incomplete", "Unverified", "Complete")
levels(data$cfqr_a_es_b.factor) <- c("Masculino", "Femenino")
levels(data$cfqr_a_es_c.factor) <- c("Yes", "No")
levels(data$cfqr_a_es_d.factor) <- c("Soltero / nunca casado(a)", "Casado(a)", "Viudo(a)", "Divorciado(a)", "Seperado(a)", "Casado(a) de neuva", "Con un companero(a)")
levels(data$cfqr_a_es_e___1.factor) <- c("Unchecked", "Checked")
levels(data$cfqr_a_es_e___2.factor) <- c("Unchecked", "Checked")
levels(data$cfqr_a_es_e___3.factor) <- c("Unchecked", "Checked")
levels(data$cfqr_a_es_e___4.factor) <- c("Unchecked", "Checked")
levels(data$cfqr_a_es_e___5.factor) <- c("Unchecked", "Checked")
levels(data$cfqr_a_es_e___6.factor) <- c("Unchecked", "Checked")
levels(data$cfqr_a_es_e___7.factor) <- c("Unchecked", "Checked")
levels(data$cfqr_a_es_f.factor) <- c("Algo de escuela superior o menos", "Diploma de escuela superior/GED", "Estudios vocacionales", "Algo de universidad", "Título de universidad", "Título graduado o profesional")
levels(data$cfqr_a_es_g.factor) <- c("Asiste a la escuela / colegio fuera del hogar", "Toma cursos en el hogar", "Busca trabajo", "Trabaja a tiempo completo o medio (en el hogar o fuera de este)", "Ama de casa a tiempo completo", "No estudia o trabaja debido a su estado de salud", "No trabaja por otros razones")
levels(data$cfqr_a_es_1.factor) <- c("Mucha dificultad", "Alguna dificultad", "Un poco de dificultad", "Ninguna dificultad")
levels(data$cfqr_a_es_2.factor) <- c("Mucha dificultad", "Alguna dificultad", "Un poco de dificultad", "Ninguna dificultad")
levels(data$cfqr_a_es_3.factor) <- c("Mucha dificultad", "Alguna dificultad", "Un poco de dificultad", "Ninguna dificultad")
levels(data$cfqr_a_es_4.factor) <- c("Mucha dificultad", "Alguna dificultad", "Un poco de dificultad", "Ninguna dificultad")
levels(data$cfqr_a_es_5.factor) <- c("Mucha dificultad", "Alguna dificultad", "Un poco de dificultad", "Ninguna dificultad")
levels(data$cfqr_a_es_6.factor) <- c("Siempre", "A menudo", "A veces", "Nunca")
levels(data$cfqr_a_es_7.factor) <- c("Siempre", "A menudo", "A veces", "Nunca")
levels(data$cfqr_a_es_8.factor) <- c("Siempre", "A menudo", "A veces", "Nunca")
levels(data$cfqr_a_es_9.factor) <- c("Siempre", "A menudo", "A veces", "Nunca")
levels(data$cfqr_a_es_10.factor) <- c("Siempre", "A menudo", "A veces", "Nunca")
levels(data$cfqr_a_es_11.factor) <- c("Siempre", "A menudo", "A veces", "Nunca")
levels(data$cfqr_a_es_12.factor) <- c("Siempre", "A menudo", "A veces", "Nunca")
levels(data$cfqr_a_es_13.factor) <- c("1. Pudo caminar por mucho tiempo sin cansarse", "2. Pudo caminar por mucho tiempo pero se cansa", "3. No pudo caminar por mucho tiempo porque se cansa rápidamente", "4. Evita caminar cuando le es posible porque se cansa mucho")
levels(data$cfqr_a_es_14.factor) <- c("1. Sólo pensar en comida le causa malestar", "2. No disfruta al comer", "3. Algunas veces disfruta al comer", "4. Siempre disfruta al comer")
levels(data$cfqr_a_es_15.factor) <- c("1. Nada en lo absoluto", "2. Un poco", "3. Moderamente", "4. Mucho")
levels(data$cfqr_a_es_16.factor) <- c("1. Mucho tiempo", "2. Algo", "3. Poco", "4. Casi nada")
levels(data$cfqr_a_es_17.factor) <- c("1. Nada en lo absoluto", "2. Un poco", "3. Moderamente", "4. Mucho")
levels(data$cfqr_a_es_18.factor) <- c("1. Excelente", "2. Buena", "3. Mas a menos", "4. Mala")
levels(data$cfqr_a_es_19.factor) <- c("Muy cierto", "Algo cierto", "Algo falso", "Muy falso")
levels(data$cfqr_a_es_20.factor) <- c("Muy cierto", "Algo cierto", "Algo falso", "Muy falso")
levels(data$cfqr_a_es_21.factor) <- c("Muy cierto", "Algo cierto", "Algo falso", "Muy falso")
levels(data$cfqr_a_es_22.factor) <- c("Muy cierto", "Algo cierto", "Algo falso", "Muy falso")
levels(data$cfqr_a_es_23.factor) <- c("Muy cierto", "Algo cierto", "Algo falso", "Muy falso")
levels(data$cfqr_a_es_24.factor) <- c("Muy cierto", "Algo cierto", "Algo falso", "Muy falso")
levels(data$cfqr_a_es_25.factor) <- c("Muy cierto", "Algo cierto", "Algo falso", "Muy falso")
levels(data$cfqr_a_es_26.factor) <- c("Muy cierto", "Algo cierto", "Algo falso", "Muy falso")
levels(data$cfqr_a_es_27.factor) <- c("Muy cierto", "Algo cierto", "Algo falso", "Muy falso")
levels(data$cfqr_a_es_28.factor) <- c("Muy cierto", "Algo cierto", "Algo falso", "Muy falso")
levels(data$cfqr_a_es_29.factor) <- c("Muy cierto", "Algo cierto", "Algo falso", "Muy falso")
levels(data$cfqr_a_es_30.factor) <- c("Muy cierto", "Algo cierto", "Algo falso", "Muy falso")
levels(data$cfqr_a_es_31.factor) <- c("Muy cierto", "Algo cierto", "Algo falso", "Muy falso")
levels(data$cfqr_a_es_32.factor) <- c("Muy cierto", "Algo cierto", "Algo falso", "Muy falso")
levels(data$cfqr_a_es_33.factor) <- c("Muy cierto", "Algo cierto", "Algo falso", "Muy falso")
levels(data$cfqr_a_es_34.factor) <- c("Muy cierto", "Algo cierto", "Algo falso", "Muy falso")
levels(data$cfqr_a_es_35.factor) <- c("1. No ha tenido dificultad manteniéndose al día", "2. Ha podido mantenerse al día aunque se le ha hecho difícil", "3. Se ha atrasado", "4. No ha podido hacer estas actividades en lo absoluto")
levels(data$cfqr_a_es_36.factor) <- c("1. Siempre", "2. Con frecuencia", "3. Algunas veces", "4. Nunca")
levels(data$cfqr_a_es_37.factor) <- c("1. Siempre", "2. Con frecuencia", "3. Algunas veces", "4. Nunca")
levels(data$cfqr_a_es_38.factor) <- c("1. Siempre", "2. Con frecuencia", "3. Algunas veces", "4. Nunca")
levels(data$cfqr_a_es_39.factor) <- c("Bastante", "Algo", "Poco", "Nunca")
levels(data$cfqr_a_es_40.factor) <- c("Bastante", "Algo", "Poco", "Nunca")
levels(data$cfqr_a_es_41.factor) <- c("Bastante", "Algo", "Poco", "Nunca")
levels(data$cfqr_a_es_42.factor) <- c("Bastante", "Algo", "Poco", "Nunca")
levels(data$cfqr_a_es_43.factor) <- c("Transparente", "Transparente a amarilla", "Amarillosa-verde", "Verde con muestras de sangre", "No se")
levels(data$cfqr_a_es_44.factor) <- c("Siempre", "A menudo", "A veces", "Nunca")
levels(data$cfqr_a_es_45.factor) <- c("Siempre", "A menudo", "A veces", "Nunca")
levels(data$cfqr_a_es_46.factor) <- c("Siempre", "A menudo", "A veces", "Nunca")
levels(data$cfqr_a_es_47.factor) <- c("Siempre", "A menudo", "A veces", "Nunca")
levels(data$cfqr_a_es_48.factor) <- c("Siempre", "A menudo", "A veces", "Nunca")
levels(data$cfqr_a_es_49.factor) <- c("Siempre", "A menudo", "A veces", "Nunca")
levels(data$cfqr_a_es_50.factor) <- c("Siempre", "A menudo", "A veces", "Nunca")
levels(data$spanish_cfqr_adolescents_and_adults_complete.factor) <- c("Incomplete", "Unverified", "Complete")
levels(data$meds_hc.factor) <- c("Yes", "No")
levels(data$comorbid_dx_hc___3.factor) <- c("Unchecked", "Checked")
levels(data$comorbid_dx_hc___4.factor) <- c("Unchecked", "Checked")
levels(data$comorbid_dx_hc___5.factor) <- c("Unchecked", "Checked")
levels(data$pulm_ex_hc.factor) <- c("Yes", "No")
levels(data$antib.factor) <- c("Yes", "No")
levels(data$question_complete_hc.factor) <- c("Yes", "No")
levels(data$hc_visit_1_complete.factor) <- c("Incomplete", "Unverified", "Complete")
levels(data$q1.factor) <- c("Extremely", "Very much", "Somewhat", "A little", "Occasionally", "Not at all")
levels(data$q2.factor) <- c("Extremely", "Very much", "Somewhat", "A little", "Occasionally", "Not at all")
levels(data$q3.factor) <- c("Extremely", "Very much", "Somewhat", "A little", "Occasionally", "Not at all")
levels(data$q4.factor) <- c("Extremely", "Very much", "Somewhat", "A little", "Occasionally", "Not at all")
levels(data$q5.factor) <- c("Extremely", "Very much", "Somewhat", "A little", "Occasionally", "Not at all")
levels(data$hc_pediatric_cough_survey_complete.factor) <- c("Incomplete", "Unverified", "Complete")
levels(data$surveys_interim.factor) <- c("Yes", "No")
levels(data$abx_interim.factor) <- c("Yes", "No")
levels(data$meds_interim.factor) <- c("Yes", "No")
levels(data$interim_phone_call_complete.factor) <- c("Incomplete", "Unverified", "Complete")
levels(data$cohort_v2.factor) <- c("CF", "Healthy control")
levels(data$h_obtained_v2.factor) <- c("Yes", "No")
levels(data$w_obtained_v2.factor) <- c("Yes", "No")
levels(data$med_changes.factor) <- c("Yes", "No")
levels(data$pft_v2.factor) <- c("Yes", "No")
levels(data$post_pft_v2.factor) <- c("Yes", "No")
levels(data$pulm_ex_v2.factor) <- c("Yes", "No")
levels(data$abx_other_v2.factor) <- c("Yes", "No")
levels(data$device_returned.factor) <- c("Yes", "No")
levels(data$visit_2_complete.factor) <- c("Incomplete", "Unverified", "Complete")
levels(data$cfq_r_p_b_v2.factor) <- c("Mother", "Father", "Grandmother", "Grandfather", "Other relative", "Foster mother", "Foster father", "Other")
levels(data$cfq_r_p_c_v2___1.factor) <- c("Unchecked", "Checked")
levels(data$cfq_r_p_c_v2___2.factor) <- c("Unchecked", "Checked")
levels(data$cfq_r_p_c_v2___3.factor) <- c("Unchecked", "Checked")
levels(data$cfq_r_p_c_v2___4.factor) <- c("Unchecked", "Checked")
levels(data$cfq_r_p_c_v2___5.factor) <- c("Unchecked", "Checked")
levels(data$cfq_r_p_c_v2___6.factor) <- c("Unchecked", "Checked")
levels(data$cfq_r_p_c_v2___7.factor) <- c("Unchecked", "Checked")
levels(data$cfq_r_p_d_v2.factor) <- c("Yes", "No")
levels(data$cfq_r_p_f_v2.factor) <- c("Single/never married", "Married", "Widowed", "Divorced", "Separated", "Remarried", "With a partner")
levels(data$cfq_r_p_g_v2.factor) <- c("Some high school or less", "High school diploma/GED", "Vocational school", "Some college", "College degree", "Professional or graduate degree")
levels(data$cfq_r_p_h_v2.factor) <- c("Seeking work", "Working full- or part-time (either outside the home or at a home-based business)", "Full-time homemaker", "Not working due to my health", "Not working for other reasons")
levels(data$cfq_r_p_1_v2.factor) <- c("A lot of difficulty", "Some difficulty", "A little difficulty", "No difficulty")
levels(data$cfq_r_p_2_v2.factor) <- c("A lot of difficulty", "Some difficulty", "A little difficulty", "No difficulty")
levels(data$cfq_r_p_3_v2.factor) <- c("A lot of difficulty", "Some difficulty", "A little difficulty", "No difficulty")
levels(data$cfq_r_p_4_v2.factor) <- c("A lot of difficulty", "Some difficulty", "A little difficulty", "No difficulty")
levels(data$cfq_r_p_5_v2.factor) <- c("A lot of difficulty", "Some difficulty", "A little difficulty", "No difficulty")
levels(data$cfq_r_p_6_v2.factor) <- c("Always", "Often", "Sometimes", "Never")
levels(data$cfq_r_p_7_v2.factor) <- c("Always", "Often", "Sometimes", "Never")
levels(data$cfq_r_p_8_v2.factor) <- c("Always", "Often", "Sometimes", "Never")
levels(data$cfq_r_p_9_v2.factor) <- c("Always", "Often", "Sometimes", "Never")
levels(data$cfq_r_p_10_v2.factor) <- c("Always", "Often", "Sometimes", "Never")
levels(data$cfq_r_p_11_v2.factor) <- c("Always", "Often", "Sometimes", "Never")
levels(data$cfq_r_p_12_v2.factor) <- c("Always", "Often", "Sometimes", "Never")
levels(data$cfq_r_p_13_v2.factor) <- c("Always", "Often", "Sometimes", "Never")
levels(data$cfq_r_p_14_v2.factor) <- c("1. Has not participated in physical activities", "2. Has participated less than usual in sports", "3. Has participated as much as usual but with some difficulty", "4. Has been able to participate in physical activities without any difficulty")
levels(data$cfq_r_p_15_v2.factor) <- c("1. He or she can walk a long time without getting tired", "2. He or she can walk a long time but gets tired", "3. He or she cannot walk a long time, because he or she gets tired quickly", "4. He or she avoids walking whenever possible, because its too tiring for him or her")
levels(data$cfq_r_p_16_v2.factor) <- c("Very true", "Somewhat true", "Somewhat false", "Very false")
levels(data$cfq_r_p_17_v2.factor) <- c("Very true", "Somewhat true", "Somewhat false", "Very false")
levels(data$cfq_r_p_18_v2.factor) <- c("Very true", "Somewhat true", "Somewhat false", "Very false")
levels(data$cfq_r_p_19_v2.factor) <- c("Very true", "Somewhat true", "Somewhat false", "Very false")
levels(data$cfq_r_p_20_v2.factor) <- c("Very true", "Somewhat true", "Somewhat false", "Very false")
levels(data$cfq_r_p_21_v2.factor) <- c("Very true", "Somewhat true", "Somewhat false", "Very false")
levels(data$cfq_r_p_22_v2.factor) <- c("Very true", "Somewhat true", "Somewhat false", "Very false")
levels(data$cfq_r_p_23_v2.factor) <- c("Very true", "Somewhat true", "Somewhat false", "Very false")
levels(data$cfq_r_p_24_v2.factor) <- c("Very true", "Somewhat true", "Somewhat false", "Very false")
levels(data$cfq_r_p_25_v2.factor) <- c("Very true", "Somewhat true", "Somewhat false", "Very false")
levels(data$cfq_r_p_26_v2.factor) <- c("Very true", "Somewhat true", "Somewhat false", "Very false")
levels(data$cfq_r_p_27_v2.factor) <- c("Very true", "Somewhat true", "Somewhat false", "Very false")
levels(data$cfq_r_p_28_v2.factor) <- c("Very true", "Somewhat true", "Somewhat false", "Very false")
levels(data$cfq_r_p_29_v2.factor) <- c("Very true", "Somewhat true", "Somewhat false", "Very false")
levels(data$cfq_r_p_30_v2.factor) <- c("Very true", "Somewhat true", "Somewhat false", "Very false")
levels(data$cfq_r_p_31_v2.factor) <- c("1. Not at all", "2. A little", "3. Moderately", "4. Very")
levels(data$cfq_r_p_32_v2.factor) <- c("Excellent", "Good", "Fair", "Poor")
levels(data$cfq_r_p_33_v2.factor) <- c("A great deal", "Somewhat", "A little", "Not at all")
levels(data$cfq_r_p_34_v2.factor) <- c("A great deal", "Somewhat", "A little", "Not at all")
levels(data$cfq_r_p_35_v2.factor) <- c("A great deal", "Somewhat", "A little", "Not at all")
levels(data$cfq_r_p_36_v2.factor) <- c("A great deal", "Somewhat", "A little", "Not at all (Skip question 37, go to question 38)")
levels(data$cfq_r_p_37_v2.factor) <- c("Clear", "Clear to yellow", "Yellowish-green", "Green with traces of blood", "Dont know")
levels(data$cfq_r_p_38_v2.factor) <- c("Always", "Often", "Sometimes", "Never")
levels(data$cfq_r_p_39_v2.factor) <- c("Always", "Often", "Sometimes", "Never")
levels(data$cfq_r_p_40_v2.factor) <- c("Always", "Often", "Sometimes", "Never")
levels(data$cfq_r_p_41_v2.factor) <- c("Always", "Often", "Sometimes", "Never")
levels(data$cfq_r_p_42_v2.factor) <- c("Always", "Often", "Sometimes", "Never")
levels(data$cfq_r_p_43_v2.factor) <- c("Always", "Often", "Sometimes", "Never")
levels(data$cfq_r_p_44_v2.factor) <- c("Always", "Often", "Sometimes", "Never")
levels(data$cfqr_caregivers_613_visit_2_complete.factor) <- c("Incomplete", "Unverified", "Complete")
levels(data$cfq_r_y_b_v2.factor) <- c("Male", "Female")
levels(data$cfq_r_y_c_v2.factor) <- c("Yes", "No")
levels(data$cfq_r_y_d_v2___1.factor) <- c("Unchecked", "Checked")
levels(data$cfq_r_y_d_v2___2.factor) <- c("Unchecked", "Checked")
levels(data$cfq_r_y_d_v2___3.factor) <- c("Unchecked", "Checked")
levels(data$cfq_r_y_d_v2___4.factor) <- c("Unchecked", "Checked")
levels(data$cfq_r_y_d_v2___5.factor) <- c("Unchecked", "Checked")
levels(data$cfq_r_y_d_v2___6.factor) <- c("Unchecked", "Checked")
levels(data$cfq_r_y_d_v2___7.factor) <- c("Unchecked", "Checked")
levels(data$cfq_r_y_e_v2.factor) <- c("Kindergarten", "1st grade", "2nd grade", "3rd grade", "4th grade", "5th grade", "6th grade", "7th grade", "Not in school")
levels(data$cfq_r_y_1_v2.factor) <- c("Very True", "Mostly True", "Somewhat True", "Not at all True")
levels(data$cfq_r_y_2_v2.factor) <- c("Very True", "Mostly True", "Somewhat True", "Not at all True")
levels(data$cfq_r_y_3_v2.factor) <- c("Very True", "Mostly True", "Somewhat True", "Not at all True")
levels(data$cfq_r_y_4_v2.factor) <- c("Very True", "Mostly True", "Somewhat True", "Not at all True")
levels(data$cfq_r_y_5_v2.factor) <- c("Very True", "Mostly True", "Somewhat True", "Not at all True")
levels(data$cfq_r_y_6_v2.factor) <- c("Very True", "Mostly True", "Somewhat True", "Not at all True")
levels(data$cfq_r_y_7_v2.factor) <- c("Always", "Often", "Sometimes", "Never")
levels(data$cfq_r_y_8_v2.factor) <- c("Always", "Often", "Sometimes", "Never")
levels(data$cfq_r_y_9_v2.factor) <- c("Always", "Often", "Sometimes", "Never")
levels(data$cfq_r_y_10_v2.factor) <- c("Always", "Often", "Sometimes", "Never")
levels(data$cfq_r_y_11_v2.factor) <- c("Always", "Often", "Sometimes", "Never")
levels(data$cfq_r_y_12_v2.factor) <- c("Always", "Often", "Sometimes", "Never")
levels(data$cfq_r_y_13_v2.factor) <- c("Always", "Often", "Sometimes", "Never")
levels(data$cfq_r_y_14_v2.factor) <- c("Always", "Often", "Sometimes", "Never")
levels(data$cfq_r_y_15_v2.factor) <- c("Always", "Often", "Sometimes", "Never")
levels(data$cfq_r_y_16_v2.factor) <- c("Always", "Often", "Sometimes", "Never")
levels(data$cfq_r_y_17_v2.factor) <- c("Always", "Often", "Sometimes", "Never")
levels(data$cfq_r_y_18_v2.factor) <- c("Very True", "Mostly True", "Somewhat True", "Not at all True")
levels(data$cfq_r_y_19_v2.factor) <- c("Very True", "Mostly True", "Somewhat True", "Not at all True")
levels(data$cfq_r_y_20_v2.factor) <- c("Very True", "Mostly True", "Somewhat True", "Not at all True")
levels(data$cfq_r_y_21_v2.factor) <- c("Very True", "Mostly True", "Somewhat True", "Not at all True")
levels(data$cfq_r_y_22_v2.factor) <- c("Very True", "Mostly True", "Somewhat True", "Not at all True")
levels(data$cfq_r_y_23_v2.factor) <- c("Very True", "Mostly True", "Somewhat True", "Not at all True")
levels(data$cfq_r_y_24_v2.factor) <- c("Very True", "Mostly True", "Somewhat True", "Not at all True")
levels(data$cfq_r_y_25_v2.factor) <- c("Very True", "Mostly True", "Somewhat True", "Not at all True")
levels(data$cfq_r_y_26_v2.factor) <- c("Very True", "Mostly True", "Somewhat True", "Not at all True")
levels(data$cfq_r_y_27_v2.factor) <- c("Very True", "Mostly True", "Somewhat True", "Not at all True")
levels(data$cfq_r_y_28_v2.factor) <- c("Very True", "Mostly True", "Somewhat True", "Not at all True")
levels(data$cfq_r_y_29_v2.factor) <- c("Very True", "Mostly True", "Somewhat True", "Not at all True")
levels(data$cfq_r_y_30_v2.factor) <- c("Very True", "Mostly True", "Somewhat True", "Not at all True")
levels(data$cfq_r_y_31_v2.factor) <- c("Always", "Often", "Sometimes", "Never")
levels(data$cfq_r_y_32_v2.factor) <- c("Always", "Often", "Sometimes", "Never")
levels(data$cfq_r_y_33_v2.factor) <- c("Always", "Often", "Sometimes", "Never")
levels(data$cfq_r_y_34_v2.factor) <- c("Always", "Often", "Sometimes", "Never")
levels(data$cfq_r_y_35_v2.factor) <- c("Always", "Often", "Sometimes", "Never")
levels(data$cfqr_children_ages_611_visit_2_complete.factor) <- c("Incomplete", "Unverified", "Complete")
levels(data$cfq_r_o_b_v2.factor) <- c("Male", "Female")
levels(data$cfq_r_o_c_v2.factor) <- c("Yes", "No")
levels(data$cfq_r_o_d_v2___1.factor) <- c("Unchecked", "Checked")
levels(data$cfq_r_o_d_v2___2.factor) <- c("Unchecked", "Checked")
levels(data$cfq_r_o_d_v2___3.factor) <- c("Unchecked", "Checked")
levels(data$cfq_r_o_d_v2___4.factor) <- c("Unchecked", "Checked")
levels(data$cfq_r_o_d_v2___5.factor) <- c("Unchecked", "Checked")
levels(data$cfq_r_o_d_v2___6.factor) <- c("Unchecked", "Checked")
levels(data$cfq_r_o_d_v2___7.factor) <- c("Unchecked", "Checked")
levels(data$cfq_r_o_e_v2.factor) <- c("5th grade", "6th grade", "7th grade", "8th grade", "9th grade", "Not in school")
levels(data$cfq_r_o1_v2.factor) <- c("Very True", "Mostly True", "Somewhat True", "Not at all True")
levels(data$cfq_r_o2_v2.factor) <- c("Very True", "Mostly True", "Somewhat True", "Not at all True")
levels(data$cfq_r_o3_v2.factor) <- c("Very True", "Mostly True", "Somewhat True", "Not at all True")
levels(data$cfq_r_o4_v2.factor) <- c("Very True", "Mostly True", "Somewhat True", "Not at all True")
levels(data$cfq_r_o5_v2.factor) <- c("Very True", "Mostly True", "Somewhat True", "Not at all True")
levels(data$cfq_r_o6_v2.factor) <- c("Very True", "Mostly True", "Somewhat True", "Not at all True")
levels(data$cfq_r_o7_v2.factor) <- c("Always", "Often", "Somewhat", "Never")
levels(data$cfq_r_o8_v2.factor) <- c("Always", "Often", "Somewhat", "Never")
levels(data$cfq_r_or9_v2.factor) <- c("Always", "Often", "Somewhat", "Never")
levels(data$cfq_r_o10_v2.factor) <- c("Always", "Often", "Somewhat", "Never")
levels(data$cfq_r_o11_v2.factor) <- c("Always", "Often", "Somewhat", "Never")
levels(data$cfq_r_o12_v2.factor) <- c("Always", "Often", "Somewhat", "Never")
levels(data$cfq_r_o13_v2.factor) <- c("Always", "Often", "Somewhat", "Never")
levels(data$cfq_r_o14_v2.factor) <- c("Always", "Often", "Somewhat", "Never")
levels(data$cfq_r_o15_v2.factor) <- c("Always", "Often", "Somewhat", "Never")
levels(data$cfq_r_o16_v2.factor) <- c("Always", "Often", "Somewhat", "Never")
levels(data$cfq_r_o17_v2.factor) <- c("Always", "Often", "Somewhat", "Never")
levels(data$cfq_r_o18_v2.factor) <- c("Very True", "Mostly True", "Somewhat True", "Not at all True")
levels(data$cfq_r_o19_v2.factor) <- c("Very True", "Mostly True", "Somewhat True", "Not at all True")
levels(data$cfq_r_o20_v2.factor) <- c("Very True", "Mostly True", "Somewhat True", "Not at all True")
levels(data$cfq_r_o21_v2.factor) <- c("Very True", "Mostly True", "Somewhat True", "Not at all True")
levels(data$cfq_r_o22_v2.factor) <- c("Very True", "Mostly True", "Somewhat True", "Not at all True")
levels(data$cfq_r_o23_v2.factor) <- c("Very True", "Mostly True", "Somewhat True", "Not at all True")
levels(data$cfq_r_o24_v2.factor) <- c("Very True", "Mostly True", "Somewhat True", "Not at all True")
levels(data$cfq_r_o25_v2.factor) <- c("Very True", "Mostly True", "Somewhat True", "Not at all True")
levels(data$cfq_r_o26_v2.factor) <- c("Very True", "Mostly True", "Somewhat True", "Not at all True")
levels(data$cfq_r_o27_v2.factor) <- c("Very True", "Mostly True", "Somewhat True", "Not at all True")
levels(data$cfq_r_o28_v2.factor) <- c("Very True", "Mostly True", "Somewhat True", "Not at all True")
levels(data$cfq_r_o29_v2.factor) <- c("Very True", "Mostly True", "Somewhat True", "Not at all True")
levels(data$cfq_r_o30_v2.factor) <- c("Very True", "Mostly True", "Somewhat True", "Not at all True")
levels(data$cfq_r_o31_v2.factor) <- c("Always", "Often", "Sometimes", "Never")
levels(data$cfq_r_o32_v2.factor) <- c("Always", "Often", "Sometimes", "Never")
levels(data$cfq_r_o33_v2.factor) <- c("Always", "Often", "Sometimes", "Never")
levels(data$cfq_r_o34_v2.factor) <- c("Always", "Often", "Sometimes", "Never")
levels(data$cfq_r_o35_v2.factor) <- c("Always", "Often", "Sometimes", "Never")
levels(data$cfqr_children_ages_1213_visit_2_complete.factor) <- c("Incomplete", "Unverified", "Complete")
levels(data$cfq_r_a_b_v2.factor) <- c("Male", "Female")
levels(data$cfq_r_a_c_v2.factor) <- c("Yes", "No")
levels(data$cfq_r_a_d_v2.factor) <- c("Single/Never married", "Married", "Widowed", "Divorced", "Separated", "Remarried", "With a partner")
levels(data$cfq_r_a_e_v2___1.factor) <- c("Unchecked", "Checked")
levels(data$cfq_r_a_e_v2___2.factor) <- c("Unchecked", "Checked")
levels(data$cfq_r_a_e_v2___3.factor) <- c("Unchecked", "Checked")
levels(data$cfq_r_a_e_v2___4.factor) <- c("Unchecked", "Checked")
levels(data$cfq_r_a_e_v2___5.factor) <- c("Unchecked", "Checked")
levels(data$cfq_r_a_e_v2___6.factor) <- c("Unchecked", "Checked")
levels(data$cfq_r_a_e_v2___7.factor) <- c("Unchecked", "Checked")
levels(data$cfq_r_a_f_v2.factor) <- c("Some high school or less", "High school diploma/GED", "Vocational School", "Some college", "College degree", "Professional or graduate degree")
levels(data$cfq_r_a_g_v2.factor) <- c("Attending school outside the home", "Taking educational courses at home", "Seeking work", "Working full or part time (either outside the home or at a home based business)", "Full time homemaker", "Not attending school or working due to my health", "Not working for other reasons")
levels(data$cfq_r_a_1_v2.factor) <- c("A lot of difficulty", "Some difficulty", "A little difficulty", "No difficulty")
levels(data$cfq_r_a_2_v2.factor) <- c("A lot of difficulty", "Some difficulty", "A little difficulty", "No difficulty")
levels(data$cfq_r_a_3_v2.factor) <- c("A lot of difficulty", "Some difficulty", "A little difficulty", "No difficulty")
levels(data$cfq_r_a_4_v2.factor) <- c("A lot of difficulty", "Some difficulty", "A little difficulty", "No difficulty")
levels(data$cfq_r_a_5_v2.factor) <- c("A lot of difficulty", "Some difficulty", "A little difficulty", "No difficulty")
levels(data$cfq_r_a_6_v2.factor) <- c("Always", "Often", "Sometimes", "Never")
levels(data$cfq_r_a_7_v2.factor) <- c("Always", "Often", "Sometimes", "Never")
levels(data$cfq_r_a_8_v2.factor) <- c("Always", "Often", "Sometimes", "Never")
levels(data$cfq_r_a_9_v2.factor) <- c("Always", "Often", "Sometimes", "Never")
levels(data$cfq_r_a_10_v2.factor) <- c("Always", "Often", "Sometimes", "Never")
levels(data$cfq_r_a_11_v2.factor) <- c("Always", "Often", "Sometimes", "Never")
levels(data$cfq_r_a_12_v2.factor) <- c("Always", "Often", "Sometimes", "Never")
levels(data$cfq_r_a_13_v2.factor) <- c("You can walk a long time without getting tired", "You can walk a long time but you get tired", "You cannot walk a long time because you get tired quickly", "You avoid walking whenever possible because its too tiring for you")
levels(data$cfq_r_a_14_v2.factor) <- c("Just thinking about food makes you feel sick", "You never enjoy eating", "You are sometimes able to enjoy eating", "You are always able to enjoy eating")
levels(data$cfq_r_a_15_v2.factor) <- c("Not at all", "A little", "Moderately", "A lot")
levels(data$cfq_r_a_16_v2.factor) <- c("A lot", "Some", "A little", "Not very much")
levels(data$cfq_r_a_17_v2.factor) <- c("Not at all", "A little", "Moderately", "Very")
levels(data$cfq_r_a_18_v2.factor) <- c("Excellent", "Good", "Fair", "Poor")
levels(data$cfq_r_a_19_v2.factor) <- c("Very true", "Somewhat true", "Somewhat false", "Very false")
levels(data$cfq_r_a_20_v2.factor) <- c("Very true", "Somewhat true", "Somewhat false", "Very false")
levels(data$cfq_r_a_21_v2.factor) <- c("Very true", "Somewhat true", "Somewhat false", "Very false")
levels(data$cfq_r_a_22_v2.factor) <- c("Very true", "Somewhat true", "Somewhat false", "Very false")
levels(data$cfq_r_a_23_v2.factor) <- c("Very true", "Somewhat true", "Somewhat false", "Very false")
levels(data$cfq_r_a_24_v2.factor) <- c("Very true", "Somewhat true", "Somewhat false", "Very false")
levels(data$cfq_r_a_25_v2.factor) <- c("Very true", "Somewhat true", "Somewhat false", "Very false")
levels(data$cfq_r_a_26_v2.factor) <- c("Very true", "Somewhat true", "Somewhat false", "Very false")
levels(data$cfq_r_a_27_v2.factor) <- c("Very true", "Somewhat true", "Somewhat false", "Very false")
levels(data$cfq_r_a_28_v2.factor) <- c("Very true", "Somewhat true", "Somewhat false", "Very false")
levels(data$cfq_r_a_29_v2.factor) <- c("Very true", "Somewhat true", "Somewhat false", "Very false")
levels(data$cfq_r_a_30_v2.factor) <- c("Very true", "Somewhat true", "Somewhat false", "Very false")
levels(data$cfq_r_a_31_v2.factor) <- c("Very true", "Somewhat true", "Somewhat false", "Very false")
levels(data$cfq_r_a_32_v2.factor) <- c("Very true", "Somewhat true", "Somewhat false", "Very false")
levels(data$cfq_r_a_33_v2.factor) <- c("Very true", "Somewhat true", "Somewhat false", "Very false")
levels(data$cfq_r_a_34_v2.factor) <- c("Very true", "Somewhat true", "Somewhat false", "Very false")
levels(data$cfq_r_a_35_v2.factor) <- c("You have had no trouble keeping up", "You have managed to keep up but its been difficult", "You have been behind", "You have not been able to do these activities at all")
levels(data$cfq_r_a_36_v2.factor) <- c("Always", "Often", "Sometimes", "Never")
levels(data$cfq_r_a_37_v2.factor) <- c("Always", "Often", "Sometimes", "Never")
levels(data$cfq_r_a_38_v2.factor) <- c("Always", "Often", "Sometimes", "Never")
levels(data$cfq_r_a_39_v2.factor) <- c("A great deal", "Somewhat", "A little", "Not at all")
levels(data$cfq_r_a_40_v2.factor) <- c("A great deal", "Somewhat", "A little", "Not at all")
levels(data$cfq_r_a_41_v2.factor) <- c("A great deal", "Somewhat", "A little", "Not at all")
levels(data$cfq_r_a_42_v2.factor) <- c("A great deal", "Somewhat", "A little", "Not at all (Skip question 43, go to question 44)")
levels(data$cfq_r_a_43_v2.factor) <- c("Clear", "Clear to yellow", "Yellowish-green", "Green with traces of blood", "Dont know")
levels(data$cfq_r_a_44_v2.factor) <- c("Always", "Often", "Sometimes", "Never")
levels(data$cfq_r_a_45_v2.factor) <- c("Always", "Often", "Sometimes", "Never")
levels(data$cfq_r_a_46_v2.factor) <- c("Always", "Often", "Sometimes", "Never")
levels(data$cfq_r_a_47_v2.factor) <- c("Always", "Often", "Sometimes", "Never")
levels(data$cfq_r_a_48_v2.factor) <- c("Always", "Often", "Sometimes", "Never")
levels(data$cfq_r_a_49_v2.factor) <- c("Always", "Often", "Sometimes", "Never")
levels(data$cfq_r_a_50_v2.factor) <- c("Always", "Often", "Sometimes", "Never")
levels(data$cfqr_adolescents_and_adults_14_years_visit_2_complete.factor) <- c("Incomplete", "Unverified", "Complete")
levels(data$cfqr_p_es_b_v2.factor) <- c("Madre", "Padre", "Abuela", "Abuelo", "Otro familiar", "Madre adoptiva", "Padre adoptivo", "Otro (especifique): {cfqr_p_es_b_spec_v2}")
levels(data$cfqr_p_es_c_v2___1.factor) <- c("Unchecked", "Checked")
levels(data$cfqr_p_es_c_v2___2.factor) <- c("Unchecked", "Checked")
levels(data$cfqr_p_es_c_v2___3.factor) <- c("Unchecked", "Checked")
levels(data$cfqr_p_es_c_v2___4.factor) <- c("Unchecked", "Checked")
levels(data$cfqr_p_es_c_v2___5.factor) <- c("Unchecked", "Checked")
levels(data$cfqr_p_es_c_v2___6.factor) <- c("Unchecked", "Checked")
levels(data$cfqr_p_es_c_v2___7.factor) <- c("Unchecked", "Checked")
levels(data$cfqr_p_es_d_v2.factor) <- c("Yes", "No")
levels(data$cfqr_p_es_f_v2.factor) <- c("Soltero / nunca casado(a)", "Casado(a)", "Viudo(a)", "Divorciado(a)", "Seperado(a)", "Casado(a) de neuva", "Con un companero(a)")
levels(data$cfqr_p_es_g_v2.factor) <- c("Algo de escuela superior o menos", "Diploma de escuela superior/GED", "Estudios vocacionales", "Algo de universidad", "Título de universidad", "Título graduado o profesional")
levels(data$cfqr_p_es_h_v2.factor) <- c("Busca trabajo", "Trabaja a tiempo parcial o completo (desde la casa o fuera de casa)", "Amo(a) de casa a tiempo completo", "No puede trabajar debido a su salud", "No trabaja por otros razones")
levels(data$cfqr_p_es_1_v2.factor) <- c("Mucha dificultad", "Alguna dificultad", "Un poco de dificultad", "Ninguna dificultad")
levels(data$cfqr_p_es_2_v2.factor) <- c("Mucha dificultad", "Alguna dificultad", "Un poco de dificultad", "Ninguna dificultad")
levels(data$cfqr_p_es_3_v2.factor) <- c("Mucha dificultad", "Alguna dificultad", "Un poco de dificultad", "Ninguna dificultad")
levels(data$cfqr_p_es_4_v2.factor) <- c("Mucha dificultad", "Alguna dificultad", "Un poco de dificultad", "Ninguna dificultad")
levels(data$cfqr_p_es_5_v2.factor) <- c("Mucha dificultad", "Alguna dificultad", "Un poco de dificultad", "Ninguna dificultad")
levels(data$cfqr_p_es_6_v2.factor) <- c("Siempre", "A menudo", "A veces", "Nunca")
levels(data$cfqr_p_es_7_v2.factor) <- c("Siempre", "A menudo", "A veces", "Nunca")
levels(data$cfqr_p_es_8_v2.factor) <- c("Siempre", "A menudo", "A veces", "Nunca")
levels(data$cfqr_p_es_9_v2.factor) <- c("Siempre", "A menudo", "A veces", "Nunca")
levels(data$cfqr_p_es_10_v2.factor) <- c("Siempre", "A menudo", "A veces", "Nunca")
levels(data$cfqr_p_es_11_v2.factor) <- c("Siempre", "A menudo", "A veces", "Nunca")
levels(data$cfqr_p_es_12_v2.factor) <- c("Siempre", "A menudo", "A veces", "Nunca")
levels(data$cfqr_p_es_13_v2.factor) <- c("Siempre", "A menudo", "A veces", "Nunca")
levels(data$cfqr_p_es_14_v2.factor) <- c("No ha participado en deportes en la escuela", "Ha participado menos de lo usual en deportes en la escuela", "Ha participado igual que siempre pero con alguna dificultad", "Ha podido participar en deportes sin ninguna dificultad")
levels(data$cfqr_p_es_15_v2.factor) <- c("Puede caminar por mucho tiempo sin cansarse", "Puede caminar por mucho tiempo pero se cansa", "No puede caminar mucho porque él (ella) se cansa rápidamente", "Evita caminar siempre que puede, porque le cansa mucho")
levels(data$cfqr_p_es_16_v2.factor) <- c("Muy cierto", "Un poco cierto", "Un poco falso", "Muy falso")
levels(data$cfqr_p_es_17_v2.factor) <- c("Muy cierto", "Un poco cierto", "Un poco falso", "Muy falso")
levels(data$cfqr_p_es_18_v2.factor) <- c("Muy cierto", "Un poco cierto", "Un poco falso", "Muy falso")
levels(data$cfqr_p_es_19_v2.factor) <- c("Muy cierto", "Un poco cierto", "Un poco falso", "Muy falso")
levels(data$cfqr_p_es_20_v2.factor) <- c("Muy cierto", "Un poco cierto", "Un poco falso", "Muy falso")
levels(data$cfqr_p_es_21_v2.factor) <- c("Muy cierto", "Un poco cierto", "Un poco falso", "Muy falso")
levels(data$cfqr_p_es_22_v2.factor) <- c("Muy cierto", "Un poco cierto", "Un poco falso", "Muy falso")
levels(data$cfqr_p_es_23_v2.factor) <- c("Muy cierto", "Un poco cierto", "Un poco falso", "Muy falso")
levels(data$cfqr_p_es_24_v2.factor) <- c("Muy cierto", "Un poco cierto", "Un poco falso", "Muy falso")
levels(data$cfqr_p_es_25_v2.factor) <- c("Muy cierto", "Un poco cierto", "Un poco falso", "Muy falso")
levels(data$cfqr_p_es_26_v2.factor) <- c("Muy cierto", "Un poco cierto", "Un poco falso", "Muy falso")
levels(data$cfqr_p_es_27_v2.factor) <- c("Muy cierto", "Un poco cierto", "Un poco falso", "Muy falso")
levels(data$cfqr_p_es_28_v2.factor) <- c("Muy cierto", "Un poco cierto", "Un poco falso", "Muy falso")
levels(data$cfqr_p_es_29_v2.factor) <- c("Muy cierto", "Un poco cierto", "Un poco falso", "Muy falso")
levels(data$cfqr_p_es_30_v2.factor) <- c("Muy cierto", "Un poco cierto", "Un poco falso", "Muy falso")
levels(data$cfqr_p_es_31_v2.factor) <- c("Nada en lo absoluto", "Un poco", "Moderadamente", "Mucho")
levels(data$cfqr_p_es_32_v2.factor) <- c("Excelente", "Buena", "Regular", "Mala")
levels(data$cfqr_p_es_33_v2.factor) <- c("Bastante", "Algo", "Un poco", "Nunca")
levels(data$cfqr_p_es_34_v2.factor) <- c("Bastante", "Algo", "Un poco", "Nunca")
levels(data$cfqr_p_es_35_v2.factor) <- c("Bastante", "Algo", "Un poco", "Nunca")
levels(data$cfqr_p_es_36_v2.factor) <- c("Bastante", "Algo", "Un poco", "Nunca")
levels(data$cfqr_p_es_37_v2.factor) <- c("Transparente", "Transparente a amarilla", "Amarillosa-verde", "Verde con muestras de sangre", "No se")
levels(data$cfqr_p_es_38_v2.factor) <- c("Siempre", "A menudo", "A veces", "Nunca")
levels(data$cfqr_p_es_39_v2.factor) <- c("Siempre", "A menudo", "A veces", "Nunca")
levels(data$cfqr_p_es_40_v2.factor) <- c("Siempre", "A menudo", "A veces", "Nunca")
levels(data$cfqr_p_es_41_v2.factor) <- c("Siempre", "A menudo", "A veces", "Nunca")
levels(data$cfqr_p_es_42_v2.factor) <- c("Siempre", "A menudo", "A veces", "Nunca")
levels(data$cfqr_p_es_43_v2.factor) <- c("Siempre", "A menudo", "A veces", "Nunca")
levels(data$cfqr_p_es_44_v2.factor) <- c("Siempre", "A menudo", "A veces", "Nunca")
levels(data$spanish_cfqr_caregivers_age_613_vist_2_complete.factor) <- c("Incomplete", "Unverified", "Complete")
levels(data$cfq_r_o_b_es_v2.factor) <- c("Masculino", "Femenino")
levels(data$cfq_r_o_c_es_v2.factor) <- c("Yes", "No")
levels(data$cfq_r_o_d_es_v2___1.factor) <- c("Unchecked", "Checked")
levels(data$cfq_r_o_d_es_v2___2.factor) <- c("Unchecked", "Checked")
levels(data$cfq_r_o_d_es_v2___3.factor) <- c("Unchecked", "Checked")
levels(data$cfq_r_o_d_es_v2___4.factor) <- c("Unchecked", "Checked")
levels(data$cfq_r_o_d_es_v2___5.factor) <- c("Unchecked", "Checked")
levels(data$cfq_r_o_d_es_v2___6.factor) <- c("Unchecked", "Checked")
levels(data$cfq_r_o_d_es_v2___7.factor) <- c("Unchecked", "Checked")
levels(data$cfq_r_o_e_es_v2.factor) <- c("5th grado", "6th grado", "7th grado", "8th grado", "9th grado", "No estas en la escuela")
levels(data$cfq_r_o1_es_v2.factor) <- c("Muy cierto", "Mayormente cierto", "Algo cierto", "Falso")
levels(data$cfq_r_o2_es_v2.factor) <- c("Muy cierto", "Mayormente cierto", "Algo cierto", "Falso")
levels(data$cfq_r_o3_es_v2.factor) <- c("Muy cierto", "Mayormente cierto", "Algo cierto", "Falso")
levels(data$cfq_r_o4_es_v2.factor) <- c("Muy cierto", "Mayormente cierto", "Algo cierto", "Falso")
levels(data$cfq_r_o5_es_v2.factor) <- c("Muy cierto", "Mayormente cierto", "Algo cierto", "Falso")
levels(data$cfq_r_o6_es_v2.factor) <- c("Muy cierto", "Mayormente cierto", "Algo cierto", "Falso")
levels(data$cfqr_o7_es_v2.factor) <- c("Siempre", "A menudo", "A veces", "Nunca")
levels(data$cfqr_o8_es_v2.factor) <- c("Siempre", "A menudo", "A veces", "Nunca")
levels(data$cfqr_o9_es_v2.factor) <- c("Siempre", "A menudo", "A veces", "Nunca")
levels(data$cfqr_o10_es_v2.factor) <- c("Siempre", "A menudo", "A veces", "Nunca")
levels(data$cfqr_o11_es_v2.factor) <- c("Siempre", "A menudo", "A veces", "Nunca")
levels(data$cfqr_o12_es_v2.factor) <- c("Siempre", "A menudo", "A veces", "Nunca")
levels(data$cfqr_o13_es_v2.factor) <- c("Siempre", "A menudo", "A veces", "Nunca")
levels(data$cfq_r_o14_es_v2.factor) <- c("Siempre", "A menudo", "A veces", "Nunca")
levels(data$cfq_r_o15_es_v2.factor) <- c("Siempre", "A menudo", "A veces", "Nunca")
levels(data$cfq_r_o16_es_v2.factor) <- c("Siempre", "A menudo", "A veces", "Nunca")
levels(data$cfq_r_o17_es_v2.factor) <- c("Siempre", "A menudo", "A veces", "Nunca")
levels(data$cfq_r_o18_es_v2.factor) <- c("Muy cierto", "Mayormente cierto", "Algo cierto", "Falso")
levels(data$cfq_r_o19_es_v2.factor) <- c("Muy cierto", "Mayormente cierto", "Algo cierto", "Falso")
levels(data$cfq_r_o20_es_v2.factor) <- c("Muy cierto", "Mayormente cierto", "Algo cierto", "Falso")
levels(data$cfq_r_o21_es_v2.factor) <- c("Muy cierto", "Mayormente cierto", "Algo cierto", "Falso")
levels(data$cfq_r_o22_es_v2.factor) <- c("Muy cierto", "Mayormente cierto", "Algo cierto", "Falso")
levels(data$cfq_r_o23_es_v2.factor) <- c("Muy cierto", "Mayormente cierto", "Algo cierto", "Falso")
levels(data$cfq_r_o24_es_v2.factor) <- c("Muy cierto", "Mayormente cierto", "Algo cierto", "Falso")
levels(data$cfq_r_o25_es_v2.factor) <- c("Muy cierto", "Mayormente cierto", "Algo cierto", "Falso")
levels(data$cfq_r_o26_es_v2.factor) <- c("Muy cierto", "Mayormente cierto", "Algo cierto", "Falso")
levels(data$cfq_r_o27_es_v2.factor) <- c("Muy cierto", "Mayormente cierto", "Algo cierto", "Falso")
levels(data$cfq_r_o28_es_v2.factor) <- c("Muy cierto", "Mayormente cierto", "Algo cierto", "Falso")
levels(data$cfq_r_o29_es_v2.factor) <- c("Muy cierto", "Mayormente cierto", "Algo cierto", "Falso")
levels(data$cfq_r_o30_es_v2.factor) <- c("Muy cierto", "Mayormente cierto", "Algo cierto", "Falso")
levels(data$cfqr_o31_es_v2.factor) <- c("Siempre", "A menudo", "A veces", "Nunca")
levels(data$cfqr_o32_es_v2.factor) <- c("Siempre", "A menudo", "A veces", "Nunca")
levels(data$cfqr_o33_es_v2.factor) <- c("Siempre", "A menudo", "A veces", "Nunca")
levels(data$cfqr_o34_es_v2.factor) <- c("Siempre", "A menudo", "A veces", "Nunca")
levels(data$cfqr_o35_es_v2.factor) <- c("Siempre", "A menudo", "A veces", "Nunca")
levels(data$spanish_cfqr_children_ages_1213_visit_2_complete.factor) <- c("Incomplete", "Unverified", "Complete")
levels(data$cfqr_a_es_b_v2.factor) <- c("Masculino", "Femenino")
levels(data$cfqr_a_es_c_v2.factor) <- c("Yes", "No")
levels(data$cfqr_a_es_d_v2.factor) <- c("Soltero / nunca casado(a)", "Casado(a)", "Viudo(a)", "Divorciado(a)", "Seperado(a)", "Casado(a) de neuva", "Con un companero(a)")
levels(data$cfqr_a_es_e_v2___1.factor) <- c("Unchecked", "Checked")
levels(data$cfqr_a_es_e_v2___2.factor) <- c("Unchecked", "Checked")
levels(data$cfqr_a_es_e_v2___3.factor) <- c("Unchecked", "Checked")
levels(data$cfqr_a_es_e_v2___4.factor) <- c("Unchecked", "Checked")
levels(data$cfqr_a_es_e_v2___5.factor) <- c("Unchecked", "Checked")
levels(data$cfqr_a_es_e_v2___6.factor) <- c("Unchecked", "Checked")
levels(data$cfqr_a_es_e_v2___7.factor) <- c("Unchecked", "Checked")
levels(data$cfqr_a_es_f_v2.factor) <- c("Algo de escuela superior o menos", "Diploma de escuela superior/GED", "Estudios vocacionales", "Algo de universidad", "Título de universidad", "Título graduado o profesional")
levels(data$cfqr_a_es_g_v2.factor) <- c("Asiste a la escuela / colegio fuera del hogar", "Toma cursos en el hogar", "Busca trabajo", "Trabaja a tiempo completo o medio (en el hogar o fuera de este)", "Ama de casa a tiempo completo", "No estudia o trabaja debido a su estado de salud", "No trabaja por otros razones")
levels(data$cfqr_a_es_1_v2.factor) <- c("Mucha dificultad", "Alguna dificultad", "Un poco de dificultad", "Ninguna dificultad")
levels(data$cfqr_a_es_2_v2.factor) <- c("Mucha dificultad", "Alguna dificultad", "Un poco de dificultad", "Ninguna dificultad")
levels(data$cfqr_a_es_3_v2.factor) <- c("Mucha dificultad", "Alguna dificultad", "Un poco de dificultad", "Ninguna dificultad")
levels(data$cfqr_a_es_4_v2.factor) <- c("Mucha dificultad", "Alguna dificultad", "Un poco de dificultad", "Ninguna dificultad")
levels(data$cfqr_a_es_5_v2.factor) <- c("Mucha dificultad", "Alguna dificultad", "Un poco de dificultad", "Ninguna dificultad")
levels(data$cfqr_a_es_6_v2.factor) <- c("Siempre", "A menudo", "A veces", "Nunca")
levels(data$cfqr_a_es_7_v2.factor) <- c("Siempre", "A menudo", "A veces", "Nunca")
levels(data$cfqr_a_es_8_v2.factor) <- c("Siempre", "A menudo", "A veces", "Nunca")
levels(data$cfqr_a_es_9_v2.factor) <- c("Siempre", "A menudo", "A veces", "Nunca")
levels(data$cfqr_a_es_10_v2.factor) <- c("Siempre", "A menudo", "A veces", "Nunca")
levels(data$cfqr_a_es_11_v2.factor) <- c("Siempre", "A menudo", "A veces", "Nunca")
levels(data$cfqr_a_es_12_v2.factor) <- c("Siempre", "A menudo", "A veces", "Nunca")
levels(data$cfqr_a_es_13_v2.factor) <- c("1. Pudo caminar por mucho tiempo sin cansarse", "2. Pudo caminar por mucho tiempo pero se cansa", "3. No pudo caminar por mucho tiempo porque se cansa rápidamente", "4. Evita caminar cuando le es posible porque se cansa mucho")
levels(data$cfqr_a_es_14_v2.factor) <- c("1. Sólo pensar en comida le causa malestar", "2. No disfruta al comer", "3. Algunas veces disfruta al comer", "4. Siempre disfruta al comer")
levels(data$cfqr_a_es_15_v2.factor) <- c("1. Nada en lo absoluto", "2. Un poco", "3. Moderamente", "4. Mucho")
levels(data$cfqr_a_es_16_v2.factor) <- c("1. Mucho tiempo", "2. Algo", "3. Poco", "4. Casi nada")
levels(data$cfqr_a_es_17_v2.factor) <- c("1. Nada en lo absoluto", "2. Un poco", "3. Moderamente", "4. Mucho")
levels(data$cfqr_a_es_18_v2.factor) <- c("1. Excelente", "2. Buena", "3. Mas a menos", "4. Mala")
levels(data$cfqr_a_es_19_v2.factor) <- c("Muy cierto", "Algo cierto", "Algo falso", "Muy falso")
levels(data$cfqr_a_es_20_v2.factor) <- c("Muy cierto", "Algo cierto", "Algo falso", "Muy falso")
levels(data$cfqr_a_es_21_v2.factor) <- c("Muy cierto", "Algo cierto", "Algo falso", "Muy falso")
levels(data$cfqr_a_es_22_v2.factor) <- c("Muy cierto", "Algo cierto", "Algo falso", "Muy falso")
levels(data$cfqr_a_es_23_v2.factor) <- c("Muy cierto", "Algo cierto", "Algo falso", "Muy falso")
levels(data$cfqr_a_es_24_v2.factor) <- c("Muy cierto", "Algo cierto", "Algo falso", "Muy falso")
levels(data$cfqr_a_es_25_v2.factor) <- c("Muy cierto", "Algo cierto", "Algo falso", "Muy falso")
levels(data$cfqr_a_es_26_v2.factor) <- c("Muy cierto", "Algo cierto", "Algo falso", "Muy falso")
levels(data$cfqr_a_es_27_v2.factor) <- c("Muy cierto", "Algo cierto", "Algo falso", "Muy falso")
levels(data$cfqr_a_es_28_v2.factor) <- c("Muy cierto", "Algo cierto", "Algo falso", "Muy falso")
levels(data$cfqr_a_es_29_v2.factor) <- c("Muy cierto", "Algo cierto", "Algo falso", "Muy falso")
levels(data$cfqr_a_es_30_v2.factor) <- c("Muy cierto", "Algo cierto", "Algo falso", "Muy falso")
levels(data$cfqr_a_es_31_v2.factor) <- c("Muy cierto", "Algo cierto", "Algo falso", "Muy falso")
levels(data$cfqr_a_es_32_v2.factor) <- c("Muy cierto", "Algo cierto", "Algo falso", "Muy falso")
levels(data$cfqr_a_es_33_v2.factor) <- c("Muy cierto", "Algo cierto", "Algo falso", "Muy falso")
levels(data$cfqr_a_es_34_v2.factor) <- c("Muy cierto", "Algo cierto", "Algo falso", "Muy falso")
levels(data$cfqr_a_es_35_v2.factor) <- c("1. No ha tenido dificultad manteniéndose al día", "2. Ha podido mantenerse al día aunque se le ha hecho difícil", "3. Se ha atrasado", "4. No ha podido hacer estas actividades en lo absoluto")
levels(data$cfqr_a_es_36_v2.factor) <- c("1. Siempre", "2. Con frecuencia", "3. Algunas veces", "4. Nunca")
levels(data$cfqr_a_es_37_v2.factor) <- c("1. Siempre", "2. Con frecuencia", "3. Algunas veces", "4. Nunca")
levels(data$cfqr_a_es_38_v2.factor) <- c("1. Siempre", "2. Con frecuencia", "3. Algunas veces", "4. Nunca")
levels(data$cfqr_a_es_39_v2.factor) <- c("Bastante", "Algo", "Poco", "Nunca")
levels(data$cfqr_a_es_40_v2.factor) <- c("Bastante", "Algo", "Poco", "Nunca")
levels(data$cfqr_a_es_41_v2.factor) <- c("Bastante", "Algo", "Poco", "Nunca")
levels(data$cfqr_a_es_42_v2.factor) <- c("Bastante", "Algo", "Poco", "Nunca")
levels(data$cfqr_a_es_43_v2.factor) <- c("Transparente", "Transparente a amarilla", "Amarillosa-verde", "Verde con muestras de sangre", "No se")
levels(data$cfqr_a_es_44_v2.factor) <- c("Siempre", "A menudo", "A veces", "Nunca")
levels(data$cfqr_a_es_45_v2.factor) <- c("Siempre", "A menudo", "A veces", "Nunca")
levels(data$cfqr_a_es_46_v2.factor) <- c("Siempre", "A menudo", "A veces", "Nunca")
levels(data$cfqr_a_es_47_v2.factor) <- c("Siempre", "A menudo", "A veces", "Nunca")
levels(data$cfqr_a_es_48_v2.factor) <- c("Siempre", "A menudo", "A veces", "Nunca")
levels(data$cfqr_a_es_49_v2.factor) <- c("Siempre", "A menudo", "A veces", "Nunca")
levels(data$cfqr_a_es_50_v2.factor) <- c("Siempre", "A menudo", "A veces", "Nunca")
levels(data$spanish_cfqr_adolescents_and_adults_visit_2_complete.factor) <- c("Incomplete", "Unverified", "Complete")
# Copy labels to factors
factors <- colnames(data)[grep("\\.factor", colnames(data))]
factor_labels <- label(data[, sub("\\.factor", "", factors)])
names(factor_labels) <- paste0(names(factor_labels), ".factor")
label(data[, factors]) <- as.list(factor_labels)
# Clean up
rm(factors, factor_labels, home_dir)
