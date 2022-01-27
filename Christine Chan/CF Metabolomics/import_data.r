#Read Data
data=read.csv('./Christine Chan/CF Metabolomics/Data_Raw/CGMInHealthyControls_DATA_2022-01-27_1346.csv',na.strings = "")
#Setting Labels
label(data$subject_id)="Subject ID"
label(data$consent)="Consent"
label(data$re_consent_for_prospective)="Consent for Prospective Data"
label(data$first_name)="First Name"
label(data$last_name)="Last Name"
label(data$medical_record_number)="Medical Record Number"
label(data$date_of_birth)="Date of Birth"
label(data$age)="Age"
label(data$age_at_visit_1)="Age at Visit 1"
label(data$gender)="Gender"
label(data$race_ethnicity)="Race Ethnicity"
label(data$date_of_visit)="Date of Visit 1"
label(data$date_of_visit_2)="Date of Visit 2"
label(data$address)="Address"
label(data$city_sate_zip_code)="City, State, Zip Code"
label(data$phone_number)="Phone Number"
label(data$email)="Email"
label(data$agreed_to_future_contact)="Agreed to Be Contacted for Future Research"
label(data$detailed_group_category___1)="Detailed Group Category (choice=CFRD by OGTT)"
label(data$detailed_group_category___2)="Detailed Group Category (choice=CFRD by Hospitalization)"
label(data$detailed_group_category___3)="Detailed Group Category (choice=IGT)"
label(data$detailed_group_category___4)="Detailed Group Category (choice=IFG)"
label(data$detailed_group_category___5)="Detailed Group Category (choice=Indeterminate)"
label(data$detailed_group_category___6)="Detailed Group Category (choice=Normal)"
label(data$group_category)="Combined Group Category"
label(data$diagnosis_change_ogtt)="Diagnosis Change Based on OGTT"
label(data$g_tube_feeds)="G-Tube Feeds"
label(data$cf_genotype)="CF Genotype"
label(data$cf_mutation_1)="CF Mutation 1"
label(data$cf_mutation_1_class)="CF Mutation 1 Class"
label(data$cf_mutation_1_type)="CF Mutation 1 Type"
label(data$cf_mutation_2)="CF Mutation 2"
label(data$cf_mutation_2_class)="CF Mutation 2 Class"
label(data$cf_mutation_2_type)="CF Mutation 2 Type"
label(data$cf_pancreatic)="CF Pancreatic"
label(data$cf_pancreatic_notes)="CF Pancreatic Notes"
label(data$cf_liver_disease)="CF Liver Disease"
label(data$cf_liver_disease_notes)="CF Liver Disease Notes"
label(data$cftr_modulator)="CFTR Modulator"
label(data$cftr_modulator_type)="CFTR Modulator Type"
label(data$cftr_mod_part_of_study)="CFTR Modulator as Part of a Study"
label(data$cftr_modulator_study_notes)="CFTR Modulator Study Notes"
label(data$cftr_modulator_start_date)="CFTR Modulator Start Date"
label(data$cftr_modulator_dose)="CFTR Modulator Dose"
label(data$cftr_modulator_notes)="CFTR Modulator Notes"
label(data$cf_insulin_use)="CF Insulin Use"
label(data$insulin_administration)="Insulin Administration"
label(data$insulin_type___1)="Insulin Type (choice=Long-acting)"
label(data$insulin_type___2)="Insulin Type (choice=Short-acting)"
label(data$insulin_dose)="Insulin Dose"
label(data$insulin_start_date)="Insulin Start Date"
label(data$exclusion_criteria_check___1)="Exclusion Criteria Check (choice=None)"
label(data$exclusion_criteria_check___2)="Exclusion Criteria Check (choice=Steroids)"
label(data$exclusion_criteria_check___3)="Exclusion Criteria Check (choice=Atypical Antipsychotics)"
label(data$exclusion_criteria_check___5)="Exclusion Criteria Check (choice=Hospitalization)"
label(data$exclusion_criteria_check___6)="Exclusion Criteria Check (choice=Pregnancy)"
label(data$exclusion_criteria_check___7)="Exclusion Criteria Check (choice=other)"
label(data$category_notes)="Category Notes"
label(data$height)="Height Visit 1"
label(data$weight)="Weight Visit 1"
label(data$bmi)="BMI Visit 1"
label(data$bmi_percentile_visit_1)="BMI Percentile Visit 1"
label(data$bmi_z_score)="BMI Z-score Visit 1"
label(data$waist_circumf_visit_1)="Waist Circumference Visit 1"
label(data$hip_circumf_visit_1)="Hip Circumference Visit 1"
label(data$systolic_bp_visit_1)="Systolic Blood Pressure Visit 1"
label(data$diastolic_bp_visit_1)="Diastolic Blood Pressure Visit 1"
label(data$height_visit_2)="Height Visit 2"
label(data$weight_visit_2)="Weight Visit 2"
label(data$bmi_visit_2)="BMI Visit 2"
label(data$bmi_percentile_visit_2)="BMI Percentile Visit 2"
label(data$bmi_z_score_visit_2)="BMI Z-score Visit 2"
label(data$waist_circumf_visit_2)="Waist Circumference Visit 2"
label(data$hip_circumf_visit_2)="Hip Circumference Visit 2"
label(data$systolic_bp_visit_2)="Systolic Blood Pressure Visit 2"
label(data$diastolic_bp_visit_2)="Diastolic Blood Pressure Visit 2"
label(data$average_height)="Average Height"
label(data$average_weight)="Average Weight"
label(data$average_bmi)="Average BMI"
label(data$average_bmi_z_score)="Average BMI Z-score"
label(data$fam_history_of_diabetes)="Family History of Diabetes"
label(data$relative_with_diabetes___1)="Relative With Diabetes (choice=First Degree)"
label(data$relative_with_diabetes___2)="Relative With Diabetes (choice=Second Degree)"
label(data$relative_with_diabetes___3)="Relative With Diabetes (choice=Other)"
label(data$fam_history_diabetes_type___1)="Family History Diabetes Type (choice=Type 1)"
label(data$fam_history_diabetes_type___2)="Family History Diabetes Type (choice=Type 2)"
label(data$fam_history_diabetes_type___3)="Family History Diabetes Type (choice=Other)"
label(data$fam_history_diabetes_notes)="Family History Diabetes Notes"
label(data$general)="General"
label(data$general_comments)="General Comments"
label(data$heent)="HEENT"
label(data$heent_comments)="HEENT Comments"
label(data$neck)="Neck"
label(data$neck_comments)="Neck Comments"
label(data$cv)="CV"
label(data$cv_comments)="CV Comments"
label(data$respiratory)="Respiratory"
label(data$respiratory_comments)="Respiratory Comments"
label(data$raw_fvc)="FVC (L)"
label(data$raw_fev1)="FEV1 (L)"
label(data$fvc)="FVC Percent Predicted"
label(data$fev1_percent)="FEV1 Percent Predicted"
label(data$fvc_and_fev1_date)="FVC and FEV1 Date"
label(data$days_btw_cgm_and_pfts)="Days Between CGM Placement and PFTs"
label(data$abdomen)="Abdomen"
label(data$abdomen_comments)="Abdomen Comments"
label(data$extremities)="Extremities"
label(data$extremities_comments)="Extremities Comments"
label(data$neuro)="Neuro"
label(data$neuro_comments)="Neuro Comments"
label(data$skin)="Skin"
label(data$skin_comments)="Skin Comments"
label(data$tanner_stage___1)="Tanner Stage Male Pubic Hair (choice=1)"
label(data$tanner_stage___2)="Tanner Stage Male Pubic Hair (choice=2)"
label(data$tanner_stage___3)="Tanner Stage Male Pubic Hair (choice=3)"
label(data$tanner_stage___4)="Tanner Stage Male Pubic Hair (choice=4)"
label(data$tanner_stage___5)="Tanner Stage Male Pubic Hair (choice=5)"
label(data$testicular_volume_right)="Testicular Volume (Right)"
label(data$testicular_volume_left)="Testicular Volume (Left)"
label(data$average_testicular_volume)="Average Testicular Volume"
label(data$tanner_stage_male_testicul___1)="Tanner Stage Male Testicular Volume (choice=1)"
label(data$tanner_stage_male_testicul___2)="Tanner Stage Male Testicular Volume (choice=2)"
label(data$tanner_stage_male_testicul___3)="Tanner Stage Male Testicular Volume (choice=3)"
label(data$tanner_stage_male_testicul___4)="Tanner Stage Male Testicular Volume (choice=4)"
label(data$tanner_stage_male_testicul___5)="Tanner Stage Male Testicular Volume (choice=5)"
label(data$tanner_stage_female_pubic___1)="Tanner Stage Female Pubic Hair (choice=1)"
label(data$tanner_stage_female_pubic___2)="Tanner Stage Female Pubic Hair (choice=2)"
label(data$tanner_stage_female_pubic___3)="Tanner Stage Female Pubic Hair (choice=3)"
label(data$tanner_stage_female_pubic___4)="Tanner Stage Female Pubic Hair (choice=4)"
label(data$tanner_stage_female_pubic___5)="Tanner Stage Female Pubic Hair (choice=5)"
label(data$tanner_stage_female_breast___1)="Tanner Stage Female Breast Development (choice=1)"
label(data$tanner_stage_female_breast___2)="Tanner Stage Female Breast Development (choice=2)"
label(data$tanner_stage_female_breast___3)="Tanner Stage Female Breast Development (choice=3)"
label(data$tanner_stage_female_breast___4)="Tanner Stage Female Breast Development (choice=4)"
label(data$tanner_stage_female_breast___5)="Tanner Stage Female Breast Development (choice=5)"
label(data$other_physical_exam_notes)="Other Physical Exam Notes"
label(data$cgm_device)="CGM Device"
label(data$cgm_sn)="CGM Serial Number"
label(data$glucometer_sn)="Glucometer Serial Number"
label(data$sensor_lot)="Sensor Lot"
label(data$sensor_exp_date)="Sensor Expiration Date"
label(data$sensor_placement_time)="Sensor Placement Time"
label(data$ipro_placement_time)="iPro Placement Time"
label(data$cgm_placement)="CGM Placement"
label(data$cgm_placement_notes)="CGM Placement Notes"
label(data$demographics_and_anthropometrics_complete)="Complete?"
label(data$date_of_ogtt)="Date of OGTT/Blood Draw"
label(data$frequent_sampling_ogtt)="Frequent Sampling OGTT"
label(data$lab_blood_draw_comments)="Lab/Blood Draw Comments"
label(data$min_minus_10_glucose)="-10 Minute Glucose"
label(data$min_minus_10_insulin)="-10 Minute Insulin"
label(data$min_minus_10_c_peptide)="-10 Minute C-peptide"
label(data$min_minus_10_glucagon)="-10 Minute Glucagon"
label(data$min_minus_10_glp_1_active)="-10 Minute GLP-1 Active"
label(data$min_minus_10_glp_1_total)="-10 Minute GLP-1 Total"
label(data$min_minus_10_gip)="-10 Minute GIP"
label(data$ucd_minus10glp_1_total)="-10 minute GLP-1 Total UCD"
label(data$ucd_minus10_gip)="-10 minute GIP UCD"
label(data$poc_fasting_glucose)="POC Fasting Glucose"
label(data$poc_a1c)="POC A1c"
label(data$lab_ogtt_fasting)="Lab OGTT Fasting Glucose"
label(data$min_0_insulin)="0 Minute Insulin"
label(data$min_0_c_peptide)="0 Minute C-peptide"
label(data$min_0_glucagon)="0 Minute Glucagon"
label(data$min_0_glp_1_active)="0 Minute GLP-1 Active"
label(data$min_0_glp_1_total)="0 Minute GLP-1 Total"
label(data$min_0_gip)="0 Minute GIP"
label(data$ucd_min_0_gip)="0 minute GIP UCD"
label(data$ucd_min_0glp_1_total)="0 minute GLP-1 Total UCD"
label(data$ag)="1,5 AG"
label(data$fructosamine)="Fructosamine"
label(data$total_albumin)="Total Albumin"
label(data$glycated_albumin)="Glycated Albumin"
label(data$percent_glycated_albumin)="Percent Glycated Albumin"
label(data$min_10_glucose)="10 Minute Glucose"
label(data$min_10_insulin)="10 Minute Insulin"
label(data$min_10_c_peptide)="10 Minute C-peptide"
label(data$min_10_glucagon)="10 Minute Glucagon"
label(data$min_10_glp_1_active)="10 Minute GLP-1 Active"
label(data$min_10_glp_1_total)="10 Minute GLP-1 Total"
label(data$min_10_gip)="10 Minute GIP"
label(data$ucd_min_10_gip)="10 minute GIP UCD"
label(data$ucd_min_10glp_1_total)="10 minute GLP-1 Total UCD"
label(data$min_20_glucose)="20 Minute Glucose"
label(data$min_20_insulin)="20 Minute Insulin"
label(data$min_20_c_peptide)="20 Minute C-peptide"
label(data$min_20_glucagon)="20 Minute Glucagon"
label(data$min_20_glp_1_active)="20 Minute GLP-1 Active"
label(data$min_20_glp_1_total)="20 Minute GLP-1 Total"
label(data$min_20_gip)="20 Minute GIP"
label(data$ucd_min_20_gip)="20 minute GIP UCD"
label(data$ucd_min_20glp_1_total)="20 minute GLP-1 Total UCD"
label(data$min_30_glucose)="30 Minute Glucose"
label(data$min_30_insulin)="30 Minute Insulin"
label(data$min_30_c_peptide)="30 Minute C-peptide"
label(data$min_30_glucagon)="30 Minute Glucagon"
label(data$min_30_glp_1_active)="30 Minute GLP-1 Active"
label(data$min_30_glp_1_total)="30 Minute GLP-1 Total"
label(data$min_30_gip)="30 Minute GIP"
label(data$ucd_min_30_gip)="30 minute GIP UCD"
label(data$ucd_min_30glp_1_total)="30 minute GLP-1 Total UCD"
label(data$lab_ogtt_1_hour_glucose)="Lab OGTT 1 hour Glucose"
label(data$min_60_insulin)="60 Minute Insulin"
label(data$min_60_c_peptide)="60 Minute C-peptide"
label(data$min_60_glucagon)="60 Minute Glucagon"
label(data$min_60_glp_1_active)="60 Minute GLP-1 Active"
label(data$min_60_glp_1_total)="60 Minute GLP-1 Total"
label(data$min_60_gip)="60 Minute GIP"
label(data$ucd_min_60_gip)="60 minute GIP UCD"
label(data$ucd_min_60glp_1_total)="60 minute GLP-1 Total UCD"
label(data$min_90_glucose)="90 Minute Glucose"
label(data$min_90_insulin)="90 Minute Insulin"
label(data$min_90_c_peptide)="90 Minute C-peptide"
label(data$min_90_glucagon)="90 Minute Glucagon"
label(data$min_90_glp_1_active)="90 Minute GLP-1 Active"
label(data$min_90_glp_1_total)="90 Minute GLP-1 Total"
label(data$min_90_gip)="90 Minute GIP"
label(data$ucd_min_90_gip)="90 minute GIP UCD"
label(data$ucd_min_90glp_1_total)="90 minute GLP-1 Total UCD"
label(data$poc_2_hour_glucose)="POC 2-hour Glucose"
label(data$lab_ogtt_2_hour_glucose)="Lab OGTT 2 hour Glucose"
label(data$min_120_insulin)="120 Minute Insulin"
label(data$min_120_c_peptide)="120 Minute C-peptide"
label(data$min_120_glucagon)="120 Minute Glucagon"
label(data$min_120_glp_1_active)="120 Minute GLP-1 Active"
label(data$min_120_glp_1_total)="120 Minute GLP-1 Total"
label(data$min_120_gip)="120 Minute GIP"
label(data$ucd_min_120_gip)="120 minute GIP UCD "
label(data$ucd_min_120glp_1_total)="120 minute GLP-1 Total UCD"
label(data$poc_150_minute_glucose)="POC 150 Minute Glucose"
label(data$min_150_glucose)="150 Minute Glucose"
label(data$min_150_insulin)="150 Minute Insulin"
label(data$min_150_c_peptide)="150 Minute C-peptide"
label(data$min_150_glucagon)="150 Minute Glucagon"
label(data$min_150_glp_1_active)="150 Minute GLP-1 Active"
label(data$min_150_glp_1_total)="150 Minute GLP-1 Total"
label(data$min_150_gip)="150 Minute GIP"
label(data$ucd_min_150_gip)="150 minute GIP UCD"
label(data$ucd_minute_150glp_1_total)="150 minute GLP-1 Total UCD"
label(data$poc_180_minute_glucose)="POC 180 Minute Glucose"
label(data$min_180_glucose)="180 Minute Glucose"
label(data$min_180_insulin)="180 Minute Insulin"
label(data$min_180_c_peptide)="180 Minute C-peptide"
label(data$min_180_glucagon)="180 Minute Glucagon"
label(data$min_180_glp_1_active)="180 Minute GLP-1 Active"
label(data$min_180_glp_1_total)="180 Minute GLP-1 Total"
label(data$min_180_gip)="180 Minute GIP"
label(data$ucd_min_180_gip)="180 minute GIP UCD"
label(data$ucd_min_180glp_1_total)="180 minute GLP-1 Total UCD"
label(data$ogtt_grc_2hr)="OGTT Glucose Response Curve (GRC) 2 hour"
label(data$ogtt_grc_3hr)="OGTT Glucose Response Curve (GRC) 3 hour"
label(data$ogtt_peak_time)="OGTT Peak Time Point"
label(data$ogtt_peak_value)="OGTT Peak Value"
label(data$one_over_fast_ins)="1/Fasting Insulin"
label(data$one_over_fast_cpep)="1/Fasting C-Peptide"
label(data$isi_ins)="Insulinogenic Index (∆I30/∆G30)"
label(data$isi_c_pept)="Insulinogenic Index (∆C-peptide 30/∆G30)"
label(data$odi_ins)="Oral Disposition Index (1/fasting insulin * ∆I30/∆G30)"
label(data$odi_cpep)="Oral Disposition Index  (1/fasting C-peptide * ∆C-peptide 30/∆G30)"
label(data$odi_ins_and_cpep)="Oral Disposition Index (1/fasting insulin * ∆C-peptide 30/∆G30)"
label(data$ogtt_auc_2_hour)="OGTT Area Under the Curve (2 hour)"
label(data$ogtt_auc_3_hour)="OGTT Area Under the Curve (3 hour)"
label(data$crp)="C-Reactive Protein"
label(data$calprotectin)="Calprotectin"
label(data$copeptin)="Copeptin"
label(data$stored_blood_for_future_re)="Stored Blood for Future Research?"
label(data$stored_blood_time_points___1)="Stored Blood Time Points (choice=Fasting)"
label(data$stored_blood_time_points___2)="Stored Blood Time Points (choice=Two Hour)"
label(data$stored_blood_time_points___3)="Stored Blood Time Points (choice=All)"
label(data$stored_blood_time_points___4)="Stored Blood Time Points (choice=None)"
label(data$comments_about_stored_bloo)="Comments about stored blood"
label(data$lab_data_complete)="Complete?"
label(data$date_cgm_placement)="Date of CGM Placement"
label(data$cgm_data_success_failure)="CGM Data"
label(data$cgm_data_gaps_filled_in)="CGM Data Gaps Filled In"
label(data$number_of_gaps_filled_in)="Number of Gaps Filled In"
label(data$total_time_filled_in)="Total Time Filled In"
label(data$insulin_post_study)="Insulin Start After Study"
label(data$average_num_gmeter_tests)="Average Number of Glucometer Tests"
label(data$total_number_of_glucometer)="Total Number of Glucometer Tests"
label(data$num_days_cgm_wear)="Number of Days of CGM Wear"
label(data$num_days_good_data)="Number of Hours of Good Data"
label(data$total_sensor_readings)="Total Sensor Readings"
label(data$average_sensor)="Average Sensor "
label(data$standard_deviation)="Standard Deviation"
label(data$min_sensor)="Minimum Sensor Reading"
label(data$max_sensor)="Maximum Sensor Reading"
label(data$q1_sensor)="First Quartile Sensor Glucose"
label(data$median_sensor)="Median Sensor Glucose"
label(data$q3_sensor)="Third Quartile Sensor Glucose"
label(data$estimated_a1c)="Estimated A1c"
label(data$excursions_over_120)="Excursions Over 120"
label(data$min_spent_over_120)="Time Spent > 120 "
label(data$percent_time_over_120)="Percent Time Spent > 120"
label(data$excursions_over_140)="Excursions Over 140"
label(data$min_spent_over_140)="Time Spent > 140"
label(data$percent_time_over_140)="Percent Time Spent > 140"
label(data$excursions_over_180)="Excursions Over 180"
label(data$min_spent_over_180)="Time Spent > 180"
label(data$percent_time_over_180)="Percent Time Spent > 180"
label(data$excursions_over_200)="Excursions Over 200 "
label(data$min_spent_over_200)="Time Spent > 200"
label(data$percent_time_over_200)="Percent Time Spent > 200"
label(data$excursions_over_250)="Excursions Over 250 "
label(data$min_spent_over_250)="Time Spent > 250"
label(data$percent_time_over_250)="Percent Time Spent > 250"
label(data$avg_excur_over_140_per_day)="Average Excursions > 140 per Day"
label(data$avg_excur_over_200_per_day)="Average Excursions > 200 per Day"
label(data$excursions_under_54)="Excursions Under 54 "
label(data$min_spent_under_54)="Time Spent < 54"
label(data$percent_time_under_54)="Percent Time Spent < 54"
label(data$excursions_under_60)="Excursions Under 60"
label(data$min_spent_under_60)="Time Spent < 60"
label(data$percent_time_under_60)="Percent Time Spent < 60"
label(data$excursions_under_70)="Excursions Under 70"
label(data$min_spent_under_70)="Time Spent < 70"
label(data$percent_time_under_70)="Percent Time Spent < 70"
label(data$daytime_auc)="Daytime AUC"
label(data$daytime_avg_sensor_glucose)="Daytime Average Sensor Glucose"
label(data$daytime_min_sensor_glucose)="Daytime Minimum Sensor Glucose"
label(data$daytime_max_sensor_glucose)="Daytime Maximum Sensor Glucose"
label(data$daytime_sd)="Daytime Standard Deviation"
label(data$nighttime_auc)="Nighttime AUC"
label(data$nighttime_avg_sens_glucose)="Nighttime Average Sensor Glucose"
label(data$nighttime_min_sens_glucose)="Nighttime Minimum Sensor Glucose"
label(data$nighttime_max_sens_glucose)="Nighttime Maximum Sensor Glucose"
label(data$nighttime_sd)="Nighttime Standard Deviation"
label(data$auc_over_180)="AUC > 180"
label(data$average_auc_180)="Average AUC > 180"
label(data$auc_over_98)="AUC > 98"
label(data$average_auc_over_98)="Average AUC > 98"
label(data$total_auc)="Total AUC"
label(data$average_auc_per_day)="Average AUC per Day"
label(data$avg_pp_peak)="Average Post-Prandial Peak"
label(data$max_pp_peak)="Maximum Post-Prandial Peak"
label(data$avg_time_to_pp_peak)="Average Time to Post-Prandial Peak"
label(data$max_time_to_pp_peak)="Maximum Time to Post-Prandial Peak"
label(data$avg_meal1_pp_peak)="Average First Meal Post-Prandial Peak"
label(data$max_meal1_pp_peak)="Maximum First Meal Post-Prandial Peak"
label(data$avg_time_to_meal1_pp_peak)="Average Time to First Meal Post-Prandial Peak"
label(data$max_time_to_meal1_pp_peak)="Maximum Time to First Meal Post-Prandial Peak"
label(data$mean_amp_glycemic_ex)="Mean Amplitude Glycemic Excursion (MAGE)"
label(data$r_mage)="R MAGE"
label(data$avg_1hr_bg_meal1)="Average Glucose 1 Hour After First Meal"
label(data$max_1hr_bg_meal1)="Maximum Glucose 1 Hour After First Meal"
label(data$avg_2hr_bg_meal1)="Average Glucose 2 Hours After First Meal"
label(data$max_2hr_bg_meal1)="Maximum Glucose 2 Hours After First Meal"
label(data$m_value)="M-Value"
label(data$lability_index)="Lability Index"
label(data$adrr)="Average Daily Risk Range"
label(data$j_index)="J-Index"
label(data$lbgi)="Low Blood Glucose Index"
label(data$hbgi)="High Blood Glucose Index"
label(data$conga)="Continuous Overall Net Glycemic Action"
label(data$modd)="Mean of Daily Differences"
label(data$grade)="Glycemic Risk Assessment Diabetes Equation"
label(data$mag)="Mean Absolute Glucose"
label(data$cov)="Coefficient of Variation"
label(data$interquartile_range)="Interquartile Range"
label(data$notes)="Notes"
label(data$cgm_data_complete)="Complete?"
label(data$actiwatch_success_failure)="Actiwatch Data"
label(data$actiwatch_serial_number)="Actiwatch Serial Number"
label(data$actiwatch_epoch_length)="Actiwatch Epoch Length"
label(data$actiwatch_notes)="General Actiwatch Notes"
label(data$day_1_date)="Day 1 Date"
label(data$day_1_bed_time)="Day 1 Bed Time"
label(data$day_1_get_up_time)="Day 1 Get Up Time"
label(data$day_1_total_sleep_time)="Day 1 Total Sleep Time"
label(data$day_1_onset_latency)="Day 1 Onset Latency"
label(data$day_1_sleep_efficiency)="Day 1 Sleep Efficiency"
label(data$day_1_waso)="Day 1 Wake After Sleep Onset (WASO)"
label(data$day_1_number_of_awakenings)="Day 1 Number of Awakenings"
label(data$day_1_notes)="Day 1 Notes"
label(data$day_2_date)="Day 2 Date"
label(data$day_2_bed_time)="Day 2 Bed Time"
label(data$day_2_get_up_time)="Day 2 Get Up Time"
label(data$day_2_total_sleep_time)="Day 2 Total Sleep Time"
label(data$day_2_onset_latency)="Day 2 Onset Latency"
label(data$day_2_sleep_efficiency)="Day 2 Sleep Efficiency"
label(data$day_2_waso)="Day 2 Wake After Sleep Onset (WASO)"
label(data$day_2_number_of_awakenings)="Day 2 Number of Awakenings"
label(data$day_2_notes)="Day 2 Notes"
label(data$day_3_date)="Day 3 Date"
label(data$day_3_bed_time)="Day 3 Bed Time"
label(data$day_3_get_up_time)="Day 3 Get Up Time"
label(data$day_3_total_sleep_time)="Day 3 Total Sleep Time"
label(data$day_3_onset_latency)="Day 3 Onset Latency"
label(data$day_3_sleep_efficiency)="Day 3 Sleep Efficiency"
label(data$day_3_waso)="Day 3 Wake After Sleep Onset (WASO)"
label(data$day_3_number_of_awakenings)="Day 3 Number of Awakenings"
label(data$day_3_notes)="Day 3 Notes"
label(data$day_4_date)="Day 4 Date"
label(data$day_4_bed_time)="Day 4 Bed Time"
label(data$day_4_get_up_time)="Day 4 Get Up Time"
label(data$day_4_total_sleep_time)="Day 4 Total Sleep Time"
label(data$day_4_onset_latency)="Day 4 Onset Latency"
label(data$day_4_sleep_efficiency)="Day 4 Sleep Efficiency"
label(data$day_4_waso)="Day 4 Wake After Sleep Onset (WASO)"
label(data$day_4_number_of_awakenings)="Day 4 Number of Awakenings"
label(data$day_4_notes)="Day 4 Notes"
label(data$day_5_date)="Day 5 Date"
label(data$day_5_bed_time)="Day 5 Bed Time"
label(data$day_5_get_up_time)="Day 5 Get Up Time"
label(data$day_5_total_sleep_time)="Day 5 Total Sleep Time"
label(data$day_5_onset_latency)="Day 5 Onset Latency"
label(data$day_5_sleep_efficiency)="Day 5 Sleep Efficiency"
label(data$day_5_waso)="Day 5 Wake After Sleep Onset (WASO)"
label(data$day_5_number_of_awakenings)="Day 5 Number of Awakenings"
label(data$day_5_notes)="Day 5 Notes"
label(data$day_6_date)="Day 6 Date"
label(data$day_6_bed_time)="Day 6 Bed Time"
label(data$day_6_get_up_time)="Day 6 Get Up Time"
label(data$day_6_total_sleep_time)="Day 6 Total Sleep Time"
label(data$day_6_onset_latency)="Day 6 Onset Latency"
label(data$day_6_sleep_efficiency)="Day 6 Sleep Efficiency"
label(data$day_6_waso)="Day 6 Wake After Sleep Onset (WASO)"
label(data$day_6_number_of_awakenings)="Day 6 Number of Awakenings"
label(data$day_6_notes)="Day 6 Notes"
label(data$day_7_date)="Day 7 Date"
label(data$day_7_bed_time)="Day 7 Bed Time"
label(data$day_7_get_up_time)="Day 7 Get Up Time"
label(data$day_7_total_sleep_time)="Day 7 Total Sleep Time"
label(data$day_7_onset_latency)="Day 7 Onset Latency"
label(data$day_7_sleep_efficiency)="Day 7 Sleep Efficiency"
label(data$day_7_waso)="Day 7 Wake After Sleep Onset (WASO)"
label(data$day_7_number_of_awakenings)="Day 7 Number of Awakenings"
label(data$day_7_notes)="Day 7 Notes"
label(data$average_bed_time)="Average Bed Time"
label(data$average_get_up_time)="Average Get Up Time"
label(data$actiwatch_data_complete)="Complete?"
label(data$visit_date)="Visit Date"
label(data$visit_type)="Visit Type"
label(data$minute_0_glucose)="0 Minute Glucose"
label(data$minute_60_glucose)="60 Minute Glucose"
label(data$minute_120_glucose)="120 Minute Glucose"
label(data$ogtt_diagnosis)="OGTT Diagnosis"
label(data$new_insulin_type___1)="New Insulin Type (choice=Long-acting)"
label(data$new_insulin_type___2)="New Insulin Type (choice=Short-acting)"
label(data$new_insulin_dose)="New Insulin Dose"
label(data$prospective_ogtt_data_complete)="Complete?"
#Setting Units


#Setting Factors(will create new variable for factors)
data$consent.factor = factor(data$consent,levels=c("1","0"))
data$re_consent_for_prospective.factor = factor(data$re_consent_for_prospective,levels=c("1","0"))
data$gender.factor = factor(data$gender,levels=c("1","2"))
data$race_ethnicity.factor = factor(data$race_ethnicity,levels=c("1","2","3","4","5","6"))
data$agreed_to_future_contact.factor = factor(data$agreed_to_future_contact,levels=c("1","0"))
data$detailed_group_category___1.factor = factor(data$detailed_group_category___1,levels=c("0","1"))
data$detailed_group_category___2.factor = factor(data$detailed_group_category___2,levels=c("0","1"))
data$detailed_group_category___3.factor = factor(data$detailed_group_category___3,levels=c("0","1"))
data$detailed_group_category___4.factor = factor(data$detailed_group_category___4,levels=c("0","1"))
data$detailed_group_category___5.factor = factor(data$detailed_group_category___5,levels=c("0","1"))
data$detailed_group_category___6.factor = factor(data$detailed_group_category___6,levels=c("0","1"))
data$group_category.factor = factor(data$group_category,levels=c("1","2","3","4"))
data$diagnosis_change_ogtt.factor = factor(data$diagnosis_change_ogtt,levels=c("1","0"))
data$g_tube_feeds.factor = factor(data$g_tube_feeds,levels=c("1","0"))
data$cf_mutation_1_class.factor = factor(data$cf_mutation_1_class,levels=c("1","2","3","4","5","6"))
data$cf_mutation_1_type.factor = factor(data$cf_mutation_1_type,levels=c("1","2"))
data$cf_mutation_2_class.factor = factor(data$cf_mutation_2_class,levels=c("1","2","3","4","5","6"))
data$cf_mutation_2_type.factor = factor(data$cf_mutation_2_type,levels=c("1","2"))
data$cf_pancreatic.factor = factor(data$cf_pancreatic,levels=c("1","2"))
data$cf_liver_disease.factor = factor(data$cf_liver_disease,levels=c("1","2"))
data$cftr_modulator.factor = factor(data$cftr_modulator,levels=c("1","0"))
data$cftr_modulator_type.factor = factor(data$cftr_modulator_type,levels=c("1","2","3"))
data$cftr_mod_part_of_study.factor = factor(data$cftr_mod_part_of_study,levels=c("1","0"))
data$cf_insulin_use.factor = factor(data$cf_insulin_use,levels=c("1","0"))
data$insulin_administration.factor = factor(data$insulin_administration,levels=c("1","2"))
data$insulin_type___1.factor = factor(data$insulin_type___1,levels=c("0","1"))
data$insulin_type___2.factor = factor(data$insulin_type___2,levels=c("0","1"))
data$exclusion_criteria_check___1.factor = factor(data$exclusion_criteria_check___1,levels=c("0","1"))
data$exclusion_criteria_check___2.factor = factor(data$exclusion_criteria_check___2,levels=c("0","1"))
data$exclusion_criteria_check___3.factor = factor(data$exclusion_criteria_check___3,levels=c("0","1"))
data$exclusion_criteria_check___5.factor = factor(data$exclusion_criteria_check___5,levels=c("0","1"))
data$exclusion_criteria_check___6.factor = factor(data$exclusion_criteria_check___6,levels=c("0","1"))
data$exclusion_criteria_check___7.factor = factor(data$exclusion_criteria_check___7,levels=c("0","1"))
data$fam_history_of_diabetes.factor = factor(data$fam_history_of_diabetes,levels=c("1","0"))
data$relative_with_diabetes___1.factor = factor(data$relative_with_diabetes___1,levels=c("0","1"))
data$relative_with_diabetes___2.factor = factor(data$relative_with_diabetes___2,levels=c("0","1"))
data$relative_with_diabetes___3.factor = factor(data$relative_with_diabetes___3,levels=c("0","1"))
data$fam_history_diabetes_type___1.factor = factor(data$fam_history_diabetes_type___1,levels=c("0","1"))
data$fam_history_diabetes_type___2.factor = factor(data$fam_history_diabetes_type___2,levels=c("0","1"))
data$fam_history_diabetes_type___3.factor = factor(data$fam_history_diabetes_type___3,levels=c("0","1"))
data$general.factor = factor(data$general,levels=c("1","2"))
data$heent.factor = factor(data$heent,levels=c("1","2"))
data$neck.factor = factor(data$neck,levels=c("1","2"))
data$cv.factor = factor(data$cv,levels=c("1","2"))
data$respiratory.factor = factor(data$respiratory,levels=c("1","2"))
data$abdomen.factor = factor(data$abdomen,levels=c("1","2"))
data$extremities.factor = factor(data$extremities,levels=c("1","2"))
data$neuro.factor = factor(data$neuro,levels=c("1","2"))
data$skin.factor = factor(data$skin,levels=c("1","2"))
data$tanner_stage___1.factor = factor(data$tanner_stage___1,levels=c("0","1"))
data$tanner_stage___2.factor = factor(data$tanner_stage___2,levels=c("0","1"))
data$tanner_stage___3.factor = factor(data$tanner_stage___3,levels=c("0","1"))
data$tanner_stage___4.factor = factor(data$tanner_stage___4,levels=c("0","1"))
data$tanner_stage___5.factor = factor(data$tanner_stage___5,levels=c("0","1"))
data$tanner_stage_male_testicul___1.factor = factor(data$tanner_stage_male_testicul___1,levels=c("0","1"))
data$tanner_stage_male_testicul___2.factor = factor(data$tanner_stage_male_testicul___2,levels=c("0","1"))
data$tanner_stage_male_testicul___3.factor = factor(data$tanner_stage_male_testicul___3,levels=c("0","1"))
data$tanner_stage_male_testicul___4.factor = factor(data$tanner_stage_male_testicul___4,levels=c("0","1"))
data$tanner_stage_male_testicul___5.factor = factor(data$tanner_stage_male_testicul___5,levels=c("0","1"))
data$tanner_stage_female_pubic___1.factor = factor(data$tanner_stage_female_pubic___1,levels=c("0","1"))
data$tanner_stage_female_pubic___2.factor = factor(data$tanner_stage_female_pubic___2,levels=c("0","1"))
data$tanner_stage_female_pubic___3.factor = factor(data$tanner_stage_female_pubic___3,levels=c("0","1"))
data$tanner_stage_female_pubic___4.factor = factor(data$tanner_stage_female_pubic___4,levels=c("0","1"))
data$tanner_stage_female_pubic___5.factor = factor(data$tanner_stage_female_pubic___5,levels=c("0","1"))
data$tanner_stage_female_breast___1.factor = factor(data$tanner_stage_female_breast___1,levels=c("0","1"))
data$tanner_stage_female_breast___2.factor = factor(data$tanner_stage_female_breast___2,levels=c("0","1"))
data$tanner_stage_female_breast___3.factor = factor(data$tanner_stage_female_breast___3,levels=c("0","1"))
data$tanner_stage_female_breast___4.factor = factor(data$tanner_stage_female_breast___4,levels=c("0","1"))
data$tanner_stage_female_breast___5.factor = factor(data$tanner_stage_female_breast___5,levels=c("0","1"))
data$cgm_device.factor = factor(data$cgm_device,levels=c("1"))
data$cgm_placement.factor = factor(data$cgm_placement,levels=c("1","2","3","4","5","6","7","8"))
data$demographics_and_anthropometrics_complete.factor = factor(data$demographics_and_anthropometrics_complete,levels=c("0","1","2"))
data$frequent_sampling_ogtt.factor = factor(data$frequent_sampling_ogtt,levels=c("1","0"))
data$ogtt_grc_2hr.factor = factor(data$ogtt_grc_2hr,levels=c("1","2","3","4"))
data$ogtt_grc_3hr.factor = factor(data$ogtt_grc_3hr,levels=c("1","2","3","4"))
data$ogtt_peak_time.factor = factor(data$ogtt_peak_time,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$stored_blood_for_future_re.factor = factor(data$stored_blood_for_future_re,levels=c("1","0"))
data$stored_blood_time_points___1.factor = factor(data$stored_blood_time_points___1,levels=c("0","1"))
data$stored_blood_time_points___2.factor = factor(data$stored_blood_time_points___2,levels=c("0","1"))
data$stored_blood_time_points___3.factor = factor(data$stored_blood_time_points___3,levels=c("0","1"))
data$stored_blood_time_points___4.factor = factor(data$stored_blood_time_points___4,levels=c("0","1"))
data$lab_data_complete.factor = factor(data$lab_data_complete,levels=c("0","1","2"))
data$cgm_data_success_failure.factor = factor(data$cgm_data_success_failure,levels=c("1","2"))
data$cgm_data_gaps_filled_in.factor = factor(data$cgm_data_gaps_filled_in,levels=c("1","0"))
data$insulin_post_study.factor = factor(data$insulin_post_study,levels=c("1","0"))
data$num_days_good_data.factor = factor(data$num_days_good_data,levels=c("1","2","3","4","5","6","7"))
data$total_sensor_readings.factor = factor(data$total_sensor_readings,levels=c("288","576","864","1152","1440","1728","2016"))
data$cgm_data_complete.factor = factor(data$cgm_data_complete,levels=c("0","1","2"))
data$actiwatch_success_failure.factor = factor(data$actiwatch_success_failure,levels=c("1","2"))
data$actiwatch_data_complete.factor = factor(data$actiwatch_data_complete,levels=c("0","1","2"))
data$visit_type.factor = factor(data$visit_type,levels=c("1","2","3","4","5"))
data$ogtt_diagnosis.factor = factor(data$ogtt_diagnosis,levels=c("1","2","3"))
data$new_insulin_type___1.factor = factor(data$new_insulin_type___1,levels=c("0","1"))
data$new_insulin_type___2.factor = factor(data$new_insulin_type___2,levels=c("0","1"))
data$prospective_ogtt_data_complete.factor = factor(data$prospective_ogtt_data_complete,levels=c("0","1","2"))

levels(data$consent.factor)=c("Yes","No")
levels(data$re_consent_for_prospective.factor)=c("Yes","No")
levels(data$gender.factor)=c("Male","Female")
levels(data$race_ethnicity.factor)=c("White","Black/African American","Asian","Native American","Hispanic","Other/Multiple")
levels(data$agreed_to_future_contact.factor)=c("Yes","No")
levels(data$detailed_group_category___1.factor)=c("Unchecked","Checked")
levels(data$detailed_group_category___2.factor)=c("Unchecked","Checked")
levels(data$detailed_group_category___3.factor)=c("Unchecked","Checked")
levels(data$detailed_group_category___4.factor)=c("Unchecked","Checked")
levels(data$detailed_group_category___5.factor)=c("Unchecked","Checked")
levels(data$detailed_group_category___6.factor)=c("Unchecked","Checked")
levels(data$group_category.factor)=c("Healthy Control","Cystic Fibrosis Normal Glucose Tolerant","Cystic Fibrosis Abnormal Glycemia","Cystic Fibrosis Related Diabetes")
levels(data$diagnosis_change_ogtt.factor)=c("Yes","No")
levels(data$g_tube_feeds.factor)=c("Yes","No")
levels(data$cf_mutation_1_class.factor)=c("I","II","III","IV","V","Unknown")
levels(data$cf_mutation_1_type.factor)=c("Absent","Partial")
levels(data$cf_mutation_2_class.factor)=c("I","II","III","IV","V","Unknown")
levels(data$cf_mutation_2_type.factor)=c("Absent","Partial")
levels(data$cf_pancreatic.factor)=c("Sufficient","Insufficient")
levels(data$cf_liver_disease.factor)=c("Yes","No")
levels(data$cftr_modulator.factor)=c("Yes","No")
levels(data$cftr_modulator_type.factor)=c("Ivacaftor (Kalydeco)","Ivacaftor + Lumacaftor","Ivacaftor/Lumacaftor/Placebo")
levels(data$cftr_mod_part_of_study.factor)=c("Yes","No")
levels(data$cf_insulin_use.factor)=c("Yes","No")
levels(data$insulin_administration.factor)=c("Insulin pump","Shots (MDI)")
levels(data$insulin_type___1.factor)=c("Unchecked","Checked")
levels(data$insulin_type___2.factor)=c("Unchecked","Checked")
levels(data$exclusion_criteria_check___1.factor)=c("Unchecked","Checked")
levels(data$exclusion_criteria_check___2.factor)=c("Unchecked","Checked")
levels(data$exclusion_criteria_check___3.factor)=c("Unchecked","Checked")
levels(data$exclusion_criteria_check___5.factor)=c("Unchecked","Checked")
levels(data$exclusion_criteria_check___6.factor)=c("Unchecked","Checked")
levels(data$exclusion_criteria_check___7.factor)=c("Unchecked","Checked")
levels(data$fam_history_of_diabetes.factor)=c("Yes","No")
levels(data$relative_with_diabetes___1.factor)=c("Unchecked","Checked")
levels(data$relative_with_diabetes___2.factor)=c("Unchecked","Checked")
levels(data$relative_with_diabetes___3.factor)=c("Unchecked","Checked")
levels(data$fam_history_diabetes_type___1.factor)=c("Unchecked","Checked")
levels(data$fam_history_diabetes_type___2.factor)=c("Unchecked","Checked")
levels(data$fam_history_diabetes_type___3.factor)=c("Unchecked","Checked")
levels(data$general.factor)=c("Normal","Abnormal")
levels(data$heent.factor)=c("Normal","Abnormal")
levels(data$neck.factor)=c("Normal","Abnormal")
levels(data$cv.factor)=c("Normal","Abnormal")
levels(data$respiratory.factor)=c("Normal","Abnormal")
levels(data$abdomen.factor)=c("Normal","Abnormal")
levels(data$extremities.factor)=c("Normal","Abnormal")
levels(data$neuro.factor)=c("Normal","Abnormal")
levels(data$skin.factor)=c("Normal","Abnormal")
levels(data$tanner_stage___1.factor)=c("Unchecked","Checked")
levels(data$tanner_stage___2.factor)=c("Unchecked","Checked")
levels(data$tanner_stage___3.factor)=c("Unchecked","Checked")
levels(data$tanner_stage___4.factor)=c("Unchecked","Checked")
levels(data$tanner_stage___5.factor)=c("Unchecked","Checked")
levels(data$tanner_stage_male_testicul___1.factor)=c("Unchecked","Checked")
levels(data$tanner_stage_male_testicul___2.factor)=c("Unchecked","Checked")
levels(data$tanner_stage_male_testicul___3.factor)=c("Unchecked","Checked")
levels(data$tanner_stage_male_testicul___4.factor)=c("Unchecked","Checked")
levels(data$tanner_stage_male_testicul___5.factor)=c("Unchecked","Checked")
levels(data$tanner_stage_female_pubic___1.factor)=c("Unchecked","Checked")
levels(data$tanner_stage_female_pubic___2.factor)=c("Unchecked","Checked")
levels(data$tanner_stage_female_pubic___3.factor)=c("Unchecked","Checked")
levels(data$tanner_stage_female_pubic___4.factor)=c("Unchecked","Checked")
levels(data$tanner_stage_female_pubic___5.factor)=c("Unchecked","Checked")
levels(data$tanner_stage_female_breast___1.factor)=c("Unchecked","Checked")
levels(data$tanner_stage_female_breast___2.factor)=c("Unchecked","Checked")
levels(data$tanner_stage_female_breast___3.factor)=c("Unchecked","Checked")
levels(data$tanner_stage_female_breast___4.factor)=c("Unchecked","Checked")
levels(data$tanner_stage_female_breast___5.factor)=c("Unchecked","Checked")
levels(data$cgm_device.factor)=c("iPro2")
levels(data$cgm_placement.factor)=c("Left abdomen","Right abdomen","Left side","Right side","Left buttock","Right buttock","Left arm","Right arm")
levels(data$demographics_and_anthropometrics_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$frequent_sampling_ogtt.factor)=c("Yes","No")
levels(data$ogtt_grc_2hr.factor)=c("Monophasic","Biphasic","Triphasic","Unclassified")
levels(data$ogtt_grc_3hr.factor)=c("Monophasic","Biphasic","Triphasic","Unclassified")
levels(data$ogtt_peak_time.factor)=c("-10 Minute","0 Minute","10 Minute","20 Minute","30 Minute","60 Minute","90 Minute","120 Minute","150 Minute","180 Minute")
levels(data$stored_blood_for_future_re.factor)=c("Yes","No")
levels(data$stored_blood_time_points___1.factor)=c("Unchecked","Checked")
levels(data$stored_blood_time_points___2.factor)=c("Unchecked","Checked")
levels(data$stored_blood_time_points___3.factor)=c("Unchecked","Checked")
levels(data$stored_blood_time_points___4.factor)=c("Unchecked","Checked")
levels(data$lab_data_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$cgm_data_success_failure.factor)=c("Success","Failure")
levels(data$cgm_data_gaps_filled_in.factor)=c("Yes","No")
levels(data$insulin_post_study.factor)=c("Yes","No")
levels(data$num_days_good_data.factor)=c("24 hours","48 hours","72 hours","96 hours","120 hours","144 hours","168 hours")
levels(data$total_sensor_readings.factor)=c("288","576","864","1152","1440","1728","2016")
levels(data$cgm_data_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$actiwatch_success_failure.factor)=c("Success","Failure")
levels(data$actiwatch_data_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$visit_type.factor)=c("Clinic Visit","OGTT Result","CFRD by Hospitalization Diagnosis","New Insulin Start","Insulin Dose Change")
levels(data$ogtt_diagnosis.factor)=c("Normal","Abnormal","CFRD")
levels(data$new_insulin_type___1.factor)=c("Unchecked","Checked")
levels(data$new_insulin_type___2.factor)=c("Unchecked","Checked")
levels(data$prospective_ogtt_data_complete.factor)=c("Incomplete","Unverified","Complete")
