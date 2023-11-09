#Clear existing data and graphics
rm(list=ls())
graphics.off()
#Load Hmisc library
library(Hmisc)
#Read Data
data=read.csv('EnvisionCF_DATA_2023-11-02_1443.csv')
#Setting Labels

label(data$study_id)="Study ID"
label(data$redcap_event_name)="Event Name"
label(data$redcap_repeat_instrument)="Repeat Instrument"
label(data$redcap_repeat_instance)="Repeat Instance"
label(data$redcap_data_access_group)="Data Access Group"
label(data$participant_withdrawn)="Participant Withdrawn?"
label(data$reason_permanent_withdrawal)="Reason for Permanent Withdrawal "
label(data$reason_temporary_withdrawal)="Reason for Temporary Withdrawal"
label(data$date_of_birth)="Date of Birth"
label(data$age_at_current_date)="Age at current date"
label(data$sex)="Sex"
label(data$ethnicity)="Ethnicity"
label(data$origin_race)="Ethnic Origin/Race"
label(data$date_of_chart_review)="Date of Chart Review"
label(data$cftr_genotype_available_in)="CFTR genotype available in medical record?"
label(data$cftr_mutation_1)="CFTR Mutation 1"
label(data$other_cftr_mutation_1)="Other CFTR Mutation 1"
label(data$type_of_mutation_1)="Type of Mutation 1"
label(data$cftr_mutation_2)="CFTR Mutation 2"
label(data$other_cftr_mutation_2)="Other CFTR Mutation 2"
label(data$type_of_mutation_2)="Type of Mutation 2"
label(data$mutation_category)="Mutation Category"
label(data$new_born_screen)="New Born Screen positive for CF"
label(data$date_of_cf_diagnosis)="Date of CF Diagnosis"
label(data$sweat_chloride_test)="Sweat Chloride Test"
label(data$sweat_chloride_value)="Sweat Chloride Value"
label(data$sweat_test_date)="Sweat Test Date"
label(data$pancreatic_status)="Pancreatic Status"
label(data$most_recent_sputum_culture___1)="Most Recent Sputum Culture  (choice=Negative)"
label(data$most_recent_sputum_culture___2)="Most Recent Sputum Culture  (choice=MSSA)"
label(data$most_recent_sputum_culture___3)="Most Recent Sputum Culture  (choice=MRSA)"
label(data$most_recent_sputum_culture___4)="Most Recent Sputum Culture  (choice=pseudomonas)"
label(data$most_recent_sputum_culture___5)="Most Recent Sputum Culture  (choice=mucoid pseudomonas)"
label(data$most_recent_sputum_culture___6)="Most Recent Sputum Culture  (choice=B. Cepacia)"
label(data$most_recent_sputum_culture___7)="Most Recent Sputum Culture  (choice=Other Burkholderia species)"
label(data$most_recent_sputum_culture___8)="Most Recent Sputum Culture  (choice=Other)"
label(data$recent_other_sputum)="Other (most recent sputum)"
label(data$sputum_culture_year___1)="Sputum Culture (last 12 months excluding most recent) (choice=Negative)"
label(data$sputum_culture_year___2)="Sputum Culture (last 12 months excluding most recent) (choice=MSSA)"
label(data$sputum_culture_year___3)="Sputum Culture (last 12 months excluding most recent) (choice=MRSA)"
label(data$sputum_culture_year___4)="Sputum Culture (last 12 months excluding most recent) (choice=pseudomonas)"
label(data$sputum_culture_year___5)="Sputum Culture (last 12 months excluding most recent) (choice=mucoid pseudomonas)"
label(data$sputum_culture_year___6)="Sputum Culture (last 12 months excluding most recent) (choice=B. Cepacia)"
label(data$sputum_culture_year___7)="Sputum Culture (last 12 months excluding most recent) (choice=Other Burkholderia species)"
label(data$sputum_culture_year___8)="Sputum Culture (last 12 months excluding most recent) (choice=Other)"
label(data$sputum_other)="Other (specify) "
label(data$liver_disease)="Liver disease"
label(data$num_hospitalizations)="Number of hospitalizations for pulmonary exacerbation in past 12 months"
label(data$corrector_yes_no)="Is the subject on a corrector/potentiator medication? (any medication including some combination of ivacaftor, lumacaftor, tezcaftor, symdeko, kalydeco, orkambi)"
label(data$corrector_start_date)="Corrector Start Date"
label(data$corrector___1)="What corrector/potentiator is the subject taking (choice=ivacaftor (Kalydeco))"
label(data$corrector___2)="What corrector/potentiator is the subject taking (choice=ivacaftor/lumacaftor (orkambi))"
label(data$corrector___3)="What corrector/potentiator is the subject taking (choice=tezacaftor/ivacaftor (symdeko))"
label(data$corrector___4)="What corrector/potentiator is the subject taking (choice=triple therapy (ivacaftor + 2 other drugs))"
label(data$corrector___5)="What corrector/potentiator is the subject taking (choice=other)"
label(data$cf_corrector_other)="Other (specify)"
label(data$change_mod_yn)="Has the participant gone off of a modulator?"
label(data$explain_further_which_modu)="Explain further. Which modulator are they discontinuing? Are they re-starting a new modulator? Please list any applicable dates or relevant information. "
label(data$family_history_diabetes)="Family History of Diabetes"
label(data$relative_with_diabetes___1)="Relative with Diabetes (choice=First Degree (mother, father, sibling, child))"
label(data$relative_with_diabetes___2)="Relative with Diabetes (choice=Second Degree (grandparent, uncle, aunt, half-sibling))"
label(data$relative_with_diabetes___3)="Relative with Diabetes (choice=Other)"
label(data$relative_with_diabetes___4)="Relative with Diabetes (choice=Unknown)"
label(data$diabetes_hisotry_type___1)="Diabetes History type  (choice=Type 1)"
label(data$diabetes_hisotry_type___2)="Diabetes History type  (choice=Type 2)"
label(data$diabetes_hisotry_type___3)="Diabetes History type  (choice=Other)"
label(data$diabetes_hisotry_type___4)="Diabetes History type  (choice=Unknown)"
label(data$notes_family_member)="Notes (family member specifics, etc) "
label(data$chart_review_notes)="Chart Review Notes"
label(data$demographics_and_cf_history_complete)="Complete?"
label(data$antibiotics___1)="Antibiotics (choice=Azithromycin)"
label(data$antibiotics___2)="Antibiotics (choice=Azithromycin +1)"
label(data$antibiotics___3)="Antibiotics (choice=Azithromycin +2 or more)"
label(data$antibiotics___4)="Antibiotics (choice=No antibiotics)"
label(data$antibiotics___5)="Antibiotics (choice=Other)"
label(data$inhaled_steroids)="Inhaled Steroids"
label(data$patient_using_flonase)="Is the patient using Flonase nasal spray (fluticasone)?"
label(data$inhaled_beta_agonist)="Inhaled beta agonist  (ie: inhaled albuterol or salmeterol)"
label(data$pancreatic_enzyme_therapy)="Pancreatic Enzyme Therapy (PERT) "
label(data$systemic_steroid_therapy___1)="Systemic Steroid Therapy  (choice=Prednisone Daily)"
label(data$systemic_steroid_therapy___2)="Systemic Steroid Therapy  (choice=Prednisone Every Other Day)"
label(data$systemic_steroid_therapy___3)="Systemic Steroid Therapy  (choice=Dexamethasone Daily)"
label(data$systemic_steroid_therapy___4)="Systemic Steroid Therapy  (choice=Oral Hydrocortisone Daily)"
label(data$systemic_steroid_therapy___5)="Systemic Steroid Therapy  (choice=Methylprednisone IV (any frequency))"
label(data$systemic_steroid_therapy___6)="Systemic Steroid Therapy  (choice=No systemic steroid therapy)"
label(data$cf_multivitamins_aquadeks)="CF multivitamins (aquaDEKS, DEKA, etc.)"
label(data$vitamin_d_in_addition_to_m)="Vitamin D (in addition to multivitamin)"
label(data$high_dose_ibuprofen)="Ibuprofen"
label(data$inhaled_antibiotics)="Inhaled antibiotics  (aztreonam: (cayston, aztreonam inhaled solution), tobramycin (tobi, tobramycin inhaled, tobi podhaler))"
label(data$ursodiol)="Ursodiol"
label(data$gen_1_atyp_antipsych___0)="Are they on any of these first generation Atypical Anti-psychotics? (choice=None)"
label(data$gen_1_atyp_antipsych___1)="Are they on any of these first generation Atypical Anti-psychotics? (choice=Chlorpromazine)"
label(data$gen_1_atyp_antipsych___2)="Are they on any of these first generation Atypical Anti-psychotics? (choice=Fluphenazine)"
label(data$gen_1_atyp_antipsych___3)="Are they on any of these first generation Atypical Anti-psychotics? (choice=Haloperidol)"
label(data$gen_1_atyp_antipsych___4)="Are they on any of these first generation Atypical Anti-psychotics? (choice=Loxapine)"
label(data$gen_1_atyp_antipsych___5)="Are they on any of these first generation Atypical Anti-psychotics? (choice=Perphenazine)"
label(data$gen_1_atyp_antipsych___6)="Are they on any of these first generation Atypical Anti-psychotics? (choice=Pimozide)"
label(data$gen_1_atyp_antipsych___7)="Are they on any of these first generation Atypical Anti-psychotics? (choice=Thioridazine)"
label(data$gen_1_atyp_antipsych___8)="Are they on any of these first generation Atypical Anti-psychotics? (choice=Thiothixene)"
label(data$gen_1_atyp_antipsych___9)="Are they on any of these first generation Atypical Anti-psychotics? (choice=Trifluoperazine)"
label(data$gen_2_atyp_antipsych___0)="Are they on any of these second generation Atypical Anti-psychotics?  (choice=None)"
label(data$gen_2_atyp_antipsych___1)="Are they on any of these second generation Atypical Anti-psychotics?  (choice=Aripiprazole)"
label(data$gen_2_atyp_antipsych___2)="Are they on any of these second generation Atypical Anti-psychotics?  (choice=Asenapine)"
label(data$gen_2_atyp_antipsych___3)="Are they on any of these second generation Atypical Anti-psychotics?  (choice=Brexpiprazole)"
label(data$gen_2_atyp_antipsych___4)="Are they on any of these second generation Atypical Anti-psychotics?  (choice=Cariprazine)"
label(data$gen_2_atyp_antipsych___5)="Are they on any of these second generation Atypical Anti-psychotics?  (choice=Clozapine (Clozaril; FazaClo; Versacloz))"
label(data$gen_2_atyp_antipsych___6)="Are they on any of these second generation Atypical Anti-psychotics?  (choice=Iloperidone)"
label(data$gen_2_atyp_antipsych___7)="Are they on any of these second generation Atypical Anti-psychotics?  (choice=Lurasidone)"
label(data$gen_2_atyp_antipsych___8)="Are they on any of these second generation Atypical Anti-psychotics?  (choice=Olanzapine (Zyprexa (all formulations)))"
label(data$gen_2_atyp_antipsych___9)="Are they on any of these second generation Atypical Anti-psychotics?  (choice=Paliperidone)"
label(data$gen_2_atyp_antipsych___10)="Are they on any of these second generation Atypical Anti-psychotics?  (choice=Pimavanserin)"
label(data$gen_2_atyp_antipsych___11)="Are they on any of these second generation Atypical Anti-psychotics?  (choice=Quetiapine (Seroquel (all formulations)))"
label(data$gen_2_atyp_antipsych___12)="Are they on any of these second generation Atypical Anti-psychotics?  (choice=Risperidone (Risperdal (all formulations)))"
label(data$gen_2_atyp_antipsych___13)="Are they on any of these second generation Atypical Anti-psychotics?  (choice=Ziprasidone)"
label(data$medication_notes)="Medication Notes: (Any immunosupressants, anti-inflammatory medications?)  "
label(data$current_medications_complete)="Complete?"
label(data$date_visit)="Date of visit"
label(data$age_visit)="Age at visit:"
label(data$cf_yes_no_inclusion)="Clinical diagnosis of Cystic Fibrosis (by newborn screen, sweat chloride >60, or genetic testing)"
label(data$age_6_yes_no_inclusion)="Age 6.0 years or older (at time of consent)"
label(data$clin_stable_yes_no_inclusion)="Clinically stable last 3 weeks (no major clinical events such as pulmonary exacerbations requiring IV antibiotics either at home or in hospital, no initiation of oral steroid therapy)"
label(data$other_diabetes_yes_no)="Diagnosis of type 1 diabetes, type 2 diabetes or MODY diabetes"
label(data$organ_tx_yes_no)="History of organ transplantation"
label(data$cfrd_diabetes_med_yes_no)="NEW diagnosis of CFRD or on any anti-diabetic medication for any reason in the previous 4 weeks, not including short term insulin while on high-dose steroids. "
label(data$pulm_ex_last3months)="Pulmonary exacerbation associated with iv antibiotics or oral steroids in last 4 weeks"
label(data$corrector_yes_no_exclusion)="On a CFTR corrector/modulator less than 8 weeks (e.g. ivacaftor, tezcaftor, lumacaftor, Orkambi, kalydeco, symdeko, or any combination of these drugs)"
label(data$consent_completed)="Consent completed"
label(data$yn_future_use)="Did the participant consent to blood samples being stored for future use?"
label(data$date_consent_signed)="Date Consent Signed "
label(data$consent_form_pdf)="Signed consent form"
label(data$date_assent_signed)="Date Assent Signed"
label(data$assent_form_pdf)="Signed Assent form"
label(data$updated_consent_signed)="Date of Updated Consent Signed "
label(data$updated_consent_form)="Upload updated consent form"
label(data$update_assent_signed)="Updated Assent Signed Date"
label(data$updated_assent_form)="Upload Updated Assent Form"
label(data$upt)="Urine pregnancy test "
label(data$inclusionexclusion_complete)="Complete?"
label(data$repeat_visit)="Which visit are you repeating?"
label(data$fast_hours)="Subject fasting for at least 8 hrs:"
label(data$systolic_bp)="Systolic Blood Pressure"
label(data$diastolic_bp)="Diastolic Blood Pressure"
label(data$pulse)="Pulse"
label(data$respiratory_rate)="Respiratory Rate"
label(data$height)="Height (cm)"
label(data$height_z_score)="Height z-score"
label(data$weight)="Weight (kg)"
label(data$weight_z_score)="Weight z-score"
label(data$bmi_study_visit)="BMI"
label(data$bmi_stand_score)="BMI Standardization Z-Score"
label(data$tanner_female_pubic)="NEW Tanner staging female pubic hair"
label(data$tanner_breast_dev)="NEW Tanner staging breast development"
label(data$tanner_male_pubic)="NEW Tanner staging male pubic hair"
label(data$tanner_testicular_vol)="NEW Tanner staging testicular volume"
label(data$notes_on_testicular_volume)="Notes on Testicular Volume Tanner Staging"
label(data$type_of_temperature)="Type of temperature "
label(data$tympanic_temperature)="Tympanic Temperature"
label(data$oral_temperature)="Oral Temperature"
label(data$temporal_temperature)="Temporal Temperature"
label(data$numbing_cream___1)="Place numbing cream per institutional protocol.  If patient or guardian wishes to not use numbing cream, they may decline.    (choice=LMX or EMLA placed per institutional protocol)"
label(data$numbing_cream___2)="Place numbing cream per institutional protocol.  If patient or guardian wishes to not use numbing cream, they may decline.    (choice=numbing declined)"
label(data$problem_numbing)="Concerns or problems with numbing cream, please note"
label(data$iv_notes)="IV placement notes  note any difficulties with placement and number of trials to place IV (no more than 3 allowed, unless explicit and documented permission is given by subject and guardian if subject is minor child"
label(data$fasting_time)="Fasting Draw Time "
label(data$a1c_result)="A1C result"
label(data$gluc_dose)="Administer glucose beverage orally  Glucola dose: (1.75 g/kg, maximum dose 75 g)"
label(data$gluc_start)="Record time at which subject began drinking glucola  Glucola Start time:"
label(data$gluc_stop)="Glucola Stop time:"
label(data$time_drink_glucola)="Time to drink glucola"
label(data$glucola_notes)="Glucola Notes "
label(data$ten_min_time)="10 minute draw time"
label(data$thirty_min_time)="30 minute draw time"
label(data$sixty_min_time)="60 minute draw time"
label(data$ninety_min_time)="90 minute draw time"
label(data$onetwenty_min_time)="120 minute draw time"
label(data$pocglucose_120)="POC glucose @120 min"
label(data$hypoglycemia_symptoms_yesno)="Are there symptoms of hypoglycemia? (subject feels sweaty, shaky, hungry, faint, pale)"
label(data$protocol_continued_70_50___1)="If blood sugar < 70 mg/dl but > 50 mg/dl AND 	not symptomatic, continue research protocol.  (choice=blood sugar was < 70 mg/dl, but >50 mg/dl AND patient was not symptomatic)"
label(data$protocol_continued_70_50___2)="If blood sugar < 70 mg/dl but > 50 mg/dl AND 	not symptomatic, continue research protocol.  (choice=research protocol continued)"
label(data$protocol_continued_70_52_sym___1)="If blood sugar < 70 mg/dl but > 50 mg/dl AND  subject is symptomatic (sweaty, shaky, hungry, fait, pale) call provider (choice=blood sugar was < 70 mg/dl, but >50 mg/dl AND patient *was* symptomatic)"
label(data$protocol_continued_70_52_sym___2)="If blood sugar < 70 mg/dl but > 50 mg/dl AND  subject is symptomatic (sweaty, shaky, hungry, fait, pale) call provider (choice=provider contacted)"
label(data$pocgluocse50andsymptoms_1___1)="If POC glucose < 50 mg/dl AND subject is symptomatic repeat POC glucose STAT and if still < 50 mg/dl, give 4 oz juice and notify provider repeat POC glucose in 15 min if still < 50 mg/dl give 4 oz juice and notify provider repeat POC glucose and 4 oz juice every 15 min until POC glucose is >60 mg/dl (choice=repeat POC glucose STAT)"
label(data$pocgluocse50andsymptoms_1___2)="If POC glucose < 50 mg/dl AND subject is symptomatic repeat POC glucose STAT and if still < 50 mg/dl, give 4 oz juice and notify provider repeat POC glucose in 15 min if still < 50 mg/dl give 4 oz juice and notify provider repeat POC glucose and 4 oz juice every 15 min until POC glucose is >60 mg/dl (choice=if < 50 mg/dl give 4 oz juice immediately)"
label(data$pocgluocse50andsymptoms_1___3)="If POC glucose < 50 mg/dl AND subject is symptomatic repeat POC glucose STAT and if still < 50 mg/dl, give 4 oz juice and notify provider repeat POC glucose in 15 min if still < 50 mg/dl give 4 oz juice and notify provider repeat POC glucose and 4 oz juice every 15 min until POC glucose is >60 mg/dl (choice=contact provider)"
label(data$pocgluocse50andsymptoms_1___4)="If POC glucose < 50 mg/dl AND subject is symptomatic repeat POC glucose STAT and if still < 50 mg/dl, give 4 oz juice and notify provider repeat POC glucose in 15 min if still < 50 mg/dl give 4 oz juice and notify provider repeat POC glucose and 4 oz juice every 15 min until POC glucose is >60 mg/dl (choice=repeat POC glucose in 15 min)"
label(data$pocgluocse50andsymptoms_1___5)="If POC glucose < 50 mg/dl AND subject is symptomatic repeat POC glucose STAT and if still < 50 mg/dl, give 4 oz juice and notify provider repeat POC glucose in 15 min if still < 50 mg/dl give 4 oz juice and notify provider repeat POC glucose and 4 oz juice every 15 min until POC glucose is >60 mg/dl (choice=treat with 4 oz juice if POC blood glucose still < 50 mg/dl)"
label(data$pocglucose12050nosyx___1)="If Blood sugar < 50 mg/dl AND not symptomatic, repeat glucometer BG in 15 minutes and notify provider 	 (choice=provider notified)"
label(data$pocglucose12050nosyx___2)="If Blood sugar < 50 mg/dl AND not symptomatic, repeat glucometer BG in 15 minutes and notify provider 	 (choice=POC blood glucose repeated (15 min later, @ 135 min))"
label(data$onefifty_min_time)="150 minute draw time"
label(data$pocglucose_150)="POC glucose @150 min"
label(data$hypoglycemia_symptoms_yesno_2)="Are there symptoms of hypoglycemia? (subject feels sweaty, shaky, hungry, faint, pale)"
label(data$protocol_continued_70_51___1)="If blood sugar < 70 mg/dl but > 50 mg/dl AND 	not symptomatic, continue research protocol.  (choice=blood sugar was < 70 mg/dl, but >50 mg/dl AND patient was not symptomatic)"
label(data$protocol_continued_70_51___2)="If blood sugar < 70 mg/dl but > 50 mg/dl AND 	not symptomatic, continue research protocol.  (choice=research protocol continued)"
label(data$protocol_continued_70_52_sym_2___1)="If blood sugar < 70 mg/dl but > 50 mg/dl AND  subject is symptomatic (sweaty, shaky, hungry, faint, pale) call provider (choice=blood sugar was < 70 mg/dl, but >50 mg/dl AND patient *was* symptomatic)"
label(data$protocol_continued_70_52_sym_2___2)="If blood sugar < 70 mg/dl but > 50 mg/dl AND  subject is symptomatic (sweaty, shaky, hungry, faint, pale) call provider (choice=provider contacted)"
label(data$pocglucose12050nosyx_2___1)="If Blood sugar < 50 mg/dl AND not symptomatic, repeat glucometer BG in 15 minutes and notify provider   (choice=provider notified)"
label(data$pocglucose12050nosyx_2___2)="If Blood sugar < 50 mg/dl AND not symptomatic, repeat glucometer BG in 15 minutes and notify provider   (choice=POC blood glucose repeated (15 min later, @ 165 min))"
label(data$pocgluocse50andsymptoms_2___1)="If POC glucose < 50 mg/dl AND subject is symptomatic repeat POC glucose STAT and if still < 50 mg/dl, give 4 oz juice and notify provider repeat POC glucose in 15 min if still < 50 mg/dl give 4 oz juice and notify provider repeat POC glucose and 4 oz juice every 15 min until POC glucose is >60 mg/dl (choice=repeat POC glucose STAT)"
label(data$pocgluocse50andsymptoms_2___2)="If POC glucose < 50 mg/dl AND subject is symptomatic repeat POC glucose STAT and if still < 50 mg/dl, give 4 oz juice and notify provider repeat POC glucose in 15 min if still < 50 mg/dl give 4 oz juice and notify provider repeat POC glucose and 4 oz juice every 15 min until POC glucose is >60 mg/dl (choice=if < 50 mg/dl give 4 oz juice immediately)"
label(data$pocgluocse50andsymptoms_2___3)="If POC glucose < 50 mg/dl AND subject is symptomatic repeat POC glucose STAT and if still < 50 mg/dl, give 4 oz juice and notify provider repeat POC glucose in 15 min if still < 50 mg/dl give 4 oz juice and notify provider repeat POC glucose and 4 oz juice every 15 min until POC glucose is >60 mg/dl (choice=contact provider)"
label(data$pocgluocse50andsymptoms_2___4)="If POC glucose < 50 mg/dl AND subject is symptomatic repeat POC glucose STAT and if still < 50 mg/dl, give 4 oz juice and notify provider repeat POC glucose in 15 min if still < 50 mg/dl give 4 oz juice and notify provider repeat POC glucose and 4 oz juice every 15 min until POC glucose is >60 mg/dl (choice=repeat POC glucose in 15 min)"
label(data$pocgluocse50andsymptoms_2___5)="If POC glucose < 50 mg/dl AND subject is symptomatic repeat POC glucose STAT and if still < 50 mg/dl, give 4 oz juice and notify provider repeat POC glucose in 15 min if still < 50 mg/dl give 4 oz juice and notify provider repeat POC glucose and 4 oz juice every 15 min until POC glucose is >60 mg/dl (choice=treat with 4 oz juice if POC blood glucose still < 50 mg/dl)"
label(data$oneeighty_min_time)="180 minute draw time"
label(data$pocglucose_180)="POC glucose @180 min"
label(data$hypoglycemia_symptoms_yesno_3)="Are there symptoms of hypoglycemia? (subject feels sweaty, shaky, hungry, faint, pale)"
label(data$protocol_continued_70_52___1)="If blood sugar < 70 mg/dl but > 50 mg/dl AND 	not symptomatic, continue research protocol.  (choice=blood sugar was < 70 mg/dl, but >50 mg/dl AND patient was not symptomatic)"
label(data$protocol_continued_70_52___2)="If blood sugar < 70 mg/dl but > 50 mg/dl AND 	not symptomatic, continue research protocol.  (choice=research protocol continued)"
label(data$protocol_continued_70_52_sym_3___1)="If blood sugar < 70 mg/dl but > 50 mg/dl AND  subject is symptomatic (sweaty, shaky, hungry, fait, pale) call provider (choice=blood sugar was < 70 mg/dl, but >50 mg/dl AND patient *was* symptomatic)"
label(data$protocol_continued_70_52_sym_3___2)="If blood sugar < 70 mg/dl but > 50 mg/dl AND  subject is symptomatic (sweaty, shaky, hungry, fait, pale) call provider (choice=provider contacted)"
label(data$pocglucose12050nosyx_3___1)="If Blood sugar < 50 mg/dl AND not symptomatic, repeat glucometer BG in 15 minutes and notify provider   (choice=provider notified)"
label(data$pocglucose12050nosyx_3___2)="If Blood sugar < 50 mg/dl AND not symptomatic, repeat glucometer BG in 15 minutes and notify provider   (choice=POC blood glucose repeated (15 min later, @ 195 min))"
label(data$pocgluocse50andsymptoms_3___1)="If POC glucose < 50 mg/dl AND subject is symptomatic repeat POC glucose STAT and if still < 50 mg/dl, give 4 oz juice and notify provider repeat POC glucose in 15 min if still < 50 mg/dl give 4 oz juice and notify provider repeat POC glucose and 4 oz juice every 15 min until POC glucose is >60 mg/dl (choice=repeat POC glucose STAT)"
label(data$pocgluocse50andsymptoms_3___2)="If POC glucose < 50 mg/dl AND subject is symptomatic repeat POC glucose STAT and if still < 50 mg/dl, give 4 oz juice and notify provider repeat POC glucose in 15 min if still < 50 mg/dl give 4 oz juice and notify provider repeat POC glucose and 4 oz juice every 15 min until POC glucose is >60 mg/dl (choice=if < 50 mg/dl give 4 oz juice immediately)"
label(data$pocgluocse50andsymptoms_3___3)="If POC glucose < 50 mg/dl AND subject is symptomatic repeat POC glucose STAT and if still < 50 mg/dl, give 4 oz juice and notify provider repeat POC glucose in 15 min if still < 50 mg/dl give 4 oz juice and notify provider repeat POC glucose and 4 oz juice every 15 min until POC glucose is >60 mg/dl (choice=contact provider)"
label(data$pocgluocse50andsymptoms_3___4)="If POC glucose < 50 mg/dl AND subject is symptomatic repeat POC glucose STAT and if still < 50 mg/dl, give 4 oz juice and notify provider repeat POC glucose in 15 min if still < 50 mg/dl give 4 oz juice and notify provider repeat POC glucose and 4 oz juice every 15 min until POC glucose is >60 mg/dl (choice=repeat POC glucose in 15 min)"
label(data$pocgluocse50andsymptoms_3___5)="If POC glucose < 50 mg/dl AND subject is symptomatic repeat POC glucose STAT and if still < 50 mg/dl, give 4 oz juice and notify provider repeat POC glucose in 15 min if still < 50 mg/dl give 4 oz juice and notify provider repeat POC glucose and 4 oz juice every 15 min until POC glucose is >60 mg/dl (choice=treat with 4 oz juice if POC blood glucose still < 50 mg/dl)"
label(data$random_hypoglycemia_ogtt)="Random hypoglycemia during study visit?"
label(data$ogtt_notes)="Notes from OGTT"
label(data$pocglucose_discharge)="POC glucose before discharge"
label(data$dischargepoc70)="If discharge POC glucose is >/=70 mg/dl, may remove IV and discharge subject"
label(data$dischargepocless70___1)="If discharge POC glucose is < 70 mg/dl, provide another 15 grams of carbohydrates, and then may remove IV and discharge (choice=give 15 grams carbohydrate (4 oz juice))"
label(data$dischargepocless70___2)="If discharge POC glucose is < 70 mg/dl, provide another 15 grams of carbohydrates, and then may remove IV and discharge (choice=remove IV)"
label(data$dischargepocless70___3)="If discharge POC glucose is < 70 mg/dl, provide another 15 grams of carbohydrates, and then may remove IV and discharge (choice=discharge subject)"
label(data$visit_completed)="Was this visit completed? "
label(data$ogtt_documentation_complete)="Complete?"
label(data$rh_time)="Timepoint Random Hypoglycemia"
label(data$rh_value)="Random Hypoglycemia Glucose Value"
label(data$rando_hypo_symp_yn)="Did you fill out random hypoglycemia symptom forms?"
label(data$random_hypoglycemia_complete)="Complete?"
label(data$spec_forms_age_rando)="Which form(s) did the participant fill out?"
label(data$time_rando_question)="Document the time when the questionnaire was given to the participant. "
label(data$document_the_time_point_th)="Document the time point the participant was given the questionnaire. (i.e. 160 minutes)"
label(data$shaky_rando_p)="Shaky"
label(data$fast_heart_rando_p)="Fast Heart Beat"
label(data$sweaty_rando_p)="Sweaty"
label(data$tired_not_sleep_rando_p)="Tired But Not Sleepy"
label(data$hungry_rando_p)="Hungry"
label(data$grumpy_unknown_p)="Grumpy But Not Sure Why"
label(data$rando_hypo_ques_total_ped)="Number of hypoglycemic symptoms"
label(data$shaky_rando_t)="Shaky"
label(data$fast_heart_rando_t)="Fast Heartbeat"
label(data$sweat_rando_t)="Sweaty"
label(data$tired_not_slep_rando_t)="Tired But Not Sleepy"
label(data$hunger_rando_t)="Hungry"
label(data$grumpy_unknown_rando_t)="Grumpy But Not Sure Why"
label(data$rando_hypo_ques_total_adol)="Number of hypoglycemic symptoms"
label(data$heart_pound_rando_t)="Heart Pounding"
label(data$shaky_trem_rando_t)="Shaky/Tremulous"
label(data$nerv_anx_rando_t)="Nervous/anxious"
label(data$sweaty_rando_t)="Sweaty"
label(data$hungry_rando_t)="Hungry"
label(data$tingling_rando_t)="Tingling"
label(data$diff_think_rando_t)="Difficulty Thinking"
label(data$tired_drowsy_rando_t)="Tired/Drowsy"
label(data$weak_rando_t)="Weak"
label(data$warm_rando_t)="Warm"
label(data$faint_rando_t)="Faint"
label(data$dizzy_rando_t)="Dizzy"
label(data$adrenergic_score_rando_t)="Adrenergic Score "
label(data$neuro_score_rando_t)="Neuroglycopenic Score"
label(data$total_score_rando_ques_t)="Total score"
label(data$heart_pound_rando_a)="Heart Pounding"
label(data$shaky_trem_rando_a)="Shaky/Tremulous"
label(data$nerv_anx_rando_a)="Nervous/Anxious"
label(data$sweat_rando_a)="Sweaty"
label(data$hungry_rando_a)="Hungry"
label(data$tingling_rando_a)="Tingling"
label(data$diff_think_rando_a)="Difficulty Thinking"
label(data$tired_drowsy_rando_a)="Tired/Drowsy"
label(data$weak_rando_a)="Weak"
label(data$warm_rando_a)="Warm"
label(data$faint_rando_a)="Faint"
label(data$dizzy_rando_a)="Dizzy"
label(data$adrenergic_score_rando_a)="Adrenergic Score "
label(data$neuro_score_rando_a)="Neuroglycopenic Score"
label(data$total_score_rando_ques_a)="Total score"
label(data$random_hypoglycemia_questionnaires_complete)="Complete?"
label(data$heart_pounding_baseline)="Heart Pounding @baseline"
label(data$shaky_tremulous_baseline)="Shaky/tremulous @baseline"
label(data$nervous_anxious_baseline)="Nervous/anxious @baseline"
label(data$sweaty_baseline)="Sweaty @baseline"
label(data$hungry_baseline)="Hungry @baseline"
label(data$tingling_baseline)="Tingling @baseline"
label(data$diff_thinking_baseline)="Difficulty Thinking @baseline"
label(data$tired_drowsy_baseline)="Tired/drowsy @baseline"
label(data$weak_baseline)="Weak @baseline"
label(data$warm_baseline)="Warm @baseline"
label(data$faint_baseline)="Faint @baseline"
label(data$dizzy_baseline)="Dizzy @baseline"
label(data$adren_score_baseline)="Adrenergic Score @baseline"
label(data$neuro_score_baseline)="Neuroglycopenic Score @baseline"
label(data$total_score_baseline)="Total Score @baseline"
label(data$heart_pounding_120)="Heart pounding @120"
label(data$shaky_tremulous_120)="Shaky/tremulous @120"
label(data$nervous_anxious_120)="Nervous/anxious @120"
label(data$sweaty_120)="Sweaty @120"
label(data$hungry_120)="Hungry @120"
label(data$tingling_120)="Tingling @120"
label(data$diff_thinking_120)="Difficulty Thinking @120"
label(data$tired_drowsy_120)="Tired/drowsy @120"
label(data$weak_120)="Weak @120"
label(data$warm_120)="Warm @120"
label(data$faint_120)="Faint @120"
label(data$dizzy_120)="Dizzy @120"
label(data$adren_score_120)="Adrenergic Score @120"
label(data$neuro_score_120)="Neuroglycopenic Score @120 "
label(data$total_score_120)="Total Score @120"
label(data$heart_pounding_150)="Heart Pounding @150"
label(data$shaky_tremulous_150)="Shaky/tremulous @150"
label(data$nervous_anxious_150)="Nervous/anxious @150"
label(data$sweaty_150)="Sweaty @150"
label(data$hungry_150)="Hungry @150"
label(data$tingling_150)="Tingling @150"
label(data$diff_thinking_150)="Difficulty Thinking @150"
label(data$tired_drowsy_150)="Tired/drowsy @150"
label(data$weak_150)="Weak @150"
label(data$warm_150)="Warm @150"
label(data$faint_150)="Faint @150"
label(data$dizzy_150)="Dizzy @150"
label(data$adren_score_150)="Adrenergic Score @150"
label(data$neuro_score_150)="Neuroglycopenic Score @150"
label(data$total_score_150)="Total Score @ 150"
label(data$heart_pounding_180)="Heart Pounding @180"
label(data$shaky_tremulous_180)="Shaky/tremulous @180"
label(data$nervous_anxious_180)="Nervous/anxious @180"
label(data$sweaty_180)="Sweaty @180"
label(data$hungry_180)="Hungry @180"
label(data$tingling_180)="Tingling @180"
label(data$diff_thinking_180)="Difficulty thinking @180"
label(data$tired_drowsy_180)="Tired/drowsy @180"
label(data$weak_180)="Weak @180"
label(data$warm_180)="Warm @180"
label(data$faint_180)="Faint @180"
label(data$dizzy_180)="Dizzy @180"
label(data$adren_score_180)="Adrenergic Score @180"
label(data$neuro_score_180)="Neuroglycopenic Score @180"
label(data$total_score_180)="Total Score @180"
label(data$ogtt_hypoglycemia_questionnaires_complete)="Complete?"
label(data$shaking_peds_base)="Shaky"
label(data$fast_heart_peds_base)="Fast Heart Beat"
label(data$sweating_peds_base)="Sweaty"
label(data$weak_peds_base)="Tired but not sleepy"
label(data$hunger_peds_base)="Hungry"
label(data$irritable_peds_base)="Grumpy but not sure why"
label(data$num_symptoms_base)="Number of Hypoglycemic Symptoms @Baseline"
label(data$shaking_peds_120)="Shaky"
label(data$fast_heart_peds_120)="Fast Heart Beat"
label(data$sweating_peds_120)="Sweaty"
label(data$weak_peds_120)="Tired but not sleepy"
label(data$hunger_peds_120)="Hungry"
label(data$irritable_peds_120)="Grumpy but not sure why"
label(data$num_symptoms_120)="Number of Symptoms @120"
label(data$shaking_peds_150)="Shaky"
label(data$fast_heart_peds_150)="Fast Heart Beat"
label(data$sweating_peds_150)="Sweaty"
label(data$weak_peds_150)="Tired but not sleepy"
label(data$hunger_peds_150)="Hungry"
label(data$irritable_peds_150)="Grumpy but not sure why"
label(data$num_symptoms_150)="Number of Symptoms @150"
label(data$shaking_peds_180)="Shaky"
label(data$fast_heart_peds_180)="Fast Heart Beat"
label(data$sweating_peds_180)="Sweaty"
label(data$weak_peds_180)="Tired but not sleepy"
label(data$hunger_peds_180)="Hungry"
label(data$irritable_peds_180)="Grumpy but not sure why"
label(data$num_symptoms_180)="Number of Symptoms @180"
label(data$ogtt_hypoglycemia_questionnaire_age_618_complete)="Complete?"
label(data$questionnaire_filled_out)="Questionnaire filled out?"
label(data$home_hypo_symptoms_yn)="Patient felt symptoms of hypoglycemia while wearing the CGM?"
label(data$date_of_hypoglycemia_event)="Date of hypoglycemia event"
label(data$time_of_hypoglycemia_event)="Time of Hypoglycemia event"
label(data$i_feel___0)="I felt this during hypoglycemia event... (choice=Heart pounding)"
label(data$i_feel___1)="I felt this during hypoglycemia event... (choice=Shaky)"
label(data$i_feel___2)="I felt this during hypoglycemia event... (choice=Nervous)"
label(data$i_feel___3)="I felt this during hypoglycemia event... (choice=Sweaty)"
label(data$i_feel___4)="I felt this during hypoglycemia event... (choice=Hungry)"
label(data$i_feel___5)="I felt this during hypoglycemia event... (choice=Tingling)"
label(data$i_feel___6)="I felt this during hypoglycemia event... (choice=Difficulty Thinking)"
label(data$i_feel___7)="I felt this during hypoglycemia event... (choice=Tired)"
label(data$i_feel___8)="I felt this during hypoglycemia event... (choice=Weak)"
label(data$i_feel___9)="I felt this during hypoglycemia event... (choice=Warm)"
label(data$i_feel___10)="I felt this during hypoglycemia event... (choice=Faint)"
label(data$i_feel___11)="I felt this during hypoglycemia event... (choice=Dizzy)"
label(data$other_hypoglycemia_feeling)="Other Hypoglycemia feeling..."
label(data$it_was_recognized_by)="It was recognized by..."
label(data$i_needed___0)="I needed this for my hypoglycemia event... (choice=Juice/food)"
label(data$i_needed___1)="I needed this for my hypoglycemia event... (choice=Help from someone else)"
label(data$i_needed___2)="I needed this for my hypoglycemia event... (choice=Nothing)"
label(data$juice_or_food)="If juice or food was taken, did it make you feel better?"
label(data$another_section_1)="Another home hypoglycemia section filled out?"
label(data$date_of_hypoglycemia_event_2)="Date of hypoglycemia event"
label(data$time_of_hypoglycemia_event_2)="Time of Hypoglycemia event"
label(data$i_feel_2___0)="I felt this during hypoglycemia event... (choice=Heart pounding)"
label(data$i_feel_2___1)="I felt this during hypoglycemia event... (choice=Shaky)"
label(data$i_feel_2___2)="I felt this during hypoglycemia event... (choice=Nervous)"
label(data$i_feel_2___3)="I felt this during hypoglycemia event... (choice=Sweaty)"
label(data$i_feel_2___4)="I felt this during hypoglycemia event... (choice=Hungry)"
label(data$i_feel_2___5)="I felt this during hypoglycemia event... (choice=Tingling)"
label(data$i_feel_2___6)="I felt this during hypoglycemia event... (choice=Difficulty Thinking)"
label(data$i_feel_2___7)="I felt this during hypoglycemia event... (choice=Tired)"
label(data$i_feel_2___8)="I felt this during hypoglycemia event... (choice=Weak)"
label(data$i_feel_2___9)="I felt this during hypoglycemia event... (choice=Warm)"
label(data$i_feel_2___10)="I felt this during hypoglycemia event... (choice=Faint)"
label(data$i_feel_2___11)="I felt this during hypoglycemia event... (choice=Dizzy)"
label(data$other_hypoglycemia_feeling_2)="Other Hypoglycemia feeling..."
label(data$it_was_recognized_by_2)="It was recognized by..."
label(data$i_needed_2___0)="I needed this for my hypoglycemia event... (choice=Juice/food)"
label(data$i_needed_2___1)="I needed this for my hypoglycemia event... (choice=Help from someone else)"
label(data$i_needed_2___2)="I needed this for my hypoglycemia event... (choice=Nothing)"
label(data$juice_or_food_2)="If juice or food was taken, did it make you feel better?"
label(data$another_section_2)="Third hypoglycemia section filled out?"
label(data$date_of_hypoglycemia_event_3)="Date of hypoglycemia event"
label(data$time_of_hypoglycemia_event_3)="Time of Hypoglycemia event"
label(data$i_feel_3___0)="I felt this during hypoglycemia event... (choice=Heart pounding)"
label(data$i_feel_3___1)="I felt this during hypoglycemia event... (choice=Shaky)"
label(data$i_feel_3___2)="I felt this during hypoglycemia event... (choice=Nervous)"
label(data$i_feel_3___3)="I felt this during hypoglycemia event... (choice=Sweaty)"
label(data$i_feel_3___4)="I felt this during hypoglycemia event... (choice=Hungry)"
label(data$i_feel_3___5)="I felt this during hypoglycemia event... (choice=Tingling)"
label(data$i_feel_3___6)="I felt this during hypoglycemia event... (choice=Difficulty Thinking)"
label(data$i_feel_3___7)="I felt this during hypoglycemia event... (choice=Tired)"
label(data$i_feel_3___8)="I felt this during hypoglycemia event... (choice=Weak)"
label(data$i_feel_3___9)="I felt this during hypoglycemia event... (choice=Warm)"
label(data$i_feel_3___10)="I felt this during hypoglycemia event... (choice=Faint)"
label(data$i_feel_3___11)="I felt this during hypoglycemia event... (choice=Dizzy)"
label(data$other_hypoglycemia_feeling_3)="Other Hypoglycemia feeling..."
label(data$it_was_recognized_by_3)="It was recognized by..."
label(data$i_needed_3___0)="I needed this for my hypoglycemia event... (choice=Juice/food)"
label(data$i_needed_3___1)="I needed this for my hypoglycemia event... (choice=Help from someone else)"
label(data$i_needed_3___2)="I needed this for my hypoglycemia event... (choice=Nothing)"
label(data$juice_or_food_3)="If juice or food was taken, did it make you feel better?"
label(data$another_section_3)="Fourth home hypoglycemia section filled out?"
label(data$date_of_hypoglycemia_event_4)="Date of hypoglycemia event"
label(data$time_of_hypoglycemia_event_4)="Time of Hypoglycemia event"
label(data$i_feel_4___0)="I felt this during hypoglycemia event... (choice=Heart pounding)"
label(data$i_feel_4___1)="I felt this during hypoglycemia event... (choice=Shaky)"
label(data$i_feel_4___2)="I felt this during hypoglycemia event... (choice=Nervous)"
label(data$i_feel_4___3)="I felt this during hypoglycemia event... (choice=Sweaty)"
label(data$i_feel_4___4)="I felt this during hypoglycemia event... (choice=Hungry)"
label(data$i_feel_4___5)="I felt this during hypoglycemia event... (choice=Tingling)"
label(data$i_feel_4___6)="I felt this during hypoglycemia event... (choice=Difficulty Thinking)"
label(data$i_feel_4___7)="I felt this during hypoglycemia event... (choice=Tired)"
label(data$i_feel_4___8)="I felt this during hypoglycemia event... (choice=Weak)"
label(data$i_feel_4___9)="I felt this during hypoglycemia event... (choice=Warm)"
label(data$i_feel_4___10)="I felt this during hypoglycemia event... (choice=Faint)"
label(data$i_feel_4___11)="I felt this during hypoglycemia event... (choice=Dizzy)"
label(data$other_hypoglycemia_feeling_4)="Other Hypoglycemia feeling..."
label(data$it_was_recognized_by_4)="It was recognized by..."
label(data$i_needed_4___0)="I needed this for my hypoglycemia event... (choice=Juice/food)"
label(data$i_needed_4___1)="I needed this for my hypoglycemia event... (choice=Help from someone else)"
label(data$i_needed_4___2)="I needed this for my hypoglycemia event... (choice=Nothing)"
label(data$juice_or_food_4)="If juice or food was taken, did it make you feel better?"
label(data$another_section_4)="Fifth home hypoglycemia section filled out?"
label(data$date_of_hypoglycemia_event_5)="Date of hypoglycemia event"
label(data$time_of_hypoglycemia_event_5)="Time of Hypoglycemia event"
label(data$i_feel_5___0)="I felt this during hypoglycemia event... (choice=Heart pounding)"
label(data$i_feel_5___1)="I felt this during hypoglycemia event... (choice=Shaky)"
label(data$i_feel_5___2)="I felt this during hypoglycemia event... (choice=Nervous)"
label(data$i_feel_5___3)="I felt this during hypoglycemia event... (choice=Sweaty)"
label(data$i_feel_5___4)="I felt this during hypoglycemia event... (choice=Hungry)"
label(data$i_feel_5___5)="I felt this during hypoglycemia event... (choice=Tingling)"
label(data$i_feel_5___6)="I felt this during hypoglycemia event... (choice=Difficulty Thinking)"
label(data$i_feel_5___7)="I felt this during hypoglycemia event... (choice=Tired)"
label(data$i_feel_5___8)="I felt this during hypoglycemia event... (choice=Weak)"
label(data$i_feel_5___9)="I felt this during hypoglycemia event... (choice=Warm)"
label(data$i_feel_5___10)="I felt this during hypoglycemia event... (choice=Faint)"
label(data$i_feel_5___11)="I felt this during hypoglycemia event... (choice=Dizzy)"
label(data$other_hypoglycemia_feeling_5)="Other Hypoglycemia feeling..."
label(data$it_was_recognized_by_5)="It was recognized by..."
label(data$i_needed_5___0)="I needed this for my hypoglycemia event... (choice=Juice/food)"
label(data$i_needed_5___1)="I needed this for my hypoglycemia event... (choice=Help from someone else)"
label(data$i_needed_5___2)="I needed this for my hypoglycemia event... (choice=Nothing)"
label(data$juice_or_food_5)="If juice or food was taken, did it make you feel better?"
label(data$another_section_5)="Sixth home hypoglycemia section filled out?"
label(data$date_of_hypoglycemia_event_6)="Date of hypoglycemia event"
label(data$time_of_hypoglycemia_event_6)="Time of Hypoglycemia event"
label(data$i_feel_6___0)="I felt this during hypoglycemia event... (choice=Heart pounding)"
label(data$i_feel_6___1)="I felt this during hypoglycemia event... (choice=Shaky)"
label(data$i_feel_6___2)="I felt this during hypoglycemia event... (choice=Nervous)"
label(data$i_feel_6___3)="I felt this during hypoglycemia event... (choice=Sweaty)"
label(data$i_feel_6___4)="I felt this during hypoglycemia event... (choice=Hungry)"
label(data$i_feel_6___5)="I felt this during hypoglycemia event... (choice=Tingling)"
label(data$i_feel_6___6)="I felt this during hypoglycemia event... (choice=Difficulty Thinking)"
label(data$i_feel_6___7)="I felt this during hypoglycemia event... (choice=Tired)"
label(data$i_feel_6___8)="I felt this during hypoglycemia event... (choice=Weak)"
label(data$i_feel_6___9)="I felt this during hypoglycemia event... (choice=Warm)"
label(data$i_feel_6___10)="I felt this during hypoglycemia event... (choice=Faint)"
label(data$i_feel_6___11)="I felt this during hypoglycemia event... (choice=Dizzy)"
label(data$other_hypoglycemia_feeling_6)="Other Hypoglycemia feeling..."
label(data$it_was_recognized_by_6)="It was recognized by..."
label(data$i_needed_6___0)="I needed this for my hypoglycemia event... (choice=Juice/food)"
label(data$i_needed_6___1)="I needed this for my hypoglycemia event... (choice=Help from someone else)"
label(data$i_needed_6___2)="I needed this for my hypoglycemia event... (choice=Nothing)"
label(data$juice_or_food_6)="If juice or food was taken, did it make you feel better?"
label(data$another_section_6)="Seventh home hypoglycemia section filled out?"
label(data$date_of_hypoglycemia_event_7)="Date of hypoglycemia event"
label(data$time_of_hypoglycemia_event_7)="Time of Hypoglycemia event"
label(data$i_feel_7___0)="I felt this during hypoglycemia event... (choice=Heart pounding)"
label(data$i_feel_7___1)="I felt this during hypoglycemia event... (choice=Shaky)"
label(data$i_feel_7___2)="I felt this during hypoglycemia event... (choice=Nervous)"
label(data$i_feel_7___3)="I felt this during hypoglycemia event... (choice=Sweaty)"
label(data$i_feel_7___4)="I felt this during hypoglycemia event... (choice=Hungry)"
label(data$i_feel_7___5)="I felt this during hypoglycemia event... (choice=Tingling)"
label(data$i_feel_7___6)="I felt this during hypoglycemia event... (choice=Difficulty Thinking)"
label(data$i_feel_7___7)="I felt this during hypoglycemia event... (choice=Tired)"
label(data$i_feel_7___8)="I felt this during hypoglycemia event... (choice=Weak)"
label(data$i_feel_7___9)="I felt this during hypoglycemia event... (choice=Warm)"
label(data$i_feel_7___10)="I felt this during hypoglycemia event... (choice=Faint)"
label(data$i_feel_7___11)="I felt this during hypoglycemia event... (choice=Dizzy)"
label(data$other_hypoglycemia_feeling_7)="Other Hypoglycemia feeling..."
label(data$it_was_recognized_by_7)="It was recognized by..."
label(data$i_needed_7___0)="I needed this for my hypoglycemia event... (choice=Juice/food)"
label(data$i_needed_7___1)="I needed this for my hypoglycemia event... (choice=Help from someone else)"
label(data$i_needed_7___2)="I needed this for my hypoglycemia event... (choice=Nothing)"
label(data$juice_or_food_7)="If juice or food was taken, did it make you feel better?"
label(data$another_section_7)="Eighth home hypoglycemia section filled out? "
label(data$date_of_hypoglycemia_event_8)="Date of hypoglycemia event"
label(data$time_of_hypoglycemia_event_8)="Time of Hypoglycemia event"
label(data$i_feel_8___0)="I felt this during hypoglycemia event... (choice=Heart pounding)"
label(data$i_feel_8___1)="I felt this during hypoglycemia event... (choice=Shaky)"
label(data$i_feel_8___2)="I felt this during hypoglycemia event... (choice=Nervous)"
label(data$i_feel_8___3)="I felt this during hypoglycemia event... (choice=Sweaty)"
label(data$i_feel_8___4)="I felt this during hypoglycemia event... (choice=Hungry)"
label(data$i_feel_8___5)="I felt this during hypoglycemia event... (choice=Tingling)"
label(data$i_feel_8___6)="I felt this during hypoglycemia event... (choice=Difficulty Thinking)"
label(data$i_feel_8___7)="I felt this during hypoglycemia event... (choice=Tired)"
label(data$i_feel_8___8)="I felt this during hypoglycemia event... (choice=Weak)"
label(data$i_feel_8___9)="I felt this during hypoglycemia event... (choice=Warm)"
label(data$i_feel_8___10)="I felt this during hypoglycemia event... (choice=Faint)"
label(data$i_feel_8___11)="I felt this during hypoglycemia event... (choice=Dizzy)"
label(data$other_hypoglycemia_feeling_8)="Other Hypoglycemia feeling..."
label(data$it_was_recognized_by_8)="It was recognized by..."
label(data$i_needed_8___0)="I needed this for my hypoglycemia event... (choice=Juice/food)"
label(data$i_needed_8___1)="I needed this for my hypoglycemia event... (choice=Help from someone else)"
label(data$i_needed_8___2)="I needed this for my hypoglycemia event... (choice=Nothing)"
label(data$juice_or_food_8)="If juice or food was taken, did it make you feel better?"
label(data$athome_hypoglycemia_questionnaire_complete)="Complete?"
label(data$child_home_completed)="Child home hypoglycemia form completed?"
label(data$child_home_hypo_symptoms)="Did the child feel symptoms of hypoglycemia?"
label(data$date_hypoglycemia_event)="Date of Hypoglycemia Event"
label(data$time_hypoglycemia_event)="Time of Hypoglycemia Event"
label(data$form_filled_out_by_who)="Form filled out by who?"
label(data$time_of_last_meal)="Time of last meal?"
label(data$symptoms_child_hypo___0)="Symptoms child hypoglycemia (choice=Shaky)"
label(data$symptoms_child_hypo___1)="Symptoms child hypoglycemia (choice=Fast Heartbeat)"
label(data$symptoms_child_hypo___2)="Symptoms child hypoglycemia (choice=Sweaty)"
label(data$symptoms_child_hypo___3)="Symptoms child hypoglycemia (choice=Tired but not Sleepy)"
label(data$symptoms_child_hypo___4)="Symptoms child hypoglycemia (choice=More Hungry than Usual)"
label(data$symptoms_child_hypo___5)="Symptoms child hypoglycemia (choice=Grumpy & dont know why)"
label(data$another_section_filled)="Another section child hypoglycemia filled out?"
label(data$date_hypoglycemia_event_2)="Date of Hypoglycemia Event"
label(data$time_hypoglycemia_event_2)="Time of Hypoglycemia Event"
label(data$form_filled_out_by_who_2)="Form filled out by who?"
label(data$time_of_last_meal_2)="Time of last meal?"
label(data$symptoms_child_hypo_2___0)="Symptoms child hypoglycemia (choice=Shaky)"
label(data$symptoms_child_hypo_2___1)="Symptoms child hypoglycemia (choice=Fast Heartbeat)"
label(data$symptoms_child_hypo_2___2)="Symptoms child hypoglycemia (choice=Sweaty)"
label(data$symptoms_child_hypo_2___3)="Symptoms child hypoglycemia (choice=Tired but not Sleepy)"
label(data$symptoms_child_hypo_2___4)="Symptoms child hypoglycemia (choice=More Hungry than Usual)"
label(data$symptoms_child_hypo_2___5)="Symptoms child hypoglycemia (choice=Grumpy & dont know why)"
label(data$third_section_filled_out)="Third section filled out?"
label(data$date_hypoglycemia_event_3)="Date of Hypoglycemia Event"
label(data$time_hypoglycemia_event_3)="Time of Hypoglycemia Event"
label(data$form_filled_out_by_who_3)="Form filled out by who?"
label(data$time_of_last_meal_3)="Time of last meal?"
label(data$symptoms_child_hypo_3___0)="Symptoms child hypoglycemia (choice=Shaky)"
label(data$symptoms_child_hypo_3___1)="Symptoms child hypoglycemia (choice=Fast Heartbeat)"
label(data$symptoms_child_hypo_3___2)="Symptoms child hypoglycemia (choice=Sweaty)"
label(data$symptoms_child_hypo_3___3)="Symptoms child hypoglycemia (choice=Tired but not Sleepy)"
label(data$symptoms_child_hypo_3___4)="Symptoms child hypoglycemia (choice=More Hungry than Usual)"
label(data$symptoms_child_hypo_3___5)="Symptoms child hypoglycemia (choice=Grumpy & dont know why)"
label(data$fourth_section_filled)="Fourth section filled out?"
label(data$date_hypoglycemia_event_4)="Date of Hypoglycemia Event"
label(data$time_hypoglycemia_event_4)="Time of Hypoglycemia Event"
label(data$form_filled_out_by_who_4)="Form filled out by who?"
label(data$time_of_last_meal_4)="Time of last meal?"
label(data$symptoms_child_hypo_4___0)="Symptoms child hypoglycemia (choice=Shaky)"
label(data$symptoms_child_hypo_4___1)="Symptoms child hypoglycemia (choice=Fast Heartbeat)"
label(data$symptoms_child_hypo_4___2)="Symptoms child hypoglycemia (choice=Sweaty)"
label(data$symptoms_child_hypo_4___3)="Symptoms child hypoglycemia (choice=Tired but not Sleepy)"
label(data$symptoms_child_hypo_4___4)="Symptoms child hypoglycemia (choice=More Hungry than Usual)"
label(data$symptoms_child_hypo_4___5)="Symptoms child hypoglycemia (choice=Grumpy & dont know why)"
label(data$fifth_section_filled)="Fifth section filled out?"
label(data$date_hypoglycemia_event_5)="Date of Hypoglycemia Event"
label(data$time_hypoglycemia_event_5)="Time of Hypoglycemia Event"
label(data$form_filled_out_by_who_5)="Form filled out by who?"
label(data$time_of_last_meal_5)="Time of last meal?"
label(data$symptoms_child_hypo_5___0)="Symptoms child hypoglycemia (choice=Shaky)"
label(data$symptoms_child_hypo_5___1)="Symptoms child hypoglycemia (choice=Fast Heartbeat)"
label(data$symptoms_child_hypo_5___2)="Symptoms child hypoglycemia (choice=Sweaty)"
label(data$symptoms_child_hypo_5___3)="Symptoms child hypoglycemia (choice=Tired but not Sleepy)"
label(data$symptoms_child_hypo_5___4)="Symptoms child hypoglycemia (choice=More Hungry than Usual)"
label(data$symptoms_child_hypo_5___5)="Symptoms child hypoglycemia (choice=Grumpy & dont know why)"
label(data$sixth_section_filled)="Sixth section filled out?"
label(data$date_hypoglycemia_event_6)="Date of Hypoglycemia Event"
label(data$time_hypoglycemia_event_6)="Time of Hypoglycemia Event"
label(data$form_filled_out_by_who_6)="Form filled out by who?"
label(data$time_of_last_meal_6)="Time of last meal?"
label(data$symptoms_child_hypo_6___0)="Symptoms child hypoglycemia (choice=Shaky)"
label(data$symptoms_child_hypo_6___1)="Symptoms child hypoglycemia (choice=Fast Heartbeat)"
label(data$symptoms_child_hypo_6___2)="Symptoms child hypoglycemia (choice=Sweaty)"
label(data$symptoms_child_hypo_6___3)="Symptoms child hypoglycemia (choice=Tired but not Sleepy)"
label(data$symptoms_child_hypo_6___4)="Symptoms child hypoglycemia (choice=More Hungry than Usual)"
label(data$symptoms_child_hypo_6___5)="Symptoms child hypoglycemia (choice=Grumpy & dont know why)"
label(data$seventh_section_filled)="Seventh section filled out?"
label(data$date_hypoglycemia_event_7)="Date of Hypoglycemia Event"
label(data$time_hypoglycemia_event_7)="Time of Hypoglycemia Event"
label(data$form_filled_out_by_who_7)="Form filled out by who?"
label(data$time_of_last_meal_7)="Time of last meal?"
label(data$symptoms_child_hypo_7___0)="Symptoms child hypoglycemia (choice=Shaky)"
label(data$symptoms_child_hypo_7___1)="Symptoms child hypoglycemia (choice=Fast Heartbeat)"
label(data$symptoms_child_hypo_7___2)="Symptoms child hypoglycemia (choice=Sweaty)"
label(data$symptoms_child_hypo_7___3)="Symptoms child hypoglycemia (choice=Tired but not Sleepy)"
label(data$symptoms_child_hypo_7___4)="Symptoms child hypoglycemia (choice=More Hungry than Usual)"
label(data$symptoms_child_hypo_7___5)="Symptoms child hypoglycemia (choice=Grumpy & dont know why)"
label(data$eighth_section_filled)="Eighth section filled out?"
label(data$date_hypoglycemia_event_8)="Date of Hypoglycemia Event"
label(data$time_hypoglycemia_event_8)="Time of Hypoglycemia Event"
label(data$form_filled_out_by_who_8)="Form filled out by who?"
label(data$time_of_last_meal_8)="Time of last meal?"
label(data$symptoms_child_hypo_8___0)="Symptoms child hypoglycemia (choice=Shaky)"
label(data$symptoms_child_hypo_8___1)="Symptoms child hypoglycemia (choice=Fast Heartbeat)"
label(data$symptoms_child_hypo_8___2)="Symptoms child hypoglycemia (choice=Sweaty)"
label(data$symptoms_child_hypo_8___3)="Symptoms child hypoglycemia (choice=Tired but not Sleepy)"
label(data$symptoms_child_hypo_8___4)="Symptoms child hypoglycemia (choice=More Hungry than Usual)"
label(data$symptoms_child_hypo_8___5)="Symptoms child hypoglycemia (choice=Grumpy & dont know why)"
label(data$athome_child_hypoglycemia_questionnaire_complete)="Complete?"
label(data$pft_yes_no)="Did the subject have pulmonary function tests completed in the last year? "
label(data$date_fev1)="date of most recent FEV 1 in last year"
label(data$home_pft_yn)="Were the PFTs done at home?"
label(data$fev1)="FEV1 %"
label(data$fev1_l)="FEV1 (L)"
label(data$fvc)="FVC (%)"
label(data$fvc_l)="FVC (L) "
label(data$fev1_fvc)="FEV1/FVC %"
label(data$fev_25_75)="FEF 25-75%"
label(data$comments_pft_1)="comments PFT "
label(data$pulmonary_function_complete)="Complete?"
label(data$ae_occur)="Did an AE occur?"
label(data$ae_initials)="Subject Initials"
label(data$ae_description)="Adverse event description"
label(data$ae_start_date)="Date of start of AE"
label(data$ae_end_date)="Date of end of AE"
label(data$ae_severity)="severity of AE"
label(data$action_taken)="action taken AE"
label(data$ae_outcome)="outcome of AE "
label(data$ae_relation_to_study)="Relation to study AE"
label(data$ae_serious)="Is AE a serious adverse event?"
label(data$invest_sign_date)="Investigator Signature Date"
label(data$adverse_event_log_complete)="Complete?"
label(data$y_n_protocol_dev)="Was there a protocol deviation? "
label(data$deviation_type)="Deviation Type:"
label(data$other_dev_explain)="Other:"
label(data$timing_of_deviation)="Timing of deviation"
label(data$dev_id_by)="Deviation identified by:"
label(data$protocol_dev_identified_by)="Identified by other:"
label(data$details_of_the_dev)="Provide details of the deviation:"
label(data$deviation_result_ae)="Did the deviation result in an AE occuring?"
label(data$steps_resolve_dev)="Explain the steps taken to resolve the deviation:"
label(data$second_protocol_dev)="Was there a second protocol deviation? "
label(data$deviation_type_2)="Deviation Type:"
label(data$other_dev_explain_2)="Other:"
label(data$timing_of_deviation_2)="Timing of deviation"
label(data$dev_id_by_2)="Deviation identified by:"
label(data$protocol_dev_identified_by_2)="Identified by other:"
label(data$details_of_the_dev_2)="Provide details of the deviation:"
label(data$deviation_result_ae_2)="Did the deviation result in an AE occuring?"
label(data$steps_resolve_dev_2)="Explain the steps taken to resolve the deviation:"
label(data$third_protocol_dev)="Was there a third protocol deviation?"
label(data$deviation_type_3)="Deviation Type:"
label(data$other_dev_explain_3)="Other:"
label(data$timing_of_deviation_3)="Timing of deviation"
label(data$dev_id_by_3)="Deviation identified by:"
label(data$protocol_dev_identified_by_3)="Identified by other:"
label(data$details_of_the_dev_3)="Provide details of the deviation:"
label(data$deviation_result_ae_3)="Did the deviation result in an AE occuring?"
label(data$steps_resolve_dev_3)="Explain the steps taken to resolve the deviation:"
label(data$fourth_protocol_dev)="Was there a fourth protocol deviation?"
label(data$deviation_type_4)="Deviation Type:"
label(data$other_dev_explain_4)="Other:"
label(data$timing_of_deviation_4)="Timing of deviation"
label(data$dev_id_by_4)="Deviation identified by:"
label(data$protocol_dev_identified_by_4)="Identified by other:"
label(data$details_of_the_dev_4)="Provide details of the deviation:"
label(data$deviation_result_ae_4)="Did the deviation result in an AE occuring?"
label(data$steps_resolve_dev_4)="Explain the steps taken to resolve the deviation:"
label(data$protocol_deviation_complete)="Complete?"
label(data$agreed_to_cgm)="Agreed to CGM"
label(data$date_cgm_placement)="Date of CGM Placement"
label(data$expiration_date)="Expiration Date"
label(data$lot_number)="Lot number"
label(data$sensor_serial_issues)="sensor inserted - serial number"
label(data$time_of_insertion)="Time of insertion"
label(data$cgm_placement_site)="CGM placement site"
label(data$cgm_instructions___1)="sensor instruction- given to subject or parent/guardian if subject is a minor (choice=freestyle libre CGM instructions)"
label(data$cgm_instructions___2)="sensor instruction- given to subject or parent/guardian if subject is a minor (choice=FedEx materials needed to send back the Freestyle Libre sensor)"
label(data$cgm_instructions___3)="sensor instruction- given to subject or parent/guardian if subject is a minor (choice=reviewed CGM instructions including duration of wear of 10 days or less)"
label(data$cgm_uploaded)="Sensor data uploaded"
label(data$sensor_raw_data_upload)="Sensor Raw Data Upload"
label(data$replace_cgm)="Did participant wear a replacement/second CGM?"
label(data$replace_cgm_doc_info)="Document all known information regarding the CGM- (expiration date, date of placement, serial number, lot number, placement site, etc.)"
label(data$replacement_cgm_raw_data_upload)="Replacement CGM Raw Data Upload "
label(data$cgm_data_success_failure)="CGM Data collected"
label(data$cgm_gaps_filled_in)="CGM Data Gaps Filled In?"
label(data$num_days_good_data)="Number of Days of Good Data"
label(data$day_night_sensor_ratio)="Day to Night sensor ratio"
label(data$percent_cgm_wear)="Percent of  good CGM wear"
label(data$total_sensor_readings)="Total Sensor Readings"
label(data$average_sensor)="[agreed_to_cgm] = 1"
label(data$standard_deviation)="Standard Deviation"
label(data$min_sensor)="Minimum Sensor Reading"
label(data$max_sensor)="Maximum Sensor Reading"
label(data$q1_sensor)="First Quartile Sensor Glucose"
label(data$median_sensor)="Median Sensor Glucose"
label(data$q3_sensor)="Third Quartile Sensor Glucose"
label(data$estimated_a1c)="Estimated A1C"
label(data$excursions_over_120)="Excursions over 120"
label(data$min_spent_over_120)="Time Spent Over 120"
label(data$percent_time_over_120)="Percent of Time Over 120"
label(data$excursions_over_140)="Excursions Over 140"
label(data$min_spent_over_140)="Time Spent Over 140"
label(data$avg_excur_over_140_per_day)="Average amount of Excursions over 140 per day"
label(data$percent_time_over_140)="Percent of Time Over 140"
label(data$excursions_over_180)="Excursions over 180"
label(data$min_spent_over_180)="Time Spent Over 180"
label(data$percent_time_over_180)="Percent Time Spent Over 180"
label(data$percent_time_over_180_day)="Percent of time over 180 during the day "
label(data$percent_time_over_180_night)="Percent of time over 180 during the night "
label(data$min_spent_over_180_day)="Minutes spent over 180 during the day"
label(data$min_spent_over_180_night)="Minutes spent over 180 during the night "
label(data$excursions_over_200)="Excursions Over 200"
label(data$min_spent_over_200)="Time Spent Over 200"
label(data$percent_time_over_200)="Percent of Time Spent over 200"
label(data$percent_time_over_200_day)="Percent of time over 200 during the day "
label(data$percent_time_over_200_night)="Percent of time spent over 200 during the night "
label(data$avg_excur_over_200_per_day)="Average Excursions over 200 per day"
label(data$min_spent_over_200_day)="Minutes spent over 200 during the day "
label(data$min_spent_over_200_night)="Minutes spent over 200 during the night"
label(data$excursions_over_250)="Excursions over 250"
label(data$min_spent_over_250)="Time spent over 250"
label(data$percent_time_over_250)="Percent time over 250 "
label(data$min_spent_over_250_day)="Minutes spent over 250 during the day"
label(data$min_spent_over_250_night)="Minutes spent over 250 during the night"
label(data$percent_time_over_250_day)="Percent of time over 250 during the day "
label(data$percent_time_over_250_night)="Percent of time over 250 during the night "
label(data$excursions_under_54)="Excursions Under 54"
label(data$min_spent_under_54)="Time spent under 54"
label(data$percent_time_under_54)="Percent  of Time Under 54"
label(data$percent_time_under_54_day)="Percent of time under 54 during the day"
label(data$percent_time_under_54_night)="Percent of time spent under 54 during the night "
label(data$min_spent_under_54_day)="Minutes spent under 54 during the day "
label(data$min_spent_under_54_night)="Minutes spent under 54 during the night"
label(data$excursions_under_60)="Excursions Under 60"
label(data$min_spent_under_60)="Time spent under 60"
label(data$percent_time_under_60)="Percent of Time Under 60"
label(data$percent_time_under_60_day)="Percent of time under 60 during the day"
label(data$percent_time_under_60_night)="Percent of time spent under 60 during the night "
label(data$min_spent_under_60_day)="Minutes spent under 60 during the day"
label(data$min_spent_under_60_night)="Minutes spent under 60 during the night "
label(data$excursions_under_70)="Excursions Under 70"
label(data$min_spent_under_70)="Time spent under 70 "
label(data$percent_time_under_70)="Percent Time Spent Under 70"
label(data$percent_time_under_70_day)="Percent of time spent under 70 during the day "
label(data$percent_time_under_70_night)="Percent of time spent under 70 during the night"
label(data$min_spent_under_70_day)="Minutes spent under 70 during the day "
label(data$min_spent_under_70_night)="Minutes spent under 70 during the night"
label(data$min_spent_70_180)="Minutes spent between 70 and 180"
label(data$min_spent_70_180_day)="Minutes spent between 70 and 180 during the day"
label(data$min_spent_70_180_night)="Minutes spent between 70 and 180 during the night "
label(data$percent_time_70_180)="Percent of time between 70 and 80"
label(data$percent_time_70_180_day)="Percent of time between 70 and 180 during the day "
label(data$percent_time_70_180_night)="Percent of time between 70 and 180 during the night "
label(data$daytime_auc)="Daytime Area Under the Curve"
label(data$daytime_avg_sensor_glucose)="Daytime Average Sensor Glucose"
label(data$daytime_min_sensor_glucose)="Daytime Minimum Sensor Glucose"
label(data$daytime_max_sensor_glucose)="Daytime Maximum Sensor Glucose"
label(data$daytime_sd)="Daytime Standard Deviation"
label(data$nighttime_auc)="Nighttime Area Under the Curve"
label(data$nighttime_avg_sens_glucose)="Nighttime Average Sensor Glucose"
label(data$nighttime_min_sens_glucose)="Nighttime Minimum Sensor Glucose"
label(data$nighttime_max_sens_glucose)="Nighttime Maximum Sensor Glucose"
label(data$nighttime_sd)="Nighttime Standard Deviation"
label(data$auc_over_180)="Area Under the Curve Greater than 180"
label(data$average_auc_180)="Average Area Under the Curve Greater than 180"
label(data$total_auc)="Total Area Under the Curve"
label(data$average_auc_per_day)="Average Area Under the Curve per Day"
label(data$r_mage)="R MAGE"
label(data$j_index)="J-Index"
label(data$lbgi)="Low blood glucose index"
label(data$hbgi)="High Blood Glucose Index"
label(data$conga_1)="Continuous Overall Net Glycemic Action"
label(data$modd)="Mean of Daily Difference "
label(data$gmi)="Glucose Management Indicator"
label(data$mean_absolute_glucose)="Mean Absolute Glucose"
label(data$cv)="Coefficient of variation"
label(data$interquartile_range)="Interquartile Range"
label(data$notes)="Notes"
label(data$cgm_data_complete)="Complete?"
label(data$patient_undergo_dexa)="Did the participant undergo a DXA scan?"
label(data$date_of_dxa)="Date of DXA"
label(data$height_dxa_cm)="height day of DXA  (can be the same as in vitals)"
label(data$height_m)="Height in meters"
label(data$make_of_dxa_machine)="Make  of DXA machine"
label(data$model_of_dxa_machine)="Model of DXA machine"
label(data$software_of_dxa)="Software of DXA"
label(data$tissue_g)="Tissue (g)"
label(data$total_fat_mass)="Total Fat Mass (%)"
label(data$fat_g)="Fat Body Mass (g)"
label(data$fat_free_g)="Fat Free Mass (g)"
label(data$lean_mass_g)="Lean Body Mass (g)"
label(data$total_mass_kg)="Total Mass (kg)"
label(data$fat_free_mass)="Fat Free Mass %"
label(data$fat_mass_index)="Fat Mass Index (FMI) "
label(data$lbm_fm)="Lean body mass/fat mass (LBM/FM)"
label(data$fat_free_mass_index_fat_fr)="Fat Free Mass Index  (FFMI)"
label(data$lbmi)="Lean Body Mass Index (LBMI)"
label(data$bmd_z_score)="BMD Total z-score"
label(data$bmd_z_score_subtotal)="BMD Subtotal z-score"
label(data$dxa_data_upload)="Upload any DXA forms here"
label(data$dexa_notes)="Was there anything to note regarding the DXA scan?"
label(data$dxa_data_complete)="Complete?"
label(data$dxa_fmi_calculated_z_score)="DXA FMI calculated z-score"
label(data$dxa_lbmi_calc_z_score)="DXA LBMI calculated z-score"
label(data$dxa_zscore_complete)="Complete?"
label(data$glucose_ran_lab)="Glucose results ran from which lab?"
label(data$sample_issues)="Were there issues with samples?"
label(data$detail_sample_issues)="Please explain the issue with the samples in the most detail you can."
label(data$sample_obtained_0_min)="Was a sample obtained from time point 0 minute/baseline?"
label(data$timepoint_0_min)="Time point- 0 minute/baseline"
label(data$sample_obtained_10_min)="Was a sample obtained from the 10 minute time point?"
label(data$timepoint_10_min)="Time point- 10 minutes"
label(data$sample_obtained_30_min)="Was a sample obtained from the 30 minute time point?"
label(data$timepoint_30_min)="Time point- 30 minutes"
label(data$sample_obtained_60_min)="Was a sample obtained from the 60 minute time point?"
label(data$timepoint_60_min)="Time point- 60 minutes"
label(data$sample_obtained_90_min)="Was a sample obtained from the 90 minute time point?"
label(data$timepoint_90_min)="Time point- 90 minutes"
label(data$sample_obtained_120_min)="Was a sample obtained from the 120 minute time point?"
label(data$timepoint_120_min)="Time point- 120 minutes"
label(data$sample_obtained_150_min)="Was a sample obtained from the 150 minute time point?"
label(data$timepoint_150_min)="Time point- 150 minutes"
label(data$sample_obtained_180_min)="Was a sample obtained from the 180 minute time point?"
label(data$timepoint_180_min)="Time point- 180 minutes"
label(data$ogtt_patient_results_complete)="Complete?"
label(data$did_the_participant_redo_t)="Did the participant return to repeat visit 1? "
label(data$participant_withdrawn_v0)="Participant Withdrawn?"
label(data$reason_permanent_withdrawal_v0)="Reason for Permanent Withdrawal "
label(data$reason_temporary_withdrawal_v0)="Reason for Temporary Withdrawal"
label(data$date_of_birth_v0)="Date of Birth"
label(data$sex_v0)="Sex"
label(data$ethnicity_v0)="Ethnicity"
label(data$origin_race_v0)="Ethnic Origin/Race"
label(data$date_of_chart_review_v0)="Date of Chart Review"
label(data$cftr_genotype_available_in_v0)="CFTR genotype available in medical record?"
label(data$cftr_mutation_1_v0)="CFTR Mutation 1"
label(data$other_cftr_mutation_1_v0)="Other CFTR Mutation 1"
label(data$type_of_mutation_1_v0)="Type of Mutation 1"
label(data$cftr_mutation_2_v0)="CFTR Mutation 2"
label(data$other_cftr_mutation_2_v0)="Other CFTR Mutation 2"
label(data$type_of_mutation_2_v0)="Type of Mutation 2"
label(data$mutation_category_v0)="Mutation Category"
label(data$new_born_screen_v0)="New Born Screen positive for CF"
label(data$date_of_cf_diagnosis_v0)="Date of CF Diagnosis"
label(data$sweat_chloride_test_v0)="Sweat Chloride Test"
label(data$sweat_chloride_value_v0)="Sweat Chloride Value"
label(data$sweat_test_date_v0)="Sweat Test Date"
label(data$pancreatic_status_v0)="Pancreatic Status"
label(data$most_recent_sputum_culture_v0___1)="Most Recent Sputum Culture  (choice=Negative)"
label(data$most_recent_sputum_culture_v0___2)="Most Recent Sputum Culture  (choice=MSSA)"
label(data$most_recent_sputum_culture_v0___3)="Most Recent Sputum Culture  (choice=MRSA)"
label(data$most_recent_sputum_culture_v0___4)="Most Recent Sputum Culture  (choice=pseudomonas)"
label(data$most_recent_sputum_culture_v0___5)="Most Recent Sputum Culture  (choice=mucoid pseudomonas)"
label(data$most_recent_sputum_culture_v0___6)="Most Recent Sputum Culture  (choice=B. Cepacia)"
label(data$most_recent_sputum_culture_v0___7)="Most Recent Sputum Culture  (choice=Other Burkholderia species)"
label(data$most_recent_sputum_culture_v0___8)="Most Recent Sputum Culture  (choice=Other)"
label(data$recent_other_sputum_v0)="Other (most recent sputum)"
label(data$sputum_culture_year_v0___1)="Sputum Culture (last 12 months excluding most recent) (choice=Negative)"
label(data$sputum_culture_year_v0___2)="Sputum Culture (last 12 months excluding most recent) (choice=MSSA)"
label(data$sputum_culture_year_v0___3)="Sputum Culture (last 12 months excluding most recent) (choice=MRSA)"
label(data$sputum_culture_year_v0___4)="Sputum Culture (last 12 months excluding most recent) (choice=pseudomonas)"
label(data$sputum_culture_year_v0___5)="Sputum Culture (last 12 months excluding most recent) (choice=mucoid pseudomonas)"
label(data$sputum_culture_year_v0___6)="Sputum Culture (last 12 months excluding most recent) (choice=B. Cepacia)"
label(data$sputum_culture_year_v0___7)="Sputum Culture (last 12 months excluding most recent) (choice=Other Burkholderia species)"
label(data$sputum_culture_year_v0___8)="Sputum Culture (last 12 months excluding most recent) (choice=Other)"
label(data$sputum_other_v0)="Other (specify) "
label(data$liver_disease_v0)="Liver disease"
label(data$num_hospitalizations_v0)="Number of hospitalizations for pulmonary exacerbation in past 12 months"
label(data$corrector_yes_no_v0)="Is the subject on a corrector/potentiator medication? (any medication including some combination of ivacaftor, lumacaftor, tezcaftor, symdeko, kalydeco, orkambi)"
label(data$corrector_start_date_v0)="Corrector Start Date"
label(data$corrector_v0___1)="What corrector/potentiator is the subject taking (choice=ivacaftor (Kalydeco))"
label(data$corrector_v0___2)="What corrector/potentiator is the subject taking (choice=ivacaftor/lumacaftor (orkambi))"
label(data$corrector_v0___3)="What corrector/potentiator is the subject taking (choice=tezacaftor/ivacaftor (symdeko))"
label(data$corrector_v0___4)="What corrector/potentiator is the subject taking (choice=triple therapy (ivacaftor + 2 other drugs))"
label(data$corrector_v0___5)="What corrector/potentiator is the subject taking (choice=other)"
label(data$cf_corrector_other_v0)="Other (specify)"
label(data$family_history_diabetes_v0)="Family History of Diabetes"
label(data$relative_with_diabetes_v0___1)="Relative with Diabetes (choice=First Degree (mother, father, sibling, child))"
label(data$relative_with_diabetes_v0___2)="Relative with Diabetes (choice=Second Degree (grandparent, uncle, aunt, half-sibling))"
label(data$relative_with_diabetes_v0___3)="Relative with Diabetes (choice=Other)"
label(data$relative_with_diabetes_v0___4)="Relative with Diabetes (choice=Unknown)"
label(data$diabetes_hisotry_type_v0___1)="Diabetes History type  (choice=Type 1)"
label(data$diabetes_hisotry_type_v0___2)="Diabetes History type  (choice=Type 2)"
label(data$diabetes_hisotry_type_v0___3)="Diabetes History type  (choice=Other)"
label(data$diabetes_hisotry_type_v0___4)="Diabetes History type  (choice=Unknown)"
label(data$notes_family_member_v0)="Notes (family member specifics, etc) "
label(data$chart_review_notes_v0)="Chart Review Notes"
label(data$demographics_and_cf_history_repeat_visit_1_complete)="Complete?"
label(data$antibiotics_v0___1)="Antibiotics (choice=Azithromycin)"
label(data$antibiotics_v0___2)="Antibiotics (choice=Azithromycin +1)"
label(data$antibiotics_v0___3)="Antibiotics (choice=Azithromycin +2 or more)"
label(data$antibiotics_v0___4)="Antibiotics (choice=No antibiotics)"
label(data$antibiotics_v0___5)="Antibiotics (choice=Other)"
label(data$inhaled_steroids_v0)="Inhaled Steroids"
label(data$patient_using_flonase_v0)="Is the patient using Flonase nasal spray (fluticasone)?"
label(data$inhaled_beta_agonist_v0)="Inhaled beta agonist  (ie: inhaled albuterol or salmeterol)"
label(data$pancreatic_enzyme_therapy_v0)="Pancreatic Enzyme Therapy (PERT) "
label(data$systemic_steroid_therapy_v0___1)="Systemic Steroid Therapy  (choice=Prednisone Daily)"
label(data$systemic_steroid_therapy_v0___2)="Systemic Steroid Therapy  (choice=Prednisone Every Other Day)"
label(data$systemic_steroid_therapy_v0___3)="Systemic Steroid Therapy  (choice=Dexamethasone Daily)"
label(data$systemic_steroid_therapy_v0___4)="Systemic Steroid Therapy  (choice=Oral Hydrocortisone Daily)"
label(data$systemic_steroid_therapy_v0___5)="Systemic Steroid Therapy  (choice=Methylprednisone IV (any frequency))"
label(data$systemic_steroid_therapy_v0___6)="Systemic Steroid Therapy  (choice=No systemic steroid therapy)"
label(data$cf_multivitamins_aquadeks_v0)="CF multivitamins (aquaDEKS, DEKA, etc.)"
label(data$vitamin_d_in_addition_to_m_v0)="Vitamin D (in addition to multivitamin)"
label(data$high_dose_ibuprofen_v0)="Ibuprofen"
label(data$inhaled_antibiotics_v0)="Inhaled antibiotics  (aztreonam: (cayston, aztreonam inhaled solution), tobramycin (tobi, tobramycin inhaled, tobi podhaler))"
label(data$ursodiol_v0)="Ursodiol"
label(data$gen_1_atyp_antipsych_v0___0)="Are they on any of these first generation Atypical Anti-psychotics? (choice=None)"
label(data$gen_1_atyp_antipsych_v0___1)="Are they on any of these first generation Atypical Anti-psychotics? (choice=Chlorpromazine)"
label(data$gen_1_atyp_antipsych_v0___2)="Are they on any of these first generation Atypical Anti-psychotics? (choice=Fluphenazine)"
label(data$gen_1_atyp_antipsych_v0___3)="Are they on any of these first generation Atypical Anti-psychotics? (choice=Haloperidol)"
label(data$gen_1_atyp_antipsych_v0___4)="Are they on any of these first generation Atypical Anti-psychotics? (choice=Loxapine)"
label(data$gen_1_atyp_antipsych_v0___5)="Are they on any of these first generation Atypical Anti-psychotics? (choice=Perphenazine)"
label(data$gen_1_atyp_antipsych_v0___6)="Are they on any of these first generation Atypical Anti-psychotics? (choice=Pimozide)"
label(data$gen_1_atyp_antipsych_v0___7)="Are they on any of these first generation Atypical Anti-psychotics? (choice=Thioridazine)"
label(data$gen_1_atyp_antipsych_v0___8)="Are they on any of these first generation Atypical Anti-psychotics? (choice=Thiothixene)"
label(data$gen_1_atyp_antipsych_v0___9)="Are they on any of these first generation Atypical Anti-psychotics? (choice=Trifluoperazine)"
label(data$gen_2_atyp_antipsych_v0___0)="Are they on any of these second generation Atypical Anti-psychotics?  (choice=None)"
label(data$gen_2_atyp_antipsych_v0___1)="Are they on any of these second generation Atypical Anti-psychotics?  (choice=Aripiprazole)"
label(data$gen_2_atyp_antipsych_v0___2)="Are they on any of these second generation Atypical Anti-psychotics?  (choice=Asenapine)"
label(data$gen_2_atyp_antipsych_v0___3)="Are they on any of these second generation Atypical Anti-psychotics?  (choice=Brexpiprazole)"
label(data$gen_2_atyp_antipsych_v0___4)="Are they on any of these second generation Atypical Anti-psychotics?  (choice=Cariprazine)"
label(data$gen_2_atyp_antipsych_v0___5)="Are they on any of these second generation Atypical Anti-psychotics?  (choice=Clozapine (Clozaril; FazaClo; Versacloz))"
label(data$gen_2_atyp_antipsych_v0___6)="Are they on any of these second generation Atypical Anti-psychotics?  (choice=Iloperidone)"
label(data$gen_2_atyp_antipsych_v0___7)="Are they on any of these second generation Atypical Anti-psychotics?  (choice=Lurasidone)"
label(data$gen_2_atyp_antipsych_v0___8)="Are they on any of these second generation Atypical Anti-psychotics?  (choice=Olanzapine (Zyprexa (all formulations)))"
label(data$gen_2_atyp_antipsych_v0___9)="Are they on any of these second generation Atypical Anti-psychotics?  (choice=Paliperidone)"
label(data$gen_2_atyp_antipsych_v0___10)="Are they on any of these second generation Atypical Anti-psychotics?  (choice=Pimavanserin)"
label(data$gen_2_atyp_antipsych_v0___11)="Are they on any of these second generation Atypical Anti-psychotics?  (choice=Quetiapine (Seroquel (all formulations)))"
label(data$gen_2_atyp_antipsych_v0___12)="Are they on any of these second generation Atypical Anti-psychotics?  (choice=Risperidone (Risperdal (all formulations)))"
label(data$gen_2_atyp_antipsych_v0___13)="Are they on any of these second generation Atypical Anti-psychotics?  (choice=Ziprasidone)"
label(data$medication_notes_v0)="Medication Notes: (Any immunosupressants, anti-inflammatory medications?)  "
label(data$current_medications_repeat_visit_1_complete)="Complete?"
label(data$date_visit_v0)="Date of visit"
label(data$age_visit_v0)="Age at visit:"
label(data$cf_yes_no_inclusion_v0)="Clinical diagnosis of Cystic Fibrosis (by newborn screen, sweat chloride >60, or genetic testing)"
label(data$age_6_yes_no_inclusion_v0)="Age 6.0 years or older (at time of consent)"
label(data$clin_stable_yes_no_inclusion_v0)="Clinically stable last 3 weeks (no major clinical events such as pulmonary exacerbations requiring IV antibiotics either at home or in hospital, no initiation of oral steroid therapy)"
label(data$other_diabetes_yes_no_v0)="Diagnosis of type 1 diabetes, type 2 diabetes or MODY diabetes"
label(data$organ_tx_yes_no_v0)="History of organ transplantation"
label(data$cfrd_diabetes_med_yes_no_v0)="NEW diagnosis of CFRD or on any anti-diabetic medication for any reason in the previous 6 months, not including short term insulin while on high-dose steroids. "
label(data$pulm_ex_last3months_v0)="Pulmonary exacerbation associated with iv antibiotics or oral steroids in last 4 weeks"
label(data$corrector_yes_no_exclusion_v0)="On a CFTR corrector/modulator less than 8 weeks (e.g. ivacaftor, tezcaftor, lumacaftor, Orkambi, kalydeco, symdeko, or any combination of these drugs)"
label(data$consent_completed_v0)="Consent completed"
label(data$date_consent_signed_v0)="Date Consent Signed "
label(data$consent_form_pdf_v0)="Signed consent form"
label(data$date_assent_signed_v0)="Date Assent Signed"
label(data$assent_form_pdf_v0)="Signed Assent form"
label(data$updated_consent_signed_v0)="Date of Updated Consent Signed "
label(data$updated_consent_form_v0)="Upload updated consent form"
label(data$update_assent_signed_v0)="Updated Assent Signed Date"
label(data$updated_assent_form_v0)="Upload Updated Assent Form"
label(data$upt_v0)="Urine pregnancy test "
label(data$inclusionexclusion_repeat_visit_1_complete)="Complete?"
label(data$fast_hours_v0)="Subject fasting for at least 8 hrs:"
label(data$systolic_bp_v0)="Systolic Blood Pressure"
label(data$diastolic_bp_v0)="Diastolic Blood Pressure"
label(data$pulse_v0)="Pulse"
label(data$respiratory_rate_v0)="Respiratory Rate"
label(data$height_v0)="Height (cm)"
label(data$weight_v0)="Weight (kg)"
label(data$tanner_stage_v0)="Tanner stage (OLD)"
label(data$tanner_female_pubic_v0)="NEW Tanner staging female pubic hair"
label(data$tanner_breast_dev_v0)="NEW Tanner staging breast development"
label(data$tanner_male_pubic_v0)="NEW Tanner staging male pubic hair"
label(data$tanner_testicular_vol_v0)="NEW Tanner staging testicular volume"
label(data$notes_on_testicular_volume_v0)="Notes on Testicular Volume Tanner Staging"
label(data$type_of_temperature_v0)="Type of temperature "
label(data$tympanic_temperature_v0)="Tympanic Temperature"
label(data$oral_temperature_v0)="Oral Temperature"
label(data$temporal_temperature_v0)="Temporal Temperature"
label(data$numbing_cream_v0___1)="Place numbing cream per institutional protocol.  If patient or guardian wishes to not use numbing cream, they may decline.    (choice=LMX or EMLA placed per institutional protocol)"
label(data$numbing_cream_v0___2)="Place numbing cream per institutional protocol.  If patient or guardian wishes to not use numbing cream, they may decline.    (choice=numbing declined)"
label(data$problem_numbing_v0)="Concerns or problems with numbing cream, please note"
label(data$iv_notes_v0)="IV placement notes  note any difficulties with placement and number of trials to place IV (no more than 3 allowed, unless explicit and documented permission is given by subject and guardian if subject is minor child"
label(data$fasting_time_v0)="Fasting Draw Time "
label(data$a1c_result_v0)="A1C result"
label(data$gluc_dose_v0)="Administer glucose beverage orally  Glucola dose: (1.75 g/kg, maximum dose 75 g)"
label(data$gluc_start_v0)="Record time at which subject began drinking glucola  Glucola Start time:"
label(data$gluc_stop_v0)="Glucola Stop time:"
label(data$time_drink_glucola_v0)="Time to drink glucola"
label(data$glucola_notes_v0)="Glucola Notes "
label(data$ten_min_time_v0)="10 minute draw time"
label(data$thirty_min_time_v0)="30 minute draw time"
label(data$sixty_min_time_v0)="60 minute draw time"
label(data$ninety_min_time_v0)="90 minute draw time"
label(data$onetwenty_min_time_v0)="120 minute draw time"
label(data$pocglucose_120_v0)="POC glucose @120 min"
label(data$hypoglycemia_symptoms_yesno_v0)="Are there symptoms of hypoglycemia? (subject feels sweaty, shaky, hungry, faint, pale)"
label(data$protocol_continued_70_50_v0___1)="If blood sugar < 70 mg/dl but > 50 mg/dl AND 	not symptomatic, continue research protocol.  (choice=blood sugar was < 70 mg/dl, but >50 mg/dl AND patient was not symptomatic)"
label(data$protocol_continued_70_50_v0___2)="If blood sugar < 70 mg/dl but > 50 mg/dl AND 	not symptomatic, continue research protocol.  (choice=research protocol continued)"
label(data$protocol_continued_70_52_sym_v0___1)="If blood sugar < 70 mg/dl but > 50 mg/dl AND  subject is symptomatic (sweaty, shaky, hungry, fait, pale) call provider (choice=blood sugar was < 70 mg/dl, but >50 mg/dl AND patient *was* symptomatic)"
label(data$protocol_continued_70_52_sym_v0___2)="If blood sugar < 70 mg/dl but > 50 mg/dl AND  subject is symptomatic (sweaty, shaky, hungry, fait, pale) call provider (choice=provider contacted)"
label(data$pocgluocse50andsymptoms_1_v0___1)="If POC glucose < 50 mg/dl AND subject is symptomatic repeat POC glucose STAT and if still < 50 mg/dl, give 4 oz juice and notify provider repeat POC glucose in 15 min if still < 50 mg/dl give 4 oz juice and notify provider repeat POC glucose and 4 oz juice every 15 min until POC glucose is >60 mg/dl (choice=repeat POC glucose STAT)"
label(data$pocgluocse50andsymptoms_1_v0___2)="If POC glucose < 50 mg/dl AND subject is symptomatic repeat POC glucose STAT and if still < 50 mg/dl, give 4 oz juice and notify provider repeat POC glucose in 15 min if still < 50 mg/dl give 4 oz juice and notify provider repeat POC glucose and 4 oz juice every 15 min until POC glucose is >60 mg/dl (choice=if < 50 mg/dl give 4 oz juice immediately)"
label(data$pocgluocse50andsymptoms_1_v0___3)="If POC glucose < 50 mg/dl AND subject is symptomatic repeat POC glucose STAT and if still < 50 mg/dl, give 4 oz juice and notify provider repeat POC glucose in 15 min if still < 50 mg/dl give 4 oz juice and notify provider repeat POC glucose and 4 oz juice every 15 min until POC glucose is >60 mg/dl (choice=contact provider)"
label(data$pocgluocse50andsymptoms_1_v0___4)="If POC glucose < 50 mg/dl AND subject is symptomatic repeat POC glucose STAT and if still < 50 mg/dl, give 4 oz juice and notify provider repeat POC glucose in 15 min if still < 50 mg/dl give 4 oz juice and notify provider repeat POC glucose and 4 oz juice every 15 min until POC glucose is >60 mg/dl (choice=repeat POC glucose in 15 min)"
label(data$pocgluocse50andsymptoms_1_v0___5)="If POC glucose < 50 mg/dl AND subject is symptomatic repeat POC glucose STAT and if still < 50 mg/dl, give 4 oz juice and notify provider repeat POC glucose in 15 min if still < 50 mg/dl give 4 oz juice and notify provider repeat POC glucose and 4 oz juice every 15 min until POC glucose is >60 mg/dl (choice=treat with 4 oz juice if POC blood glucose still < 50 mg/dl)"
label(data$pocglucose12050nosyx_v0___1)="If Blood sugar < 50 mg/dl AND not symptomatic, repeat glucometer BG in 15 minutes and notify provider 	 (choice=provider notified)"
label(data$pocglucose12050nosyx_v0___2)="If Blood sugar < 50 mg/dl AND not symptomatic, repeat glucometer BG in 15 minutes and notify provider 	 (choice=POC blood glucose repeated (15 min later, @ 135 min))"
label(data$onefifty_min_time_v0)="150 minute draw time"
label(data$pocglucose_150_v0)="POC glucose @150 min"
label(data$hypoglycemia_symptoms_yesno_2_v0)="Are there symptoms of hypoglycemia? (subject feels sweaty, shaky, hungry, faint, pale)"
label(data$protocol_continued_70_51_v0___1)="If blood sugar < 70 mg/dl but > 50 mg/dl AND 	not symptomatic, continue research protocol.  (choice=blood sugar was < 70 mg/dl, but >50 mg/dl AND patient was not symptomatic)"
label(data$protocol_continued_70_51_v0___2)="If blood sugar < 70 mg/dl but > 50 mg/dl AND 	not symptomatic, continue research protocol.  (choice=research protocol continued)"
label(data$protocol_continued_70_52_sym_2_v0___1)="If blood sugar < 70 mg/dl but > 50 mg/dl AND  subject is symptomatic (sweaty, shaky, hungry, faint, pale) call provider (choice=blood sugar was < 70 mg/dl, but >50 mg/dl AND patient *was* symptomatic)"
label(data$protocol_continued_70_52_sym_2_v0___2)="If blood sugar < 70 mg/dl but > 50 mg/dl AND  subject is symptomatic (sweaty, shaky, hungry, faint, pale) call provider (choice=provider contacted)"
label(data$pocglucose12050nosyx_2_v0___1)="If Blood sugar < 50 mg/dl AND not symptomatic, repeat glucometer BG in 15 minutes and notify provider   (choice=provider notified)"
label(data$pocglucose12050nosyx_2_v0___2)="If Blood sugar < 50 mg/dl AND not symptomatic, repeat glucometer BG in 15 minutes and notify provider   (choice=POC blood glucose repeated (15 min later, @ 165 min))"
label(data$pocgluocse50andsymptoms_2_v0___1)="If POC glucose < 50 mg/dl AND subject is symptomatic repeat POC glucose STAT and if still < 50 mg/dl, give 4 oz juice and notify provider repeat POC glucose in 15 min if still < 50 mg/dl give 4 oz juice and notify provider repeat POC glucose and 4 oz juice every 15 min until POC glucose is >60 mg/dl (choice=repeat POC glucose STAT)"
label(data$pocgluocse50andsymptoms_2_v0___2)="If POC glucose < 50 mg/dl AND subject is symptomatic repeat POC glucose STAT and if still < 50 mg/dl, give 4 oz juice and notify provider repeat POC glucose in 15 min if still < 50 mg/dl give 4 oz juice and notify provider repeat POC glucose and 4 oz juice every 15 min until POC glucose is >60 mg/dl (choice=if < 50 mg/dl give 4 oz juice immediately)"
label(data$pocgluocse50andsymptoms_2_v0___3)="If POC glucose < 50 mg/dl AND subject is symptomatic repeat POC glucose STAT and if still < 50 mg/dl, give 4 oz juice and notify provider repeat POC glucose in 15 min if still < 50 mg/dl give 4 oz juice and notify provider repeat POC glucose and 4 oz juice every 15 min until POC glucose is >60 mg/dl (choice=contact provider)"
label(data$pocgluocse50andsymptoms_2_v0___4)="If POC glucose < 50 mg/dl AND subject is symptomatic repeat POC glucose STAT and if still < 50 mg/dl, give 4 oz juice and notify provider repeat POC glucose in 15 min if still < 50 mg/dl give 4 oz juice and notify provider repeat POC glucose and 4 oz juice every 15 min until POC glucose is >60 mg/dl (choice=repeat POC glucose in 15 min)"
label(data$pocgluocse50andsymptoms_2_v0___5)="If POC glucose < 50 mg/dl AND subject is symptomatic repeat POC glucose STAT and if still < 50 mg/dl, give 4 oz juice and notify provider repeat POC glucose in 15 min if still < 50 mg/dl give 4 oz juice and notify provider repeat POC glucose and 4 oz juice every 15 min until POC glucose is >60 mg/dl (choice=treat with 4 oz juice if POC blood glucose still < 50 mg/dl)"
label(data$oneeighty_min_time_v0)="180 minute draw time"
label(data$pocglucose_180_v0)="POC glucose @180 min"
label(data$hypoglycemia_symptoms_yesno_3_v0)="Are there symptoms of hypoglycemia? (subject feels sweaty, shaky, hungry, faint, pale)"
label(data$protocol_continued_70_52_v0___1)="If blood sugar < 70 mg/dl but > 50 mg/dl AND 	not symptomatic, continue research protocol.  (choice=blood sugar was < 70 mg/dl, but >50 mg/dl AND patient was not symptomatic)"
label(data$protocol_continued_70_52_v0___2)="If blood sugar < 70 mg/dl but > 50 mg/dl AND 	not symptomatic, continue research protocol.  (choice=research protocol continued)"
label(data$protocol_continued_70_52_sym_3_v0___1)="If blood sugar < 70 mg/dl but > 50 mg/dl AND  subject is symptomatic (sweaty, shaky, hungry, fait, pale) call provider (choice=blood sugar was < 70 mg/dl, but >50 mg/dl AND patient *was* symptomatic)"
label(data$protocol_continued_70_52_sym_3_v0___2)="If blood sugar < 70 mg/dl but > 50 mg/dl AND  subject is symptomatic (sweaty, shaky, hungry, fait, pale) call provider (choice=provider contacted)"
label(data$pocglucose12050nosyx_3_v0___1)="If Blood sugar < 50 mg/dl AND not symptomatic, repeat glucometer BG in 15 minutes and notify provider   (choice=provider notified)"
label(data$pocglucose12050nosyx_3_v0___2)="If Blood sugar < 50 mg/dl AND not symptomatic, repeat glucometer BG in 15 minutes and notify provider   (choice=POC blood glucose repeated (15 min later, @ 195 min))"
label(data$pocgluocse50andsymptoms_3_v0___1)="If POC glucose < 50 mg/dl AND subject is symptomatic repeat POC glucose STAT and if still < 50 mg/dl, give 4 oz juice and notify provider repeat POC glucose in 15 min if still < 50 mg/dl give 4 oz juice and notify provider repeat POC glucose and 4 oz juice every 15 min until POC glucose is >60 mg/dl (choice=repeat POC glucose STAT)"
label(data$pocgluocse50andsymptoms_3_v0___2)="If POC glucose < 50 mg/dl AND subject is symptomatic repeat POC glucose STAT and if still < 50 mg/dl, give 4 oz juice and notify provider repeat POC glucose in 15 min if still < 50 mg/dl give 4 oz juice and notify provider repeat POC glucose and 4 oz juice every 15 min until POC glucose is >60 mg/dl (choice=if < 50 mg/dl give 4 oz juice immediately)"
label(data$pocgluocse50andsymptoms_3_v0___3)="If POC glucose < 50 mg/dl AND subject is symptomatic repeat POC glucose STAT and if still < 50 mg/dl, give 4 oz juice and notify provider repeat POC glucose in 15 min if still < 50 mg/dl give 4 oz juice and notify provider repeat POC glucose and 4 oz juice every 15 min until POC glucose is >60 mg/dl (choice=contact provider)"
label(data$pocgluocse50andsymptoms_3_v0___4)="If POC glucose < 50 mg/dl AND subject is symptomatic repeat POC glucose STAT and if still < 50 mg/dl, give 4 oz juice and notify provider repeat POC glucose in 15 min if still < 50 mg/dl give 4 oz juice and notify provider repeat POC glucose and 4 oz juice every 15 min until POC glucose is >60 mg/dl (choice=repeat POC glucose in 15 min)"
label(data$pocgluocse50andsymptoms_3_v0___5)="If POC glucose < 50 mg/dl AND subject is symptomatic repeat POC glucose STAT and if still < 50 mg/dl, give 4 oz juice and notify provider repeat POC glucose in 15 min if still < 50 mg/dl give 4 oz juice and notify provider repeat POC glucose and 4 oz juice every 15 min until POC glucose is >60 mg/dl (choice=treat with 4 oz juice if POC blood glucose still < 50 mg/dl)"
label(data$random_hypoglycemia_ogtt_v0)="Random Hypoglycemia During OGTT?"
label(data$time_random_hypo_v0)="Timepoint Random Hypoglycemia"
label(data$rand_hypo_glucose_value_v0)="Random Hypoglycemia Glucose Value"
label(data$random_hypoglycemia_ogtt_2_v0)="Another Random Hypoglycemia During OGTT?"
label(data$time_random_hypo_2_v0)="Timepoint Random Hypoglycemia"
label(data$rand_hypo_glucose_value_2_v0)="Random Hypoglycemia Glucose Value"
label(data$random_hypoglycemia_ogtt_3_v0)="Another Random Hypoglycemia During OGTT?"
label(data$time_random_hypo_3_v0)="Timepoint Random Hypoglycemia"
label(data$rand_hypo_glucose_value_3_v0)="Random Hypoglycemia Glucose Value"
label(data$random_hypoglycemia_ogtt_4_v0)="Another Random Hypoglycemia During OGTT?"
label(data$time_random_hypo_4_v0)="Timepoint Random Hypoglycemia"
label(data$rand_hypo_glucose_value_4_v0)="Random Hypoglycemia Glucose Value"
label(data$random_hypoglycemia_ogtt_5_v0)="Another Random Hypoglycemia During OGTT?"
label(data$time_random_hypo_5_v0)="Timepoint Random Hypoglycemia"
label(data$rand_hypo_glucose_value_5_v0)="Random Hypoglycemia Glucose Value"
label(data$ogtt_notes_v0)="Notes from OGTT"
label(data$pocglucose_discharge_v0)="POC glucose before discharge"
label(data$dischargepoc70_v0)="If discharge POC glucose is >/=70 mg/dl, may remove IV and discharge subject"
label(data$dischargepocless70_v0)="If discharge POC glucose is < 70 mg/dl, provide another 15 grams of crabohydrates, ie. juice and then may remove IV and discharge"
label(data$ogtt_documentation_repeat_visit_1_complete)="Complete?"
label(data$heart_pounding_baseline_v0)="Heart Pounding @baseline"
label(data$shaky_tremulous_baseline_v0)="Shaky/tremulous @baseline"
label(data$nervous_anxious_baseline_v0)="Nervous/anxious @baseline"
label(data$sweaty_baseline_v0)="Sweaty @baseline"
label(data$hungry_baseline_v0)="Hungry @baseline"
label(data$tingling_baseline_v0)="Tingling @baseline"
label(data$diff_thinking_baseline_v0)="Difficulty Thinking @baseline"
label(data$tired_drowsy_baseline_v0)="Tired/drowsy @baseline"
label(data$weak_baseline_v0)="Weak @baseline"
label(data$warm_baseline_v0)="Warm @baseline"
label(data$faint_baseline_v0)="Faint @baseline"
label(data$dizzy_baseline_v0)="Dizzy @baseline"
label(data$adren_score_baseline_v0)="Adrenergic Score @baseline"
label(data$neuro_score_baseline_v0)="Neuroglycopenic Score @baseline"
label(data$total_score_baseline_v0)="Total Score @baseline"
label(data$heart_pounding_120_v0)="Heart pounding @120"
label(data$shaky_tremulous_120_v0)="Shaky/tremulous @120"
label(data$nervous_anxious_120_v0)="Nervous/anxious @120"
label(data$sweaty_120_v0)="Sweaty @120"
label(data$hungry_120_v0)="Hungry @120"
label(data$tingling_120_v0)="Tingling @120"
label(data$diff_thinking_120_v0)="Difficulty Thinking @120"
label(data$tired_drowsy_120_v0)="Tired/drowsy @120"
label(data$weak_120_v0)="Weak @120"
label(data$warm_120_v0)="Warm @120"
label(data$faint_120_v0)="Faint @120"
label(data$dizzy_120_v0)="Dizzy @120"
label(data$adren_score_120_v0)="Adrenergic Score @120"
label(data$neuro_score_120_v0)="Neuroglycopenic Score @120 "
label(data$total_score_120_v0)="Total Score @120"
label(data$heart_pounding_150_v0)="Heart Pounding @150"
label(data$shaky_tremulous_150_v0)="Shaky/tremulous @150"
label(data$nervous_anxious_150_v0)="Nervous/anxious @150"
label(data$sweaty_150_v0)="Sweaty @150"
label(data$hungry_150_v0)="Hungry @150"
label(data$tingling_150_v0)="Tingling @150"
label(data$diff_thinking_150_v0)="Difficulty Thinking @150"
label(data$tired_drowsy_150_v0)="Tired/drowsy @150"
label(data$weak_150_v0)="Weak @150"
label(data$warm_150_v0)="Warm @150"
label(data$faint_150_v0)="Faint @150"
label(data$dizzy_150_v0)="Dizzy @150"
label(data$adren_score_150_v0)="Adrenergic Score @150"
label(data$neuro_score_150_v0)="Neuroglycopenic Score @150"
label(data$total_score_150_v0)="Total Score @ 150"
label(data$heart_pounding_180_v0)="Heart Pounding @180"
label(data$shaky_tremulous_180_v0)="Shaky/tremulous @180"
label(data$nervous_anxious_180_v0)="Nervous/anxious @180"
label(data$sweaty_180_v0)="Sweaty @180"
label(data$hungry_180_v0)="Hungry @180"
label(data$tingling_180_v0)="Tingling @180"
label(data$diff_thinking_180_v0)="Difficulty thinking @180"
label(data$tired_drowsy_180_v0)="Tired/drowsy @180"
label(data$weak_180_v0)="Weak @180"
label(data$warm_180_v0)="Warm @180"
label(data$faint_180_v0)="Faint @180"
label(data$dizzy_180_v0)="Dizzy @180"
label(data$adren_score_180_v0)="Adrenergic Score @180"
label(data$neuro_score_180_v0)="Neuroglycopenic Score @180"
label(data$total_score_180_v0)="Total Score @180"
label(data$ogtt_hypoglycemia_questionnaires_repeat_visit_1_complete)="Complete?"
label(data$shaking_peds_base_v0)="Shaky"
label(data$fast_heart_peds_base_v0)="Fast Heart Beat"
label(data$sweating_peds_base_v0)="Sweaty"
label(data$weak_peds_base_v0)="Tired but not sleepy"
label(data$hunger_peds_base_v0)="Hungry"
label(data$irritable_peds_base_v0)="Grumpy but not sure why"
label(data$num_symptoms_base_v0)="Number of Hypoglycemic Symptoms @Baseline"
label(data$shaking_peds_120_v0)="Shaky"
label(data$fast_heart_peds_120_v0)="Fast Heart Beat"
label(data$sweating_peds_120_v0)="Sweaty"
label(data$weak_peds_120_v0)="Tired but not sleepy"
label(data$hunger_peds_120_v0)="Hungry"
label(data$irritable_peds_120_v0)="Grumpy but not sure why"
label(data$num_symptoms_120_v0)="Number of Symptoms @120"
label(data$shaking_peds_150_v0)="Shaky"
label(data$fast_heart_peds_150_v0)="Fast Heart Beat"
label(data$sweating_peds_150_v0)="Sweaty"
label(data$weak_peds_150_v0)="Tired but not sleepy"
label(data$hunger_peds_150_v0)="Hungry"
label(data$irritable_peds_150_v0)="Grumpy but not sure why"
label(data$num_symptoms_150_v0)="Number of Symptoms @150"
label(data$shaking_peds_180_v0)="Shaky"
label(data$fast_heart_peds_180_v0)="Fast Heart Beat"
label(data$sweating_peds_180_v0)="Sweaty"
label(data$weak_peds_180_v0)="Tired but not sleepy"
label(data$hunger_peds_180_v0)="Hungry"
label(data$irritable_peds_180_v0)="Grumpy but not sure why"
label(data$num_symptoms_180_v0)="Number of Symptoms @180"
label(data$ogtt_hypoglycemia_questionnaire_age_618_repeat_vis_complete)="Complete?"
label(data$questionnaire_filled_out_v0)="Questionnaire filled out?"
label(data$rv_home_hypo)="Did the patient feel symptoms of Hypoglycemia?"
label(data$date_of_hypoglycemia_event_v0)="Date of hypoglycemia event"
label(data$time_of_hypoglycemia_event_v0)="Time of Hypoglycemia event"
label(data$i_feel_v0___0)="I felt this during hypoglycemia event... (choice=Heart pounding)"
label(data$i_feel_v0___1)="I felt this during hypoglycemia event... (choice=Shaky)"
label(data$i_feel_v0___2)="I felt this during hypoglycemia event... (choice=Nervous)"
label(data$i_feel_v0___3)="I felt this during hypoglycemia event... (choice=Sweaty)"
label(data$i_feel_v0___4)="I felt this during hypoglycemia event... (choice=Hungry)"
label(data$i_feel_v0___5)="I felt this during hypoglycemia event... (choice=Tingling)"
label(data$i_feel_v0___6)="I felt this during hypoglycemia event... (choice=Difficulty Thinking)"
label(data$i_feel_v0___7)="I felt this during hypoglycemia event... (choice=Tired)"
label(data$i_feel_v0___8)="I felt this during hypoglycemia event... (choice=Weak)"
label(data$i_feel_v0___9)="I felt this during hypoglycemia event... (choice=Warm)"
label(data$i_feel_v0___10)="I felt this during hypoglycemia event... (choice=Faint)"
label(data$i_feel_v0___11)="I felt this during hypoglycemia event... (choice=Dizzy)"
label(data$other_hypoglycemia_feeling_v0)="Other Hypoglycemia feeling..."
label(data$it_was_recognized_by_v0)="It was recognized by..."
label(data$i_needed_v0___0)="I needed this for my hypoglycemia event... (choice=Juice/food)"
label(data$i_needed_v0___1)="I needed this for my hypoglycemia event... (choice=Help from someone else)"
label(data$i_needed_v0___2)="I needed this for my hypoglycemia event... (choice=Nothing)"
label(data$juice_or_food_v0)="If juice or food was taken, did it make you feel better?"
label(data$another_section_1_v0)="Another home hypoglycemia section filled out?"
label(data$date_of_hypoglycemia_event_2_v0)="Date of hypoglycemia event"
label(data$time_of_hypoglycemia_event_2_v0)="Time of Hypoglycemia event"
label(data$i_feel_2_v0___0)="I felt this during hypoglycemia event... (choice=Heart pounding)"
label(data$i_feel_2_v0___1)="I felt this during hypoglycemia event... (choice=Shaky)"
label(data$i_feel_2_v0___2)="I felt this during hypoglycemia event... (choice=Nervous)"
label(data$i_feel_2_v0___3)="I felt this during hypoglycemia event... (choice=Sweaty)"
label(data$i_feel_2_v0___4)="I felt this during hypoglycemia event... (choice=Hungry)"
label(data$i_feel_2_v0___5)="I felt this during hypoglycemia event... (choice=Tingling)"
label(data$i_feel_2_v0___6)="I felt this during hypoglycemia event... (choice=Difficulty Thinking)"
label(data$i_feel_2_v0___7)="I felt this during hypoglycemia event... (choice=Tired)"
label(data$i_feel_2_v0___8)="I felt this during hypoglycemia event... (choice=Weak)"
label(data$i_feel_2_v0___9)="I felt this during hypoglycemia event... (choice=Warm)"
label(data$i_feel_2_v0___10)="I felt this during hypoglycemia event... (choice=Faint)"
label(data$i_feel_2_v0___11)="I felt this during hypoglycemia event... (choice=Dizzy)"
label(data$other_hypoglycemia_feeling_2_v0)="Other Hypoglycemia feeling..."
label(data$it_was_recognized_by_2_v0)="It was recognized by..."
label(data$i_needed_2_v0___0)="I needed this for my hypoglycemia event... (choice=Juice/food)"
label(data$i_needed_2_v0___1)="I needed this for my hypoglycemia event... (choice=Help from someone else)"
label(data$i_needed_2_v0___2)="I needed this for my hypoglycemia event... (choice=Nothing)"
label(data$juice_or_food_2_v0)="If juice or food was taken, did it make you feel better?"
label(data$another_section_2_v0)="Third hypoglycemia section filled out?"
label(data$date_of_hypoglycemia_event_3_v0)="Date of hypoglycemia event"
label(data$time_of_hypoglycemia_event_3_v0)="Time of Hypoglycemia event"
label(data$i_feel_3_v0___0)="I felt this during hypoglycemia event... (choice=Heart pounding)"
label(data$i_feel_3_v0___1)="I felt this during hypoglycemia event... (choice=Shaky)"
label(data$i_feel_3_v0___2)="I felt this during hypoglycemia event... (choice=Nervous)"
label(data$i_feel_3_v0___3)="I felt this during hypoglycemia event... (choice=Sweaty)"
label(data$i_feel_3_v0___4)="I felt this during hypoglycemia event... (choice=Hungry)"
label(data$i_feel_3_v0___5)="I felt this during hypoglycemia event... (choice=Tingling)"
label(data$i_feel_3_v0___6)="I felt this during hypoglycemia event... (choice=Difficulty Thinking)"
label(data$i_feel_3_v0___7)="I felt this during hypoglycemia event... (choice=Tired)"
label(data$i_feel_3_v0___8)="I felt this during hypoglycemia event... (choice=Weak)"
label(data$i_feel_3_v0___9)="I felt this during hypoglycemia event... (choice=Warm)"
label(data$i_feel_3_v0___10)="I felt this during hypoglycemia event... (choice=Faint)"
label(data$i_feel_3_v0___11)="I felt this during hypoglycemia event... (choice=Dizzy)"
label(data$other_hypoglycemia_feeling_3_v0)="Other Hypoglycemia feeling..."
label(data$it_was_recognized_by_3_v0)="It was recognized by..."
label(data$i_needed_3_v0___0)="I needed this for my hypoglycemia event... (choice=Juice/food)"
label(data$i_needed_3_v0___1)="I needed this for my hypoglycemia event... (choice=Help from someone else)"
label(data$i_needed_3_v0___2)="I needed this for my hypoglycemia event... (choice=Nothing)"
label(data$juice_or_food_3_v0)="If juice or food was taken, did it make you feel better?"
label(data$another_section_3_v0)="Fourth home hypoglycemia section filled out?"
label(data$date_of_hypoglycemia_event_4_v0)="Date of hypoglycemia event"
label(data$time_of_hypoglycemia_event_4_v0)="Time of Hypoglycemia event"
label(data$i_feel_4_v0___0)="I felt this during hypoglycemia event... (choice=Heart pounding)"
label(data$i_feel_4_v0___1)="I felt this during hypoglycemia event... (choice=Shaky)"
label(data$i_feel_4_v0___2)="I felt this during hypoglycemia event... (choice=Nervous)"
label(data$i_feel_4_v0___3)="I felt this during hypoglycemia event... (choice=Sweaty)"
label(data$i_feel_4_v0___4)="I felt this during hypoglycemia event... (choice=Hungry)"
label(data$i_feel_4_v0___5)="I felt this during hypoglycemia event... (choice=Tingling)"
label(data$i_feel_4_v0___6)="I felt this during hypoglycemia event... (choice=Difficulty Thinking)"
label(data$i_feel_4_v0___7)="I felt this during hypoglycemia event... (choice=Tired)"
label(data$i_feel_4_v0___8)="I felt this during hypoglycemia event... (choice=Weak)"
label(data$i_feel_4_v0___9)="I felt this during hypoglycemia event... (choice=Warm)"
label(data$i_feel_4_v0___10)="I felt this during hypoglycemia event... (choice=Faint)"
label(data$i_feel_4_v0___11)="I felt this during hypoglycemia event... (choice=Dizzy)"
label(data$other_hypoglycemia_feeling_4_v0)="Other Hypoglycemia feeling..."
label(data$it_was_recognized_by_4_v0)="It was recognized by..."
label(data$i_needed_4_v0___0)="I needed this for my hypoglycemia event... (choice=Juice/food)"
label(data$i_needed_4_v0___1)="I needed this for my hypoglycemia event... (choice=Help from someone else)"
label(data$i_needed_4_v0___2)="I needed this for my hypoglycemia event... (choice=Nothing)"
label(data$juice_or_food_4_v0)="If juice or food was taken, did it make you feel better?"
label(data$another_section_4_v0)="Fifth home hypoglycemia section filled out?"
label(data$date_of_hypoglycemia_event_5_v0)="Date of hypoglycemia event"
label(data$time_of_hypoglycemia_event_5_v0)="Time of Hypoglycemia event"
label(data$i_feel_5_v0___0)="I felt this during hypoglycemia event... (choice=Heart pounding)"
label(data$i_feel_5_v0___1)="I felt this during hypoglycemia event... (choice=Shaky)"
label(data$i_feel_5_v0___2)="I felt this during hypoglycemia event... (choice=Nervous)"
label(data$i_feel_5_v0___3)="I felt this during hypoglycemia event... (choice=Sweaty)"
label(data$i_feel_5_v0___4)="I felt this during hypoglycemia event... (choice=Hungry)"
label(data$i_feel_5_v0___5)="I felt this during hypoglycemia event... (choice=Tingling)"
label(data$i_feel_5_v0___6)="I felt this during hypoglycemia event... (choice=Difficulty Thinking)"
label(data$i_feel_5_v0___7)="I felt this during hypoglycemia event... (choice=Tired)"
label(data$i_feel_5_v0___8)="I felt this during hypoglycemia event... (choice=Weak)"
label(data$i_feel_5_v0___9)="I felt this during hypoglycemia event... (choice=Warm)"
label(data$i_feel_5_v0___10)="I felt this during hypoglycemia event... (choice=Faint)"
label(data$i_feel_5_v0___11)="I felt this during hypoglycemia event... (choice=Dizzy)"
label(data$other_hypoglycemia_feeling_5_v0)="Other Hypoglycemia feeling..."
label(data$it_was_recognized_by_5_v0)="It was recognized by..."
label(data$i_needed_5_v0___0)="I needed this for my hypoglycemia event... (choice=Juice/food)"
label(data$i_needed_5_v0___1)="I needed this for my hypoglycemia event... (choice=Help from someone else)"
label(data$i_needed_5_v0___2)="I needed this for my hypoglycemia event... (choice=Nothing)"
label(data$juice_or_food_5_v0)="If juice or food was taken, did it make you feel better?"
label(data$another_section_5_v0)="Sixth home hypoglycemia section filled out?"
label(data$date_of_hypoglycemia_event_6_v0)="Date of hypoglycemia event"
label(data$time_of_hypoglycemia_event_6_v0)="Time of Hypoglycemia event"
label(data$i_feel_6_v0___0)="I felt this during hypoglycemia event... (choice=Heart pounding)"
label(data$i_feel_6_v0___1)="I felt this during hypoglycemia event... (choice=Shaky)"
label(data$i_feel_6_v0___2)="I felt this during hypoglycemia event... (choice=Nervous)"
label(data$i_feel_6_v0___3)="I felt this during hypoglycemia event... (choice=Sweaty)"
label(data$i_feel_6_v0___4)="I felt this during hypoglycemia event... (choice=Hungry)"
label(data$i_feel_6_v0___5)="I felt this during hypoglycemia event... (choice=Tingling)"
label(data$i_feel_6_v0___6)="I felt this during hypoglycemia event... (choice=Difficulty Thinking)"
label(data$i_feel_6_v0___7)="I felt this during hypoglycemia event... (choice=Tired)"
label(data$i_feel_6_v0___8)="I felt this during hypoglycemia event... (choice=Weak)"
label(data$i_feel_6_v0___9)="I felt this during hypoglycemia event... (choice=Warm)"
label(data$i_feel_6_v0___10)="I felt this during hypoglycemia event... (choice=Faint)"
label(data$i_feel_6_v0___11)="I felt this during hypoglycemia event... (choice=Dizzy)"
label(data$other_hypoglycemia_feeling_6_v0)="Other Hypoglycemia feeling..."
label(data$it_was_recognized_by_6_v0)="It was recognized by..."
label(data$i_needed_6_v0___0)="I needed this for my hypoglycemia event... (choice=Juice/food)"
label(data$i_needed_6_v0___1)="I needed this for my hypoglycemia event... (choice=Help from someone else)"
label(data$i_needed_6_v0___2)="I needed this for my hypoglycemia event... (choice=Nothing)"
label(data$juice_or_food_6_v0)="If juice or food was taken, did it make you feel better?"
label(data$another_section_6_v0)="Seventh home hypoglycemia section filled out?"
label(data$date_of_hypoglycemia_event_7_v0)="Date of hypoglycemia event"
label(data$time_of_hypoglycemia_event_7_v0)="Time of Hypoglycemia event"
label(data$i_feel_7_v0___0)="I felt this during hypoglycemia event... (choice=Heart pounding)"
label(data$i_feel_7_v0___1)="I felt this during hypoglycemia event... (choice=Shaky)"
label(data$i_feel_7_v0___2)="I felt this during hypoglycemia event... (choice=Nervous)"
label(data$i_feel_7_v0___3)="I felt this during hypoglycemia event... (choice=Sweaty)"
label(data$i_feel_7_v0___4)="I felt this during hypoglycemia event... (choice=Hungry)"
label(data$i_feel_7_v0___5)="I felt this during hypoglycemia event... (choice=Tingling)"
label(data$i_feel_7_v0___6)="I felt this during hypoglycemia event... (choice=Difficulty Thinking)"
label(data$i_feel_7_v0___7)="I felt this during hypoglycemia event... (choice=Tired)"
label(data$i_feel_7_v0___8)="I felt this during hypoglycemia event... (choice=Weak)"
label(data$i_feel_7_v0___9)="I felt this during hypoglycemia event... (choice=Warm)"
label(data$i_feel_7_v0___10)="I felt this during hypoglycemia event... (choice=Faint)"
label(data$i_feel_7_v0___11)="I felt this during hypoglycemia event... (choice=Dizzy)"
label(data$other_hypoglycemia_feeling_7_v0)="Other Hypoglycemia feeling..."
label(data$it_was_recognized_by_7_v0)="It was recognized by..."
label(data$i_needed_7_v0___0)="I needed this for my hypoglycemia event... (choice=Juice/food)"
label(data$i_needed_7_v0___1)="I needed this for my hypoglycemia event... (choice=Help from someone else)"
label(data$i_needed_7_v0___2)="I needed this for my hypoglycemia event... (choice=Nothing)"
label(data$juice_or_food_7_v0)="If juice or food was taken, did it make you feel better?"
label(data$another_section_7_v0)="Eighth home hypoglycemia section filled out? "
label(data$date_of_hypoglycemia_event_8_v0)="Date of hypoglycemia event"
label(data$time_of_hypoglycemia_event_8_v0)="Time of Hypoglycemia event"
label(data$i_feel_8_v0___0)="I felt this during hypoglycemia event... (choice=Heart pounding)"
label(data$i_feel_8_v0___1)="I felt this during hypoglycemia event... (choice=Shaky)"
label(data$i_feel_8_v0___2)="I felt this during hypoglycemia event... (choice=Nervous)"
label(data$i_feel_8_v0___3)="I felt this during hypoglycemia event... (choice=Sweaty)"
label(data$i_feel_8_v0___4)="I felt this during hypoglycemia event... (choice=Hungry)"
label(data$i_feel_8_v0___5)="I felt this during hypoglycemia event... (choice=Tingling)"
label(data$i_feel_8_v0___6)="I felt this during hypoglycemia event... (choice=Difficulty Thinking)"
label(data$i_feel_8_v0___7)="I felt this during hypoglycemia event... (choice=Tired)"
label(data$i_feel_8_v0___8)="I felt this during hypoglycemia event... (choice=Weak)"
label(data$i_feel_8_v0___9)="I felt this during hypoglycemia event... (choice=Warm)"
label(data$i_feel_8_v0___10)="I felt this during hypoglycemia event... (choice=Faint)"
label(data$i_feel_8_v0___11)="I felt this during hypoglycemia event... (choice=Dizzy)"
label(data$other_hypoglycemia_feeling_8_v0)="Other Hypoglycemia feeling..."
label(data$it_was_recognized_by_8_v0)="It was recognized by..."
label(data$i_needed_8_v0___0)="I needed this for my hypoglycemia event... (choice=Juice/food)"
label(data$i_needed_8_v0___1)="I needed this for my hypoglycemia event... (choice=Help from someone else)"
label(data$i_needed_8_v0___2)="I needed this for my hypoglycemia event... (choice=Nothing)"
label(data$juice_or_food_8_v0)="If juice or food was taken, did it make you feel better?"
label(data$athome_adult_hypoglycemia_questionnaire_repeat_vis_complete)="Complete?"
label(data$child_home_completed_v0)="Child home hypoglycemia form completed?"
label(data$rv_child_hypo_home)="Did the child feel symptoms of hypoglycemia while wearing the CGM?"
label(data$date_hypoglycemia_event_v0)="Date of Hypoglycemia Event"
label(data$time_hypoglycemia_event_v0)="Time of Hypoglycemia Event"
label(data$form_filled_out_by_who_v0)="Form filled out by who?"
label(data$time_of_last_meal_v0)="Time of last meal?"
label(data$symptoms_child_hypo_v0___0)="Symptoms child hypoglycemia (choice=Shaky)"
label(data$symptoms_child_hypo_v0___1)="Symptoms child hypoglycemia (choice=Fast Heartbeat)"
label(data$symptoms_child_hypo_v0___2)="Symptoms child hypoglycemia (choice=Sweaty)"
label(data$symptoms_child_hypo_v0___3)="Symptoms child hypoglycemia (choice=Tired but not Sleepy)"
label(data$symptoms_child_hypo_v0___4)="Symptoms child hypoglycemia (choice=More Hungry than Usual)"
label(data$symptoms_child_hypo_v0___5)="Symptoms child hypoglycemia (choice=Grumpy & dont know why)"
label(data$another_section_filled_v0)="Another section child hypoglycemia filled out?"
label(data$date_hypoglycemia_event_2_v0)="Date of Hypoglycemia Event"
label(data$time_hypoglycemia_event_2_v0)="Time of Hypoglycemia Event"
label(data$form_filled_out_by_who_2_v0)="Form filled out by who?"
label(data$time_of_last_meal_2_v0)="Time of last meal?"
label(data$symptoms_child_hypo_2_v0___0)="Symptoms child hypoglycemia (choice=Shaky)"
label(data$symptoms_child_hypo_2_v0___1)="Symptoms child hypoglycemia (choice=Fast Heartbeat)"
label(data$symptoms_child_hypo_2_v0___2)="Symptoms child hypoglycemia (choice=Sweaty)"
label(data$symptoms_child_hypo_2_v0___3)="Symptoms child hypoglycemia (choice=Tired but not Sleepy)"
label(data$symptoms_child_hypo_2_v0___4)="Symptoms child hypoglycemia (choice=More Hungry than Usual)"
label(data$symptoms_child_hypo_2_v0___5)="Symptoms child hypoglycemia (choice=Grumpy & dont know why)"
label(data$third_section_filled_out_v0)="Third section filled out?"
label(data$date_hypoglycemia_event_3_v0)="Date of Hypoglycemia Event"
label(data$time_hypoglycemia_event_3_v0)="Time of Hypoglycemia Event"
label(data$form_filled_out_by_who_3_v0)="Form filled out by who?"
label(data$time_of_last_meal_3_v0)="Time of last meal?"
label(data$symptoms_child_hypo_3_v0___0)="Symptoms child hypoglycemia (choice=Shaky)"
label(data$symptoms_child_hypo_3_v0___1)="Symptoms child hypoglycemia (choice=Fast Heartbeat)"
label(data$symptoms_child_hypo_3_v0___2)="Symptoms child hypoglycemia (choice=Sweaty)"
label(data$symptoms_child_hypo_3_v0___3)="Symptoms child hypoglycemia (choice=Tired but not Sleepy)"
label(data$symptoms_child_hypo_3_v0___4)="Symptoms child hypoglycemia (choice=More Hungry than Usual)"
label(data$symptoms_child_hypo_3_v0___5)="Symptoms child hypoglycemia (choice=Grumpy & dont know why)"
label(data$fourth_section_filled_v0)="Fourth section filled out?"
label(data$date_hypoglycemia_event_4_v0)="Date of Hypoglycemia Event"
label(data$time_hypoglycemia_event_4_v0)="Time of Hypoglycemia Event"
label(data$form_filled_out_by_who_4_v0)="Form filled out by who?"
label(data$time_of_last_meal_4_v0)="Time of last meal?"
label(data$symptoms_child_hypo_4_v0___0)="Symptoms child hypoglycemia (choice=Shaky)"
label(data$symptoms_child_hypo_4_v0___1)="Symptoms child hypoglycemia (choice=Fast Heartbeat)"
label(data$symptoms_child_hypo_4_v0___2)="Symptoms child hypoglycemia (choice=Sweaty)"
label(data$symptoms_child_hypo_4_v0___3)="Symptoms child hypoglycemia (choice=Tired but not Sleepy)"
label(data$symptoms_child_hypo_4_v0___4)="Symptoms child hypoglycemia (choice=More Hungry than Usual)"
label(data$symptoms_child_hypo_4_v0___5)="Symptoms child hypoglycemia (choice=Grumpy & dont know why)"
label(data$fifth_section_filled_v0)="Fifth section filled out?"
label(data$date_hypoglycemia_event_5_v0)="Date of Hypoglycemia Event"
label(data$time_hypoglycemia_event_5_v0)="Time of Hypoglycemia Event"
label(data$form_filled_out_by_who_5_v0)="Form filled out by who?"
label(data$time_of_last_meal_5_v0)="Time of last meal?"
label(data$symptoms_child_hypo_5_v0___0)="Symptoms child hypoglycemia (choice=Shaky)"
label(data$symptoms_child_hypo_5_v0___1)="Symptoms child hypoglycemia (choice=Fast Heartbeat)"
label(data$symptoms_child_hypo_5_v0___2)="Symptoms child hypoglycemia (choice=Sweaty)"
label(data$symptoms_child_hypo_5_v0___3)="Symptoms child hypoglycemia (choice=Tired but not Sleepy)"
label(data$symptoms_child_hypo_5_v0___4)="Symptoms child hypoglycemia (choice=More Hungry than Usual)"
label(data$symptoms_child_hypo_5_v0___5)="Symptoms child hypoglycemia (choice=Grumpy & dont know why)"
label(data$sixth_section_filled_v0)="Sixth section filled out?"
label(data$date_hypoglycemia_event_6_v0)="Date of Hypoglycemia Event"
label(data$time_hypoglycemia_event_6_v0)="Time of Hypoglycemia Event"
label(data$form_filled_out_by_who_6_v0)="Form filled out by who?"
label(data$time_of_last_meal_6_v0)="Time of last meal?"
label(data$symptoms_child_hypo_6_v0___0)="Symptoms child hypoglycemia (choice=Shaky)"
label(data$symptoms_child_hypo_6_v0___1)="Symptoms child hypoglycemia (choice=Fast Heartbeat)"
label(data$symptoms_child_hypo_6_v0___2)="Symptoms child hypoglycemia (choice=Sweaty)"
label(data$symptoms_child_hypo_6_v0___3)="Symptoms child hypoglycemia (choice=Tired but not Sleepy)"
label(data$symptoms_child_hypo_6_v0___4)="Symptoms child hypoglycemia (choice=More Hungry than Usual)"
label(data$symptoms_child_hypo_6_v0___5)="Symptoms child hypoglycemia (choice=Grumpy & dont know why)"
label(data$seventh_section_filled_v0)="Seventh section filled out?"
label(data$date_hypoglycemia_event_7_v0)="Date of Hypoglycemia Event"
label(data$time_hypoglycemia_event_7_v0)="Time of Hypoglycemia Event"
label(data$form_filled_out_by_who_7_v0)="Form filled out by who?"
label(data$time_of_last_meal_7_v0)="Time of last meal?"
label(data$symptoms_child_hypo_7_v0___0)="Symptoms child hypoglycemia (choice=Shaky)"
label(data$symptoms_child_hypo_7_v0___1)="Symptoms child hypoglycemia (choice=Fast Heartbeat)"
label(data$symptoms_child_hypo_7_v0___2)="Symptoms child hypoglycemia (choice=Sweaty)"
label(data$symptoms_child_hypo_7_v0___3)="Symptoms child hypoglycemia (choice=Tired but not Sleepy)"
label(data$symptoms_child_hypo_7_v0___4)="Symptoms child hypoglycemia (choice=More Hungry than Usual)"
label(data$symptoms_child_hypo_7_v0___5)="Symptoms child hypoglycemia (choice=Grumpy & dont know why)"
label(data$eighth_section_filled_v0)="Eighth section filled out?"
label(data$date_hypoglycemia_event_8_v0)="Date of Hypoglycemia Event"
label(data$time_hypoglycemia_event_8_v0)="Time of Hypoglycemia Event"
label(data$form_filled_out_by_who_8_v0)="Form filled out by who?"
label(data$time_of_last_meal_8_v0)="Time of last meal?"
label(data$symptoms_child_hypo_8_v0___0)="Symptoms child hypoglycemia (choice=Shaky)"
label(data$symptoms_child_hypo_8_v0___1)="Symptoms child hypoglycemia (choice=Fast Heartbeat)"
label(data$symptoms_child_hypo_8_v0___2)="Symptoms child hypoglycemia (choice=Sweaty)"
label(data$symptoms_child_hypo_8_v0___3)="Symptoms child hypoglycemia (choice=Tired but not Sleepy)"
label(data$symptoms_child_hypo_8_v0___4)="Symptoms child hypoglycemia (choice=More Hungry than Usual)"
label(data$symptoms_child_hypo_8_v0___5)="Symptoms child hypoglycemia (choice=Grumpy & dont know why)"
label(data$athome_child_618_hypoglycemia_questionnaire_repeat_complete)="Complete?"
label(data$pft_yes_no_v0)="Did the subject have pulmonary function tests completed in the last year? "
label(data$date_fev1_v0)="date of most recent FEV 1 in last year"
label(data$fev1_v0)="FEV1 %"
label(data$fev1_l_v0)="FEV1 (L)"
label(data$fvc_v0)="FVC (%)"
label(data$fvc_l_v0)="FVC (L) "
label(data$fev1_fvc_v0)="FEV1/FVC %"
label(data$fev_25_75_v0)="FEF 25-75%"
label(data$comments_pft_1_v0)="comments PFT "
label(data$pulmonary_function_repeat_visit_1_complete)="Complete?"
label(data$ae_occur_v0)="Did an AE occur?"
label(data$ae_initials_v0)="Subject Initials"
label(data$ae_description_v0)="Adverse event description"
label(data$ae_start_date_v0)="Date of start of AE"
label(data$ae_end_date_v0)="Date of end of AE"
label(data$ae_severity_v0)="severity of AE"
label(data$action_taken_v0)="action taken AE"
label(data$ae_outcome_v0)="outcome of AE "
label(data$ae_relation_to_study_v0)="Relation to study AE"
label(data$ae_serious_v0)="Is AE a serious adverse event?"
label(data$invest_sign_date_v0)="Investigator Signature Date"
label(data$adverse_event_log_repeat_visit_1_complete)="Complete?"
label(data$y_n_protocol_dev_v0)="Was there a protocol deviation? "
label(data$deviation_type_v0)="Deviation Type:"
label(data$other_dev_explain_v0)="Other:"
label(data$timing_of_deviation_v0)="Timing of deviation"
label(data$dev_id_by_v0)="Deviation identified by:"
label(data$protocol_dev_identified_by_v0)="Identified by other:"
label(data$details_of_the_dev_v0)="Provide details of the deviation:"
label(data$deviation_result_ae_v0)="Did the deviation result in an AE occuring?"
label(data$steps_resolve_dev_v0)="Explain the steps taken to resolve the deviation:"
label(data$second_protocol_dev_v0)="Was there a second protocol deviation? "
label(data$deviation_type_2_v0)="Deviation Type:"
label(data$other_dev_explain_2_v0)="Other:"
label(data$timing_of_deviation_2_v0)="Timing of deviation"
label(data$dev_id_by_2_v0)="Deviation identified by:"
label(data$protocol_dev_identified_by_2_v0)="Identified by other:"
label(data$details_of_the_dev_2_v0)="Provide details of the deviation:"
label(data$deviation_result_ae_2_v0)="Did the deviation result in an AE occuring?"
label(data$steps_resolve_dev_2_v0)="Explain the steps taken to resolve the deviation:"
label(data$third_protocol_dev_v0)="Was there a third protocol deviation?"
label(data$deviation_type_3_v0)="Deviation Type:"
label(data$other_dev_explain_3_v0)="Other:"
label(data$timing_of_deviation_3_v0)="Timing of deviation"
label(data$dev_id_by_3_v0)="Deviation identified by:"
label(data$protocol_dev_identified_by_3_v0)="Identified by other:"
label(data$details_of_the_dev_3_v0)="Provide details of the deviation:"
label(data$deviation_result_ae_3_v0)="Did the deviation result in an AE occuring?"
label(data$steps_resolve_dev_3_v0)="Explain the steps taken to resolve the deviation:"
label(data$fourth_protocol_dev_v0)="Was there a fourth protocol deviation?"
label(data$deviation_type_4_v0)="Deviation Type:"
label(data$other_dev_explain_4_v0)="Other:"
label(data$timing_of_deviation_4_v0)="Timing of deviation"
label(data$dev_id_by_4_v0)="Deviation identified by:"
label(data$protocol_dev_identified_by_4_v0)="Identified by other:"
label(data$details_of_the_dev_4_v0)="Provide details of the deviation:"
label(data$deviation_result_ae_4_v0)="Did the deviation result in an AE occuring?"
label(data$steps_resolve_dev_4_v0)="Explain the steps taken to resolve the deviation:"
label(data$protocol_deviation_repeat_visit_1_complete)="Complete?"
label(data$agreed_to_cgm_v0)="Agreed to CGM"
label(data$date_cgm_placement_v0)="Date of CGM Placement"
label(data$expiration_date_v0)="Expiration Date"
label(data$lot_number_v0)="Lot number"
label(data$sensor_serial_issues_v0)="sensor inserted - serial number"
label(data$time_of_insertion_v0)="Time of insertion"
label(data$cgm_instructions_v0___1)="sensor instruction- given to subject or parent/guardian if subject is a minor (choice=freestyle libre CGM instructions)"
label(data$cgm_instructions_v0___2)="sensor instruction- given to subject or parent/guardian if subject is a minor (choice=FedEx materials needed to send back the Freestyle Libre sensor)"
label(data$cgm_instructions_v0___3)="sensor instruction- given to subject or parent/guardian if subject is a minor (choice=reviewed CGM instructions including duration of wear of 10 days or less)"
label(data$cgm_placement_site_v0)="CGM placement site"
label(data$cgm_uploaded_v0)="Sensor data uploaded"
label(data$sensor_raw_data_upload_v0)="Sensor Raw Data Upload"
label(data$cgm_data_success_failure_v0)="CGM Data collected"
label(data$cgm_gaps_filled_in_v0)="CGM Data Gaps Filled In?"
label(data$number_of_gaps_filled_in_v0)="Number of Gaps Filled In"
label(data$total_time_filled_in_v0)="Total Time Filled In"
label(data$num_days_cgm_wear_v0)="Number of days of CGM wear"
label(data$num_days_good_data_v0)="Number of Days with Good Data"
label(data$num_hours_good_data_v0)="Number of Hours with Good Data"
label(data$total_sensor_readings_v0)="Total Sensor Readings"
label(data$average_sensor_v0)="Average Sensor reading"
label(data$standard_deviation_v0)="Standard Deviation"
label(data$min_sensor_v0)="Minimum Sensor Reading"
label(data$max_sensor_v0)="Maximum Sensor Reading"
label(data$q1_sensor_v0)="First Quartile Sensor Glucose"
label(data$median_sensor_glucose_v0)="Median Sensor Glucose"
label(data$q3_sensor_v0)="Third Quartile Sensor Glucose"
label(data$estimated_a1c_v0)="Estimated A1C"
label(data$excursions_over_120_v0)="Excursions over 120"
label(data$min_spent_over_120_v0)="Time Spent Over 120"
label(data$percent_time_over_120_v0)="Percent of Time Over 120"
label(data$excursions_over_140_v0)="Excursions Over 140"
label(data$min_spent_over_140_v0)="Time Spent Over 140"
label(data$percent_time_over_140_v0)="Percent of Time Over 140"
label(data$excursions_over_180_v0)="Excursions over 180"
label(data$min_spent_over_180_v0)="Time Spent Over 180"
label(data$percent_time_over_180_v0)="Percent Time Spent Over 180"
label(data$excursions_over_200_v0)="Excursions Over 200"
label(data$min_spent_over_200_v0)="Time Spent Over 200"
label(data$percent_time_over_200_v0)="Percent of Time Spent over 200"
label(data$avg_excur_over_140_per_day_v0)="Average amount of Excursions over 140 per day"
label(data$avg_excur_over_200_per_day_v0)="Average Excursions over 200 per day"
label(data$excursions_under_54_v0)="Excursions Under 54"
label(data$time_spent_under_54_v0)="Time Spent Under 54"
label(data$percent_time_under_54_v0)="Percent  of Time Under 54"
label(data$excursions_under_60_v0)="Excursions Under 60"
label(data$time_spent_under_60_v0)="Time Spent Under 60"
label(data$percent_time_under_60_v0)="Percent of Time Under 60"
label(data$excursions_under_70_v0)="Excursions Under 70"
label(data$time_spent_under_70_v0)="Time Spent Under 70"
label(data$percent_time_under_70_v0)="Percent Time Spent Under 70"
label(data$daytime_auc_v0)="Daytime Area Under the Curve"
label(data$daytime_avg_sensor_glucose_v0)="Daytime Average Sensor Glucose"
label(data$daytime_min_sensor_glucose_v0)="Daytime Minimum Sensor Glucose"
label(data$daytime_max_sensor_glucose_v0)="Daytime Maximum Sensor Glucose"
label(data$daytime_sd_v0)="Daytime Standard Deviation"
label(data$nighttime_auc_v0)="Nighttime Area Under the Curve"
label(data$nighttime_avg_sens_glucose_v0)="Nighttime Average Sensor Glucose"
label(data$nighttime_min_sens_glucose_v0)="Nighttime Minimum Sensor Glucose"
label(data$nighttime_max_sens_glucose_v0)="Nighttime Maximum Sensor Glucose"
label(data$nighttime_sd_v0)="Nighttime Standard Deviation"
label(data$auc_over_180_v0)="Area Under the Curve Greater than 180"
label(data$average_auc_180_v0)="Average Area Under the Curve Greater than 180"
label(data$auc_greater_than_98_v0)="Area Under the Curve greater than 98"
label(data$avg_auc_greater_than_98_v0)="Average Area Under the Curve > 98"
label(data$total_auc_v0)="Total Area Under the Curve"
label(data$average_auc_per_day_v0)="Average Area Under the Curve per Day"
label(data$mage_v0)="Mean Amplitude Glycemic Excursion (MAGE)"
label(data$r_mage_v0)="R MAGE"
label(data$m_value_v0)="M-value"
label(data$lability_index_v0)="Lability Index"
label(data$avg_daily_risk_range_v0)="Average Daily Risk Range"
label(data$j_index_v0)="J-Index"
label(data$low_blood_glucose_index_v0)="Low Blood Glucose Index"
label(data$high_blood_glucose_index_v0)="High Blood Glucose Index"
label(data$cont_overall_net_gly_v0)="Continuous Overall Net Glycemic Action"
label(data$mean_of_daily_differences_v0)="Mean of Daily Differences"
label(data$glycemic_risk_assess_v0)="Glycemic Risk Assessment Diabetes Equation"
label(data$mean_absolute_glucose_v0)="Mean Absolute Glucose"
label(data$coefficient_of_variation_v0)="Coefficient of Variation"
label(data$interquartile_range_v0)="Interquartile Range"
label(data$notes_v0)="Notes"
label(data$cgm_data_repeat_visit_1_complete)="Complete?"
label(data$patient_undergo_dexa_v0)="Did the participant undergo a DXA scan?"
label(data$date_of_dxa_v0)="Date of DXA"
label(data$height_dxa_cm_v0)="height day of DXA  (can be the same as in vitals)"
label(data$height_m_v0)="Height in meters"
label(data$make_of_dxa_machine_v0)="Make  of DXA machine"
label(data$model_of_dxa_machine_v0)="Model of DXA machine"
label(data$software_of_dxa_v0)="Software of DXA"
label(data$tissue_g_v0)="Tissue (g)"
label(data$total_fat_mass_v0)="Total Fat Mass (%)"
label(data$fat_g_v0)="Fat Body Mass (g)"
label(data$fat_free_g_v0)="Fat Free Mass (g)"
label(data$lean_mass_g_v0)="Lean Body Mass (g)"
label(data$total_mass_kg_v0)="Total Mass (kg)"
label(data$fat_free_mass_v0)="Fat Free Mass %"
label(data$fat_mass_index_v0)="Fat Mass Index (FMI) "
label(data$lbm_fm_v0)="Lean body mass/fat mass (LBM/FM)"
label(data$fat_free_mass_index_fat_fr_v0)="Fat Free Mass Index  (FFMI)"
label(data$lbmi_v0)="Lean Body Mass Index (LBMI)"
label(data$bmd_z_score_v0)="BMD z-score"
label(data$dxa_data_upload_v0)="Upload any DXA forms here"
label(data$dxa_data_repeat_visit_1_complete)="Complete?"
label(data$participant_withdrawn_v2)="Participant Withdrawn?"
label(data$reason_permanent_withdrawal_v2)="Reason for Permanent Withdrawal "
label(data$reason_temporary_withdrawal_v2)="Reason for Temporary Withdrawal"
label(data$date_of_birth_v2)="Date of Birth"
label(data$sex_v2)="Sex"
label(data$ethnicity_v2)="Ethnicity"
label(data$origin_race_v2)="Ethnic Origin/Race"
label(data$date_of_chart_review_v2)="Date of Chart Review"
label(data$cftr_genotype_available_in_v2)="CFTR genotype available in medical record?"
label(data$cftr_mutation_1_v2)="CFTR Mutation 1"
label(data$other_cftr_mutation_1_v2)="Other CFTR Mutation 1"
label(data$type_of_mutation_1_v2)="Type of Mutation 1"
label(data$cftr_mutation_2_v2)="CFTR Mutation 2"
label(data$other_cftr_mutation_2_v2)="Other CFTR Mutation 2"
label(data$type_of_mutation_2_v2)="Type of Mutation 2"
label(data$mutation_category_v2)="Mutation Category"
label(data$new_born_screen_v2)="New Born Screen positive for CF"
label(data$date_of_cf_diagnosis_v2)="Date of CF Diagnosis"
label(data$sweat_chloride_test_v2)="Sweat Chloride Test"
label(data$sweat_chloride_value_v2)="Sweat Chloride Value"
label(data$sweat_test_date_v2)="Sweat Test Date"
label(data$pancreatic_status_v2)="Pancreatic Status"
label(data$most_recent_sputum_culture_v2___1)="Most Recent Sputum Culture  (choice=Negative)"
label(data$most_recent_sputum_culture_v2___2)="Most Recent Sputum Culture  (choice=MSSA)"
label(data$most_recent_sputum_culture_v2___3)="Most Recent Sputum Culture  (choice=MRSA)"
label(data$most_recent_sputum_culture_v2___4)="Most Recent Sputum Culture  (choice=pseudomonas)"
label(data$most_recent_sputum_culture_v2___5)="Most Recent Sputum Culture  (choice=mucoid pseudomonas)"
label(data$most_recent_sputum_culture_v2___6)="Most Recent Sputum Culture  (choice=B. Cepacia)"
label(data$most_recent_sputum_culture_v2___7)="Most Recent Sputum Culture  (choice=Other Burkholderia species)"
label(data$most_recent_sputum_culture_v2___8)="Most Recent Sputum Culture  (choice=Other)"
label(data$recent_other_sputum_v2)="Other (most recent sputum)"
label(data$sputum_culture_year_v2___1)="Sputum Culture (last 12 months excluding most recent) (choice=Negative)"
label(data$sputum_culture_year_v2___2)="Sputum Culture (last 12 months excluding most recent) (choice=MSSA)"
label(data$sputum_culture_year_v2___3)="Sputum Culture (last 12 months excluding most recent) (choice=MRSA)"
label(data$sputum_culture_year_v2___4)="Sputum Culture (last 12 months excluding most recent) (choice=pseudomonas)"
label(data$sputum_culture_year_v2___5)="Sputum Culture (last 12 months excluding most recent) (choice=mucoid pseudomonas)"
label(data$sputum_culture_year_v2___6)="Sputum Culture (last 12 months excluding most recent) (choice=B. Cepacia)"
label(data$sputum_culture_year_v2___7)="Sputum Culture (last 12 months excluding most recent) (choice=Other Burkholderia species)"
label(data$sputum_culture_year_v2___8)="Sputum Culture (last 12 months excluding most recent) (choice=Other)"
label(data$sputum_other_v2)="Other (specify) "
label(data$liver_disease_v2)="Liver disease"
label(data$num_hospitalizations_v2)="Number of hospitalizations for pulmonary exacerbation in past 12 months"
label(data$corrector_yes_no_v2)="Is the subject on a corrector/potentiator medication? (any medication including some combination of ivacaftor, lumacaftor, tezcaftor, symdeko, kalydeco, orkambi)"
label(data$corrector_start_date_v2)="Corrector Start Date"
label(data$corrector_v2___1)="What corrector/potentiator is the subject taking (choice=ivacaftor (Kalydeco))"
label(data$corrector_v2___2)="What corrector/potentiator is the subject taking (choice=ivacaftor/lumacaftor (orkambi))"
label(data$corrector_v2___3)="What corrector/potentiator is the subject taking (choice=tezacaftor/ivacaftor (symdeko))"
label(data$corrector_v2___4)="What corrector/potentiator is the subject taking (choice=triple therapy (ivacaftor + 2 other drugs))"
label(data$corrector_v2___5)="What corrector/potentiator is the subject taking (choice=other)"
label(data$cf_corrector_other_v2)="Other (specify)"
label(data$family_history_diabetes_v2)="Family History of Diabetes"
label(data$relative_with_diabetes_v2___1)="Relative with Diabetes (choice=First Degree (mother, father, sibling, child))"
label(data$relative_with_diabetes_v2___2)="Relative with Diabetes (choice=Second Degree (grandparent, uncle, aunt, half-sibling))"
label(data$relative_with_diabetes_v2___3)="Relative with Diabetes (choice=Other)"
label(data$relative_with_diabetes_v2___4)="Relative with Diabetes (choice=Unknown)"
label(data$diabetes_hisotry_type_v2___1)="Diabetes History type  (choice=Type 1)"
label(data$diabetes_hisotry_type_v2___2)="Diabetes History type  (choice=Type 2)"
label(data$diabetes_hisotry_type_v2___3)="Diabetes History type  (choice=Other)"
label(data$diabetes_hisotry_type_v2___4)="Diabetes History type  (choice=Unknown)"
label(data$notes_family_member_v2)="Notes (family member specifics, etc) "
label(data$chart_review_notes_v2)="Chart Review Notes"
label(data$demographics_and_cf_historysecond_visit_complete)="Complete?"
label(data$antibiotics_v2___1)="Antibiotics (choice=Azithromycin)"
label(data$antibiotics_v2___2)="Antibiotics (choice=Azithromycin +1)"
label(data$antibiotics_v2___3)="Antibiotics (choice=Azithromycin +2 or more)"
label(data$antibiotics_v2___4)="Antibiotics (choice=No antibiotics)"
label(data$antibiotics_v2___5)="Antibiotics (choice=Other)"
label(data$inhaled_steroids_v2)="Inhaled Steroids"
label(data$patient_using_flonase_v2)="Is the patient using Flonase nasal spray (fluticasone)?"
label(data$inhaled_beta_agonist_v2)="Inhaled beta agonist  (ie: inhaled albuterol or salmeterol)"
label(data$pancreatic_enzyme_therapy_v2)="Pancreatic Enzyme Therapy (PERT) "
label(data$systemic_steroid_therapy_v2___1)="Systemic Steroid Therapy  (choice=Prednisone Daily)"
label(data$systemic_steroid_therapy_v2___2)="Systemic Steroid Therapy  (choice=Prednisone Every Other Day)"
label(data$systemic_steroid_therapy_v2___3)="Systemic Steroid Therapy  (choice=Dexamethasone Daily)"
label(data$systemic_steroid_therapy_v2___4)="Systemic Steroid Therapy  (choice=Oral Hydrocortisone Daily)"
label(data$systemic_steroid_therapy_v2___5)="Systemic Steroid Therapy  (choice=Methylprednisone IV (any frequency))"
label(data$systemic_steroid_therapy_v2___6)="Systemic Steroid Therapy  (choice=No systemic steroid therapy)"
label(data$cf_multivitamins_aquadeks_v2)="CF multivitamins (aquaDEKS, DEKA, etc.)"
label(data$vitamin_d_in_addition_to_m_v2)="Vitamin D (in addition to multivitamin)"
label(data$high_dose_ibuprofen_v2)="Ibuprofen"
label(data$inhaled_antibiotics_v2)="Inhaled antibiotics  (aztreonam: (cayston, aztreonam inhaled solution), tobramycin (tobi, tobramycin inhaled, tobi podhaler))"
label(data$ursodiol_v2)="Ursodiol"
label(data$gen_1_atyp_antipsych_v2___0)="Are they on any of these first generation Atypical Anti-psychotics? (choice=None)"
label(data$gen_1_atyp_antipsych_v2___1)="Are they on any of these first generation Atypical Anti-psychotics? (choice=Chlorpromazine)"
label(data$gen_1_atyp_antipsych_v2___2)="Are they on any of these first generation Atypical Anti-psychotics? (choice=Fluphenazine)"
label(data$gen_1_atyp_antipsych_v2___3)="Are they on any of these first generation Atypical Anti-psychotics? (choice=Haloperidol)"
label(data$gen_1_atyp_antipsych_v2___4)="Are they on any of these first generation Atypical Anti-psychotics? (choice=Loxapine)"
label(data$gen_1_atyp_antipsych_v2___5)="Are they on any of these first generation Atypical Anti-psychotics? (choice=Perphenazine)"
label(data$gen_1_atyp_antipsych_v2___6)="Are they on any of these first generation Atypical Anti-psychotics? (choice=Pimozide)"
label(data$gen_1_atyp_antipsych_v2___7)="Are they on any of these first generation Atypical Anti-psychotics? (choice=Thioridazine)"
label(data$gen_1_atyp_antipsych_v2___8)="Are they on any of these first generation Atypical Anti-psychotics? (choice=Thiothixene)"
label(data$gen_1_atyp_antipsych_v2___9)="Are they on any of these first generation Atypical Anti-psychotics? (choice=Trifluoperazine)"
label(data$gen_2_atyp_antipsych_v2___0)="Are they on any of these second generation Atypical Anti-psychotics?  (choice=None)"
label(data$gen_2_atyp_antipsych_v2___1)="Are they on any of these second generation Atypical Anti-psychotics?  (choice=Aripiprazole)"
label(data$gen_2_atyp_antipsych_v2___2)="Are they on any of these second generation Atypical Anti-psychotics?  (choice=Asenapine)"
label(data$gen_2_atyp_antipsych_v2___3)="Are they on any of these second generation Atypical Anti-psychotics?  (choice=Brexpiprazole)"
label(data$gen_2_atyp_antipsych_v2___4)="Are they on any of these second generation Atypical Anti-psychotics?  (choice=Cariprazine)"
label(data$gen_2_atyp_antipsych_v2___5)="Are they on any of these second generation Atypical Anti-psychotics?  (choice=Clozapine (Clozaril; FazaClo; Versacloz))"
label(data$gen_2_atyp_antipsych_v2___6)="Are they on any of these second generation Atypical Anti-psychotics?  (choice=Iloperidone)"
label(data$gen_2_atyp_antipsych_v2___7)="Are they on any of these second generation Atypical Anti-psychotics?  (choice=Lurasidone)"
label(data$gen_2_atyp_antipsych_v2___8)="Are they on any of these second generation Atypical Anti-psychotics?  (choice=Olanzapine (Zyprexa (all formulations)))"
label(data$gen_2_atyp_antipsych_v2___9)="Are they on any of these second generation Atypical Anti-psychotics?  (choice=Paliperidone)"
label(data$gen_2_atyp_antipsych_v2___10)="Are they on any of these second generation Atypical Anti-psychotics?  (choice=Pimavanserin)"
label(data$gen_2_atyp_antipsych_v2___11)="Are they on any of these second generation Atypical Anti-psychotics?  (choice=Quetiapine (Seroquel (all formulations)))"
label(data$gen_2_atyp_antipsych_v2___12)="Are they on any of these second generation Atypical Anti-psychotics?  (choice=Risperidone (Risperdal (all formulations)))"
label(data$gen_2_atyp_antipsych_v2___13)="Are they on any of these second generation Atypical Anti-psychotics?  (choice=Ziprasidone)"
label(data$medication_notes_v2)="Medication Notes: (Any immunosupressants, anti-inflammatory medications?)  "
label(data$current_medications_second_visit_complete)="Complete?"
label(data$date_visit_v2)="Date of visit"
label(data$age_visit_v2)="Age at visit:"
label(data$cf_yes_no_inclusion_v2)="Clinical diagnosis of Cystic Fibrosis (by newborn screen, sweat chloride >60, or genetic testing)"
label(data$age_6_yes_no_inclusion_v2)="Age 6.0 years or older (at time of consent)"
label(data$clin_stable_yes_no_inclusion_v2)="Clinically stable last 3 weeks (no major clinical events such as pulmonary exacerbations requiring IV antibiotics either at home or in hospital, no initiation of oral steroid therapy)"
label(data$other_diabetes_yes_no_v2)="Diagnosis of type 1 diabetes, type 2 diabetes or MODY diabetes"
label(data$organ_tx_yes_no_v2)="History of organ transplantation"
label(data$cfrd_diabetes_med_yes_no_v2)="NEW diagnosis of CFRD or on any anti-diabetic medication for any reason in the previous 6 months, not including short term insulin while on high-dose steroids. "
label(data$pulm_ex_last3months_v2)="Pulmonary exacerbation associated with iv antibiotics or oral steroids in last 4 weeks"
label(data$corrector_yes_no_exclusion_v2)="On a CFTR corrector/modulator less than 8 weeks (e.g. ivacaftor, tezcaftor, lumacaftor, Orkambi, kalydeco, symdeko, or any combination of these drugs)"
label(data$consent_completed_v2)="Consent completed"
label(data$date_consent_signed_v2)="Date Consent Signed "
label(data$consent_form_pdf_v2)="Signed consent form"
label(data$date_assent_signed_v2)="Date Assent Signed"
label(data$assent_form_pdf_v2)="Signed Assent form"
label(data$updated_consent_signed_v2)="Date of Updated Consent Signed "
label(data$updated_consent_form_v2)="Upload updated consent form"
label(data$update_assent_signed_v2)="Updated Assent Signed Date"
label(data$updated_assent_form_v2)="Upload Updated Assent Form"
label(data$upt_v2)="Urine pregnancy test "
label(data$inclusionexclusion_second_visit_complete)="Complete?"
label(data$fast_hours_v2)="Subject fasting for at least 8 hrs:"
label(data$systolic_bp_v2)="Systolic Blood Pressure"
label(data$diastolic_bp_v2)="Diastolic Blood Pressure"
label(data$pulse_v2)="Pulse"
label(data$respiratory_rate_v2)="Respiratory Rate"
label(data$height_v2)="Height (cm)"
label(data$weight_v2)="Weight (kg)"
label(data$tanner_stage_v2)="Tanner stage (OLD)"
label(data$tanner_female_pubic_v2)="NEW Tanner staging female pubic hair"
label(data$tanner_breast_dev_v2)="NEW Tanner staging breast development"
label(data$tanner_male_pubic_v2)="NEW Tanner staging male pubic hair"
label(data$tanner_testicular_vol_v2)="NEW Tanner staging testicular volume"
label(data$notes_on_testicular_volume_v2)="Notes on Testicular Volume Tanner Staging"
label(data$type_of_temperature_v2)="Type of temperature "
label(data$tympanic_temperature_v2)="Tympanic Temperature"
label(data$oral_temperature_v2)="Oral Temperature"
label(data$temporal_temperature_v2)="Temporal Temperature"
label(data$numbing_cream_v2___1)="Place numbing cream per institutional protocol.  If patient or guardian wishes to not use numbing cream, they may decline.    (choice=LMX or EMLA placed per institutional protocol)"
label(data$numbing_cream_v2___2)="Place numbing cream per institutional protocol.  If patient or guardian wishes to not use numbing cream, they may decline.    (choice=numbing declined)"
label(data$problem_numbing_v2)="Concerns or problems with numbing cream, please note"
label(data$iv_notes_v2)="IV placement notes  note any difficulties with placement and number of trials to place IV (no more than 3 allowed, unless explicit and documented permission is given by subject and guardian if subject is minor child"
label(data$fasting_time_v2)="Fasting Draw Time "
label(data$a1c_result_v2)="A1C result"
label(data$gluc_dose_v2)="Administer glucose beverage orally  Glucola dose: (1.75 g/kg, maximum dose 75 g)"
label(data$gluc_start_v2)="Record time at which subject began drinking glucola  Glucola Start time:"
label(data$gluc_stop_v2)="Glucola Stop time:"
label(data$time_drink_glucola_v2)="Time to drink glucola"
label(data$glucola_notes_v2)="Glucola Notes "
label(data$ten_min_time_v2)="10 minute draw time"
label(data$thirty_min_time_v2)="30 minute draw time"
label(data$sixty_min_time_v2)="60 minute draw time"
label(data$ninety_min_time_v2)="90 minute draw time"
label(data$onetwenty_min_time_v2)="120 minute draw time"
label(data$pocglucose_120_v2)="POC glucose @120 min"
label(data$hypoglycemia_symptoms_yesno_v2)="Are there symptoms of hypoglycemia? (subject feels sweaty, shaky, hungry, faint, pale)"
label(data$protocol_continued_70_50_v2___1)="If blood sugar < 70 mg/dl but > 50 mg/dl AND 	not symptomatic, continue research protocol.  (choice=blood sugar was < 70 mg/dl, but >50 mg/dl AND patient was not symptomatic)"
label(data$protocol_continued_70_50_v2___2)="If blood sugar < 70 mg/dl but > 50 mg/dl AND 	not symptomatic, continue research protocol.  (choice=research protocol continued)"
label(data$protocol_continued_70_52_sym_v2___1)="If blood sugar < 70 mg/dl but > 50 mg/dl AND  subject is symptomatic (sweaty, shaky, hungry, fait, pale) call provider (choice=blood sugar was < 70 mg/dl, but >50 mg/dl AND patient *was* symptomatic)"
label(data$protocol_continued_70_52_sym_v2___2)="If blood sugar < 70 mg/dl but > 50 mg/dl AND  subject is symptomatic (sweaty, shaky, hungry, fait, pale) call provider (choice=provider contacted)"
label(data$pocgluocse50andsymptoms_1_v2___1)="If POC glucose < 50 mg/dl AND subject is symptomatic repeat POC glucose STAT and if still < 50 mg/dl, give 4 oz juice and notify provider repeat POC glucose in 15 min if still < 50 mg/dl give 4 oz juice and notify provider repeat POC glucose and 4 oz juice every 15 min until POC glucose is >60 mg/dl (choice=repeat POC glucose STAT)"
label(data$pocgluocse50andsymptoms_1_v2___2)="If POC glucose < 50 mg/dl AND subject is symptomatic repeat POC glucose STAT and if still < 50 mg/dl, give 4 oz juice and notify provider repeat POC glucose in 15 min if still < 50 mg/dl give 4 oz juice and notify provider repeat POC glucose and 4 oz juice every 15 min until POC glucose is >60 mg/dl (choice=if < 50 mg/dl give 4 oz juice immediately)"
label(data$pocgluocse50andsymptoms_1_v2___3)="If POC glucose < 50 mg/dl AND subject is symptomatic repeat POC glucose STAT and if still < 50 mg/dl, give 4 oz juice and notify provider repeat POC glucose in 15 min if still < 50 mg/dl give 4 oz juice and notify provider repeat POC glucose and 4 oz juice every 15 min until POC glucose is >60 mg/dl (choice=contact provider)"
label(data$pocgluocse50andsymptoms_1_v2___4)="If POC glucose < 50 mg/dl AND subject is symptomatic repeat POC glucose STAT and if still < 50 mg/dl, give 4 oz juice and notify provider repeat POC glucose in 15 min if still < 50 mg/dl give 4 oz juice and notify provider repeat POC glucose and 4 oz juice every 15 min until POC glucose is >60 mg/dl (choice=repeat POC glucose in 15 min)"
label(data$pocgluocse50andsymptoms_1_v2___5)="If POC glucose < 50 mg/dl AND subject is symptomatic repeat POC glucose STAT and if still < 50 mg/dl, give 4 oz juice and notify provider repeat POC glucose in 15 min if still < 50 mg/dl give 4 oz juice and notify provider repeat POC glucose and 4 oz juice every 15 min until POC glucose is >60 mg/dl (choice=treat with 4 oz juice if POC blood glucose still < 50 mg/dl)"
label(data$pocglucose12050nosyx_v2___1)="If Blood sugar < 50 mg/dl AND not symptomatic, repeat glucometer BG in 15 minutes and notify provider 	 (choice=provider notified)"
label(data$pocglucose12050nosyx_v2___2)="If Blood sugar < 50 mg/dl AND not symptomatic, repeat glucometer BG in 15 minutes and notify provider 	 (choice=POC blood glucose repeated (15 min later, @ 135 min))"
label(data$onefifty_min_time_v2)="150 minute draw time"
label(data$pocglucose_150_v2)="POC glucose @150 min"
label(data$hypoglycemia_symptoms_yesno_2_v2)="Are there symptoms of hypoglycemia? (subject feels sweaty, shaky, hungry, faint, pale)"
label(data$protocol_continued_70_51_v2___1)="If blood sugar < 70 mg/dl but > 50 mg/dl AND 	not symptomatic, continue research protocol.  (choice=blood sugar was < 70 mg/dl, but >50 mg/dl AND patient was not symptomatic)"
label(data$protocol_continued_70_51_v2___2)="If blood sugar < 70 mg/dl but > 50 mg/dl AND 	not symptomatic, continue research protocol.  (choice=research protocol continued)"
label(data$protocol_continued_70_52_sym_2_v2___1)="If blood sugar < 70 mg/dl but > 50 mg/dl AND  subject is symptomatic (sweaty, shaky, hungry, faint, pale) call provider (choice=blood sugar was < 70 mg/dl, but >50 mg/dl AND patient *was* symptomatic)"
label(data$protocol_continued_70_52_sym_2_v2___2)="If blood sugar < 70 mg/dl but > 50 mg/dl AND  subject is symptomatic (sweaty, shaky, hungry, faint, pale) call provider (choice=provider contacted)"
label(data$pocglucose12050nosyx_2_v2___1)="If Blood sugar < 50 mg/dl AND not symptomatic, repeat glucometer BG in 15 minutes and notify provider   (choice=provider notified)"
label(data$pocglucose12050nosyx_2_v2___2)="If Blood sugar < 50 mg/dl AND not symptomatic, repeat glucometer BG in 15 minutes and notify provider   (choice=POC blood glucose repeated (15 min later, @ 165 min))"
label(data$pocgluocse50andsymptoms_2_v2___1)="If POC glucose < 50 mg/dl AND subject is symptomatic repeat POC glucose STAT and if still < 50 mg/dl, give 4 oz juice and notify provider repeat POC glucose in 15 min if still < 50 mg/dl give 4 oz juice and notify provider repeat POC glucose and 4 oz juice every 15 min until POC glucose is >60 mg/dl (choice=repeat POC glucose STAT)"
label(data$pocgluocse50andsymptoms_2_v2___2)="If POC glucose < 50 mg/dl AND subject is symptomatic repeat POC glucose STAT and if still < 50 mg/dl, give 4 oz juice and notify provider repeat POC glucose in 15 min if still < 50 mg/dl give 4 oz juice and notify provider repeat POC glucose and 4 oz juice every 15 min until POC glucose is >60 mg/dl (choice=if < 50 mg/dl give 4 oz juice immediately)"
label(data$pocgluocse50andsymptoms_2_v2___3)="If POC glucose < 50 mg/dl AND subject is symptomatic repeat POC glucose STAT and if still < 50 mg/dl, give 4 oz juice and notify provider repeat POC glucose in 15 min if still < 50 mg/dl give 4 oz juice and notify provider repeat POC glucose and 4 oz juice every 15 min until POC glucose is >60 mg/dl (choice=contact provider)"
label(data$pocgluocse50andsymptoms_2_v2___4)="If POC glucose < 50 mg/dl AND subject is symptomatic repeat POC glucose STAT and if still < 50 mg/dl, give 4 oz juice and notify provider repeat POC glucose in 15 min if still < 50 mg/dl give 4 oz juice and notify provider repeat POC glucose and 4 oz juice every 15 min until POC glucose is >60 mg/dl (choice=repeat POC glucose in 15 min)"
label(data$pocgluocse50andsymptoms_2_v2___5)="If POC glucose < 50 mg/dl AND subject is symptomatic repeat POC glucose STAT and if still < 50 mg/dl, give 4 oz juice and notify provider repeat POC glucose in 15 min if still < 50 mg/dl give 4 oz juice and notify provider repeat POC glucose and 4 oz juice every 15 min until POC glucose is >60 mg/dl (choice=treat with 4 oz juice if POC blood glucose still < 50 mg/dl)"
label(data$oneeighty_min_time_v2)="180 minute draw time"
label(data$pocglucose_180_v2)="POC glucose @180 min"
label(data$hypoglycemia_symptoms_yesno_3_v2)="Are there symptoms of hypoglycemia? (subject feels sweaty, shaky, hungry, faint, pale)"
label(data$protocol_continued_70_52_v2___1)="If blood sugar < 70 mg/dl but > 50 mg/dl AND 	not symptomatic, continue research protocol.  (choice=blood sugar was < 70 mg/dl, but >50 mg/dl AND patient was not symptomatic)"
label(data$protocol_continued_70_52_v2___2)="If blood sugar < 70 mg/dl but > 50 mg/dl AND 	not symptomatic, continue research protocol.  (choice=research protocol continued)"
label(data$protocol_continued_70_52_sym_3_v2___1)="If blood sugar < 70 mg/dl but > 50 mg/dl AND  subject is symptomatic (sweaty, shaky, hungry, fait, pale) call provider (choice=blood sugar was < 70 mg/dl, but >50 mg/dl AND patient *was* symptomatic)"
label(data$protocol_continued_70_52_sym_3_v2___2)="If blood sugar < 70 mg/dl but > 50 mg/dl AND  subject is symptomatic (sweaty, shaky, hungry, fait, pale) call provider (choice=provider contacted)"
label(data$pocglucose12050nosyx_3_v2___1)="If Blood sugar < 50 mg/dl AND not symptomatic, repeat glucometer BG in 15 minutes and notify provider   (choice=provider notified)"
label(data$pocglucose12050nosyx_3_v2___2)="If Blood sugar < 50 mg/dl AND not symptomatic, repeat glucometer BG in 15 minutes and notify provider   (choice=POC blood glucose repeated (15 min later, @ 195 min))"
label(data$pocgluocse50andsymptoms_3_v2___1)="If POC glucose < 50 mg/dl AND subject is symptomatic repeat POC glucose STAT and if still < 50 mg/dl, give 4 oz juice and notify provider repeat POC glucose in 15 min if still < 50 mg/dl give 4 oz juice and notify provider repeat POC glucose and 4 oz juice every 15 min until POC glucose is >60 mg/dl (choice=repeat POC glucose STAT)"
label(data$pocgluocse50andsymptoms_3_v2___2)="If POC glucose < 50 mg/dl AND subject is symptomatic repeat POC glucose STAT and if still < 50 mg/dl, give 4 oz juice and notify provider repeat POC glucose in 15 min if still < 50 mg/dl give 4 oz juice and notify provider repeat POC glucose and 4 oz juice every 15 min until POC glucose is >60 mg/dl (choice=if < 50 mg/dl give 4 oz juice immediately)"
label(data$pocgluocse50andsymptoms_3_v2___3)="If POC glucose < 50 mg/dl AND subject is symptomatic repeat POC glucose STAT and if still < 50 mg/dl, give 4 oz juice and notify provider repeat POC glucose in 15 min if still < 50 mg/dl give 4 oz juice and notify provider repeat POC glucose and 4 oz juice every 15 min until POC glucose is >60 mg/dl (choice=contact provider)"
label(data$pocgluocse50andsymptoms_3_v2___4)="If POC glucose < 50 mg/dl AND subject is symptomatic repeat POC glucose STAT and if still < 50 mg/dl, give 4 oz juice and notify provider repeat POC glucose in 15 min if still < 50 mg/dl give 4 oz juice and notify provider repeat POC glucose and 4 oz juice every 15 min until POC glucose is >60 mg/dl (choice=repeat POC glucose in 15 min)"
label(data$pocgluocse50andsymptoms_3_v2___5)="If POC glucose < 50 mg/dl AND subject is symptomatic repeat POC glucose STAT and if still < 50 mg/dl, give 4 oz juice and notify provider repeat POC glucose in 15 min if still < 50 mg/dl give 4 oz juice and notify provider repeat POC glucose and 4 oz juice every 15 min until POC glucose is >60 mg/dl (choice=treat with 4 oz juice if POC blood glucose still < 50 mg/dl)"
label(data$random_hypoglycemia_ogtt_v2)="Random Hypoglycemia During OGTT?"
label(data$time_random_hypo_v2)="Timepoint Random Hypoglycemia"
label(data$rand_hypo_glucose_value_v2)="Random Hypoglycemia Glucose Value"
label(data$random_hypoglycemia_ogtt_2_v2)="Another Random Hypoglycemia During OGTT?"
label(data$time_random_hypo_2_v2)="Timepoint Random Hypoglycemia"
label(data$rand_hypo_glucose_value_2_v2)="Random Hypoglycemia Glucose Value"
label(data$random_hypoglycemia_ogtt_3_v2)="Another Random Hypoglycemia During OGTT?"
label(data$time_random_hypo_3_v2)="Timepoint Random Hypoglycemia"
label(data$rand_hypo_glucose_value_3_v2)="Random Hypoglycemia Glucose Value"
label(data$random_hypoglycemia_ogtt_4_v2)="Another Random Hypoglycemia During OGTT?"
label(data$time_random_hypo_4_v2)="Timepoint Random Hypoglycemia"
label(data$rand_hypo_glucose_value_4_v2)="Random Hypoglycemia Glucose Value"
label(data$random_hypoglycemia_ogtt_5_v2)="Another Random Hypoglycemia During OGTT?"
label(data$time_random_hypo_5_v2)="Timepoint Random Hypoglycemia"
label(data$rand_hypo_glucose_value_5_v2)="Random Hypoglycemia Glucose Value"
label(data$ogtt_notes_v2)="Notes from OGTT"
label(data$pocglucose_discharge_v2)="POC glucose before discharge"
label(data$dischargepoc70_v2)="If discharge POC glucose is >/=70 mg/dl, may remove IV and discharge subject"
label(data$dischargepocless70_v2)="If discharge POC glucose is < 70 mg/dl, provide another 15 grams of crabohydrates, ie. juice and then may remove IV and discharge"
label(data$ogtt_documentation_second_visit_complete)="Complete?"
label(data$heart_pounding_baseline_v2)="Heart Pounding @baseline"
label(data$shaky_tremulous_baseline_v2)="Shaky/tremulous @baseline"
label(data$nervous_anxious_baseline_v2)="Nervous/anxious @baseline"
label(data$sweaty_baseline_v2)="Sweaty @baseline"
label(data$hungry_baseline_v2)="Hungry @baseline"
label(data$tingling_baseline_v2)="Tingling @baseline"
label(data$diff_thinking_baseline_v2)="Difficulty Thinking @baseline"
label(data$tired_drowsy_baseline_v2)="Tired/drowsy @baseline"
label(data$weak_baseline_v2)="Weak @baseline"
label(data$warm_baseline_v2)="Warm @baseline"
label(data$faint_baseline_v2)="Faint @baseline"
label(data$dizzy_baseline_v2)="Dizzy @baseline"
label(data$adren_score_baseline_v2)="Adrenergic Score @baseline"
label(data$neuro_score_baseline_v2)="Neuroglycopenic Score @baseline"
label(data$total_score_baseline_v2)="Total Score @baseline"
label(data$heart_pounding_120_v2)="Heart pounding @120"
label(data$shaky_tremulous_120_v2)="Shaky/tremulous @120"
label(data$nervous_anxious_120_v2)="Nervous/anxious @120"
label(data$sweaty_120_v2)="Sweaty @120"
label(data$hungry_120_v2)="Hungry @120"
label(data$tingling_120_v2)="Tingling @120"
label(data$diff_thinking_120_v2)="Difficulty Thinking @120"
label(data$tired_drowsy_120_v2)="Tired/drowsy @120"
label(data$weak_120_v2)="Weak @120"
label(data$warm_120_v2)="Warm @120"
label(data$faint_120_v2)="Faint @120"
label(data$dizzy_120_v2)="Dizzy @120"
label(data$adren_score_120_v2)="Adrenergic Score @120"
label(data$neuro_score_120_v2)="Neuroglycopenic Score @120 "
label(data$total_score_120_v2)="Total Score @120"
label(data$heart_pounding_150_v2)="Heart Pounding @150"
label(data$shaky_tremulous_150_v2)="Shaky/tremulous @150"
label(data$nervous_anxious_150_v2)="Nervous/anxious @150"
label(data$sweaty_150_v2)="Sweaty @150"
label(data$hungry_150_v2)="Hungry @150"
label(data$tingling_150_v2)="Tingling @150"
label(data$diff_thinking_150_v2)="Difficulty Thinking @150"
label(data$tired_drowsy_150_v2)="Tired/drowsy @150"
label(data$weak_150_v2)="Weak @150"
label(data$warm_150_v2)="Warm @150"
label(data$faint_150_v2)="Faint @150"
label(data$dizzy_150_v2)="Dizzy @150"
label(data$adren_score_150_v2)="Adrenergic Score @150"
label(data$neuro_score_150_v2)="Neuroglycopenic Score @150"
label(data$total_score_150_v2)="Total Score @ 150"
label(data$heart_pounding_180_v2)="Heart Pounding @180"
label(data$shaky_tremulous_180_v2)="Shaky/tremulous @180"
label(data$nervous_anxious_180_v2)="Nervous/anxious @180"
label(data$sweaty_180_v2)="Sweaty @180"
label(data$hungry_180_v2)="Hungry @180"
label(data$tingling_180_v2)="Tingling @180"
label(data$diff_thinking_180_v2)="Difficulty thinking @180"
label(data$tired_drowsy_180_v2)="Tired/drowsy @180"
label(data$weak_180_v2)="Weak @180"
label(data$warm_180_v2)="Warm @180"
label(data$faint_180_v2)="Faint @180"
label(data$dizzy_180_v2)="Dizzy @180"
label(data$adren_score_180_v2)="Adrenergic Score @180"
label(data$neuro_score_180_v2)="Neuroglycopenic Score @180"
label(data$total_score_180_v2)="Total Score @180"
label(data$ogtt_hypoglycemia_questionnairessecond_visit_complete)="Complete?"
label(data$shaking_peds_base_v2)="Shaky"
label(data$fast_heart_peds_base_v2)="Fast Heart Beat"
label(data$sweating_peds_base_v2)="Sweaty"
label(data$weak_peds_base_v2)="Tired but not sleepy"
label(data$hunger_peds_base_v2)="Hungry"
label(data$irritable_peds_base_v2)="Grumpy but not sure why"
label(data$num_symptoms_base_v2)="Number of Hypoglycemic Symptoms @Baseline"
label(data$shaking_peds_120_v2)="Shaky"
label(data$fast_heart_peds_120_v2)="Fast Heart Beat"
label(data$sweating_peds_120_v2)="Sweaty"
label(data$weak_peds_120_v2)="Tired but not sleepy"
label(data$hunger_peds_120_v2)="Hungry"
label(data$irritable_peds_120_v2)="Grumpy but not sure why"
label(data$num_symptoms_120_v2)="Number of Symptoms @120"
label(data$shaking_peds_150_v2)="Shaky"
label(data$fast_heart_peds_150_v2)="Fast Heart Beat"
label(data$sweating_peds_150_v2)="Sweaty"
label(data$weak_peds_150_v2)="Tired but not sleepy"
label(data$hunger_peds_150_v2)="Hungry"
label(data$irritable_peds_150_v2)="Grumpy but not sure why"
label(data$num_symptoms_150_v2)="Number of Symptoms @150"
label(data$shaking_peds_180_v2)="Shaky"
label(data$fast_heart_peds_180_v2)="Fast Heart Beat"
label(data$sweating_peds_180_v2)="Sweaty"
label(data$weak_peds_180_v2)="Tired but not sleepy"
label(data$hunger_peds_180_v2)="Hungry"
label(data$irritable_peds_180_v2)="Grumpy but not sure why"
label(data$num_symptoms_180_v2)="Number of Symptoms @180"
label(data$ogtt_hypoglycemia_questionnaire_age_618_second_vis_complete)="Complete?"
label(data$questionnaire_filled_out_v2)="Questionnaire filled out?"
label(data$v2_home_hypo)="Did the patient feel symptoms of hypoglycemia while wearing a CGM?"
label(data$date_of_hypoglycemia_event_v2)="Date of hypoglycemia event"
label(data$time_of_hypoglycemia_event_v2)="Time of Hypoglycemia event"
label(data$i_feel_v2___0)="I felt this during hypoglycemia event... (choice=Heart pounding)"
label(data$i_feel_v2___1)="I felt this during hypoglycemia event... (choice=Shaky)"
label(data$i_feel_v2___2)="I felt this during hypoglycemia event... (choice=Nervous)"
label(data$i_feel_v2___3)="I felt this during hypoglycemia event... (choice=Sweaty)"
label(data$i_feel_v2___4)="I felt this during hypoglycemia event... (choice=Hungry)"
label(data$i_feel_v2___5)="I felt this during hypoglycemia event... (choice=Tingling)"
label(data$i_feel_v2___6)="I felt this during hypoglycemia event... (choice=Difficulty Thinking)"
label(data$i_feel_v2___7)="I felt this during hypoglycemia event... (choice=Tired)"
label(data$i_feel_v2___8)="I felt this during hypoglycemia event... (choice=Weak)"
label(data$i_feel_v2___9)="I felt this during hypoglycemia event... (choice=Warm)"
label(data$i_feel_v2___10)="I felt this during hypoglycemia event... (choice=Faint)"
label(data$i_feel_v2___11)="I felt this during hypoglycemia event... (choice=Dizzy)"
label(data$other_hypoglycemia_feeling_v2)="Other Hypoglycemia feeling..."
label(data$it_was_recognized_by_v2)="It was recognized by..."
label(data$i_needed_v2___0)="I needed this for my hypoglycemia event... (choice=Juice/food)"
label(data$i_needed_v2___1)="I needed this for my hypoglycemia event... (choice=Help from someone else)"
label(data$i_needed_v2___2)="I needed this for my hypoglycemia event... (choice=Nothing)"
label(data$juice_or_food_v2)="If juice or food was taken, did it make you feel better?"
label(data$another_section_1_v2)="Another home hypoglycemia section filled out?"
label(data$date_of_hypoglycemia_event_2_v2)="Date of hypoglycemia event"
label(data$time_of_hypoglycemia_event_2_v2)="Time of Hypoglycemia event"
label(data$i_feel_2_v2___0)="I felt this during hypoglycemia event... (choice=Heart pounding)"
label(data$i_feel_2_v2___1)="I felt this during hypoglycemia event... (choice=Shaky)"
label(data$i_feel_2_v2___2)="I felt this during hypoglycemia event... (choice=Nervous)"
label(data$i_feel_2_v2___3)="I felt this during hypoglycemia event... (choice=Sweaty)"
label(data$i_feel_2_v2___4)="I felt this during hypoglycemia event... (choice=Hungry)"
label(data$i_feel_2_v2___5)="I felt this during hypoglycemia event... (choice=Tingling)"
label(data$i_feel_2_v2___6)="I felt this during hypoglycemia event... (choice=Difficulty Thinking)"
label(data$i_feel_2_v2___7)="I felt this during hypoglycemia event... (choice=Tired)"
label(data$i_feel_2_v2___8)="I felt this during hypoglycemia event... (choice=Weak)"
label(data$i_feel_2_v2___9)="I felt this during hypoglycemia event... (choice=Warm)"
label(data$i_feel_2_v2___10)="I felt this during hypoglycemia event... (choice=Faint)"
label(data$i_feel_2_v2___11)="I felt this during hypoglycemia event... (choice=Dizzy)"
label(data$other_hypoglycemia_feeling_2_v2)="Other Hypoglycemia feeling..."
label(data$it_was_recognized_by_2_v2)="It was recognized by..."
label(data$i_needed_2_v2___0)="I needed this for my hypoglycemia event... (choice=Juice/food)"
label(data$i_needed_2_v2___1)="I needed this for my hypoglycemia event... (choice=Help from someone else)"
label(data$i_needed_2_v2___2)="I needed this for my hypoglycemia event... (choice=Nothing)"
label(data$juice_or_food_2_v2)="If juice or food was taken, did it make you feel better?"
label(data$another_section_2_v2)="Third hypoglycemia section filled out?"
label(data$date_of_hypoglycemia_event_3_v2)="Date of hypoglycemia event"
label(data$time_of_hypoglycemia_event_3_v2)="Time of Hypoglycemia event"
label(data$i_feel_3_v2___0)="I felt this during hypoglycemia event... (choice=Heart pounding)"
label(data$i_feel_3_v2___1)="I felt this during hypoglycemia event... (choice=Shaky)"
label(data$i_feel_3_v2___2)="I felt this during hypoglycemia event... (choice=Nervous)"
label(data$i_feel_3_v2___3)="I felt this during hypoglycemia event... (choice=Sweaty)"
label(data$i_feel_3_v2___4)="I felt this during hypoglycemia event... (choice=Hungry)"
label(data$i_feel_3_v2___5)="I felt this during hypoglycemia event... (choice=Tingling)"
label(data$i_feel_3_v2___6)="I felt this during hypoglycemia event... (choice=Difficulty Thinking)"
label(data$i_feel_3_v2___7)="I felt this during hypoglycemia event... (choice=Tired)"
label(data$i_feel_3_v2___8)="I felt this during hypoglycemia event... (choice=Weak)"
label(data$i_feel_3_v2___9)="I felt this during hypoglycemia event... (choice=Warm)"
label(data$i_feel_3_v2___10)="I felt this during hypoglycemia event... (choice=Faint)"
label(data$i_feel_3_v2___11)="I felt this during hypoglycemia event... (choice=Dizzy)"
label(data$other_hypoglycemia_feeling_3_v2)="Other Hypoglycemia feeling..."
label(data$it_was_recognized_by_3_v2)="It was recognized by..."
label(data$i_needed_3_v2___0)="I needed this for my hypoglycemia event... (choice=Juice/food)"
label(data$i_needed_3_v2___1)="I needed this for my hypoglycemia event... (choice=Help from someone else)"
label(data$i_needed_3_v2___2)="I needed this for my hypoglycemia event... (choice=Nothing)"
label(data$juice_or_food_3_v2)="If juice or food was taken, did it make you feel better?"
label(data$another_section_3_v2)="Fourth home hypoglycemia section filled out?"
label(data$date_of_hypoglycemia_event_4_v2)="Date of hypoglycemia event"
label(data$time_of_hypoglycemia_event_4_v2)="Time of Hypoglycemia event"
label(data$i_feel_4_v2___0)="I felt this during hypoglycemia event... (choice=Heart pounding)"
label(data$i_feel_4_v2___1)="I felt this during hypoglycemia event... (choice=Shaky)"
label(data$i_feel_4_v2___2)="I felt this during hypoglycemia event... (choice=Nervous)"
label(data$i_feel_4_v2___3)="I felt this during hypoglycemia event... (choice=Sweaty)"
label(data$i_feel_4_v2___4)="I felt this during hypoglycemia event... (choice=Hungry)"
label(data$i_feel_4_v2___5)="I felt this during hypoglycemia event... (choice=Tingling)"
label(data$i_feel_4_v2___6)="I felt this during hypoglycemia event... (choice=Difficulty Thinking)"
label(data$i_feel_4_v2___7)="I felt this during hypoglycemia event... (choice=Tired)"
label(data$i_feel_4_v2___8)="I felt this during hypoglycemia event... (choice=Weak)"
label(data$i_feel_4_v2___9)="I felt this during hypoglycemia event... (choice=Warm)"
label(data$i_feel_4_v2___10)="I felt this during hypoglycemia event... (choice=Faint)"
label(data$i_feel_4_v2___11)="I felt this during hypoglycemia event... (choice=Dizzy)"
label(data$other_hypoglycemia_feeling_4_v2)="Other Hypoglycemia feeling..."
label(data$it_was_recognized_by_4_v2)="It was recognized by..."
label(data$i_needed_4_v2___0)="I needed this for my hypoglycemia event... (choice=Juice/food)"
label(data$i_needed_4_v2___1)="I needed this for my hypoglycemia event... (choice=Help from someone else)"
label(data$i_needed_4_v2___2)="I needed this for my hypoglycemia event... (choice=Nothing)"
label(data$juice_or_food_4_v2)="If juice or food was taken, did it make you feel better?"
label(data$another_section_4_v2)="Fifth home hypoglycemia section filled out?"
label(data$date_of_hypoglycemia_event_5_v2)="Date of hypoglycemia event"
label(data$time_of_hypoglycemia_event_5_v2)="Time of Hypoglycemia event"
label(data$i_feel_5_v2___0)="I felt this during hypoglycemia event... (choice=Heart pounding)"
label(data$i_feel_5_v2___1)="I felt this during hypoglycemia event... (choice=Shaky)"
label(data$i_feel_5_v2___2)="I felt this during hypoglycemia event... (choice=Nervous)"
label(data$i_feel_5_v2___3)="I felt this during hypoglycemia event... (choice=Sweaty)"
label(data$i_feel_5_v2___4)="I felt this during hypoglycemia event... (choice=Hungry)"
label(data$i_feel_5_v2___5)="I felt this during hypoglycemia event... (choice=Tingling)"
label(data$i_feel_5_v2___6)="I felt this during hypoglycemia event... (choice=Difficulty Thinking)"
label(data$i_feel_5_v2___7)="I felt this during hypoglycemia event... (choice=Tired)"
label(data$i_feel_5_v2___8)="I felt this during hypoglycemia event... (choice=Weak)"
label(data$i_feel_5_v2___9)="I felt this during hypoglycemia event... (choice=Warm)"
label(data$i_feel_5_v2___10)="I felt this during hypoglycemia event... (choice=Faint)"
label(data$i_feel_5_v2___11)="I felt this during hypoglycemia event... (choice=Dizzy)"
label(data$other_hypoglycemia_feeling_5_v2)="Other Hypoglycemia feeling..."
label(data$it_was_recognized_by_5_v2)="It was recognized by..."
label(data$i_needed_5_v2___0)="I needed this for my hypoglycemia event... (choice=Juice/food)"
label(data$i_needed_5_v2___1)="I needed this for my hypoglycemia event... (choice=Help from someone else)"
label(data$i_needed_5_v2___2)="I needed this for my hypoglycemia event... (choice=Nothing)"
label(data$juice_or_food_5_v2)="If juice or food was taken, did it make you feel better?"
label(data$another_section_5_v2)="Sixth home hypoglycemia section filled out?"
label(data$date_of_hypoglycemia_event_6_v2)="Date of hypoglycemia event"
label(data$time_of_hypoglycemia_event_6_v2)="Time of Hypoglycemia event"
label(data$i_feel_6_v2___0)="I felt this during hypoglycemia event... (choice=Heart pounding)"
label(data$i_feel_6_v2___1)="I felt this during hypoglycemia event... (choice=Shaky)"
label(data$i_feel_6_v2___2)="I felt this during hypoglycemia event... (choice=Nervous)"
label(data$i_feel_6_v2___3)="I felt this during hypoglycemia event... (choice=Sweaty)"
label(data$i_feel_6_v2___4)="I felt this during hypoglycemia event... (choice=Hungry)"
label(data$i_feel_6_v2___5)="I felt this during hypoglycemia event... (choice=Tingling)"
label(data$i_feel_6_v2___6)="I felt this during hypoglycemia event... (choice=Difficulty Thinking)"
label(data$i_feel_6_v2___7)="I felt this during hypoglycemia event... (choice=Tired)"
label(data$i_feel_6_v2___8)="I felt this during hypoglycemia event... (choice=Weak)"
label(data$i_feel_6_v2___9)="I felt this during hypoglycemia event... (choice=Warm)"
label(data$i_feel_6_v2___10)="I felt this during hypoglycemia event... (choice=Faint)"
label(data$i_feel_6_v2___11)="I felt this during hypoglycemia event... (choice=Dizzy)"
label(data$other_hypoglycemia_feeling_6_v2)="Other Hypoglycemia feeling..."
label(data$it_was_recognized_by_6_v2)="It was recognized by..."
label(data$i_needed_6_v2___0)="I needed this for my hypoglycemia event... (choice=Juice/food)"
label(data$i_needed_6_v2___1)="I needed this for my hypoglycemia event... (choice=Help from someone else)"
label(data$i_needed_6_v2___2)="I needed this for my hypoglycemia event... (choice=Nothing)"
label(data$juice_or_food_6_v2)="If juice or food was taken, did it make you feel better?"
label(data$another_section_6_v2)="Seventh home hypoglycemia section filled out?"
label(data$date_of_hypoglycemia_event_7_v2)="Date of hypoglycemia event"
label(data$time_of_hypoglycemia_event_7_v2)="Time of Hypoglycemia event"
label(data$i_feel_7_v2___0)="I felt this during hypoglycemia event... (choice=Heart pounding)"
label(data$i_feel_7_v2___1)="I felt this during hypoglycemia event... (choice=Shaky)"
label(data$i_feel_7_v2___2)="I felt this during hypoglycemia event... (choice=Nervous)"
label(data$i_feel_7_v2___3)="I felt this during hypoglycemia event... (choice=Sweaty)"
label(data$i_feel_7_v2___4)="I felt this during hypoglycemia event... (choice=Hungry)"
label(data$i_feel_7_v2___5)="I felt this during hypoglycemia event... (choice=Tingling)"
label(data$i_feel_7_v2___6)="I felt this during hypoglycemia event... (choice=Difficulty Thinking)"
label(data$i_feel_7_v2___7)="I felt this during hypoglycemia event... (choice=Tired)"
label(data$i_feel_7_v2___8)="I felt this during hypoglycemia event... (choice=Weak)"
label(data$i_feel_7_v2___9)="I felt this during hypoglycemia event... (choice=Warm)"
label(data$i_feel_7_v2___10)="I felt this during hypoglycemia event... (choice=Faint)"
label(data$i_feel_7_v2___11)="I felt this during hypoglycemia event... (choice=Dizzy)"
label(data$other_hypoglycemia_feeling_7_v2)="Other Hypoglycemia feeling..."
label(data$it_was_recognized_by_7_v2)="It was recognized by..."
label(data$i_needed_7_v2___0)="I needed this for my hypoglycemia event... (choice=Juice/food)"
label(data$i_needed_7_v2___1)="I needed this for my hypoglycemia event... (choice=Help from someone else)"
label(data$i_needed_7_v2___2)="I needed this for my hypoglycemia event... (choice=Nothing)"
label(data$juice_or_food_7_v2)="If juice or food was taken, did it make you feel better?"
label(data$another_section_7_v2)="Eighth home hypoglycemia section filled out? "
label(data$date_of_hypoglycemia_event_8_v2)="Date of hypoglycemia event"
label(data$time_of_hypoglycemia_event_8_v2)="Time of Hypoglycemia event"
label(data$i_feel_8_v2___0)="I felt this during hypoglycemia event... (choice=Heart pounding)"
label(data$i_feel_8_v2___1)="I felt this during hypoglycemia event... (choice=Shaky)"
label(data$i_feel_8_v2___2)="I felt this during hypoglycemia event... (choice=Nervous)"
label(data$i_feel_8_v2___3)="I felt this during hypoglycemia event... (choice=Sweaty)"
label(data$i_feel_8_v2___4)="I felt this during hypoglycemia event... (choice=Hungry)"
label(data$i_feel_8_v2___5)="I felt this during hypoglycemia event... (choice=Tingling)"
label(data$i_feel_8_v2___6)="I felt this during hypoglycemia event... (choice=Difficulty Thinking)"
label(data$i_feel_8_v2___7)="I felt this during hypoglycemia event... (choice=Tired)"
label(data$i_feel_8_v2___8)="I felt this during hypoglycemia event... (choice=Weak)"
label(data$i_feel_8_v2___9)="I felt this during hypoglycemia event... (choice=Warm)"
label(data$i_feel_8_v2___10)="I felt this during hypoglycemia event... (choice=Faint)"
label(data$i_feel_8_v2___11)="I felt this during hypoglycemia event... (choice=Dizzy)"
label(data$other_hypoglycemia_feeling_8_v2)="Other Hypoglycemia feeling..."
label(data$it_was_recognized_by_8_v2)="It was recognized by..."
label(data$i_needed_8_v2___0)="I needed this for my hypoglycemia event... (choice=Juice/food)"
label(data$i_needed_8_v2___1)="I needed this for my hypoglycemia event... (choice=Help from someone else)"
label(data$i_needed_8_v2___2)="I needed this for my hypoglycemia event... (choice=Nothing)"
label(data$juice_or_food_8_v2)="If juice or food was taken, did it make you feel better?"
label(data$athome_adult_hypoglycemia_questionnairesecond_visi_complete)="Complete?"
label(data$child_home_completed_v2)="Child home hypoglycemia form completed?"
label(data$v2_child_home_hypo)="Did the child feel symptoms of hypoglycemia while wearing the CGM?"
label(data$date_hypoglycemia_event_v2)="Date of Hypoglycemia Event"
label(data$time_hypoglycemia_event_v2)="Time of Hypoglycemia Event"
label(data$form_filled_out_by_who_v2)="Form filled out by who?"
label(data$time_of_last_meal_v2)="Time of last meal?"
label(data$symptoms_child_hypo_v2___0)="Symptoms child hypoglycemia (choice=Shaky)"
label(data$symptoms_child_hypo_v2___1)="Symptoms child hypoglycemia (choice=Fast Heartbeat)"
label(data$symptoms_child_hypo_v2___2)="Symptoms child hypoglycemia (choice=Sweaty)"
label(data$symptoms_child_hypo_v2___3)="Symptoms child hypoglycemia (choice=Tired but not Sleepy)"
label(data$symptoms_child_hypo_v2___4)="Symptoms child hypoglycemia (choice=More Hungry than Usual)"
label(data$symptoms_child_hypo_v2___5)="Symptoms child hypoglycemia (choice=Grumpy & dont know why)"
label(data$another_section_filled_v2)="Another section child hypoglycemia filled out?"
label(data$date_hypoglycemia_event_2_v2)="Date of Hypoglycemia Event"
label(data$time_hypoglycemia_event_2_v2)="Time of Hypoglycemia Event"
label(data$form_filled_out_by_who_2_v2)="Form filled out by who?"
label(data$time_of_last_meal_2_v2)="Time of last meal?"
label(data$symptoms_child_hypo_2_v2___0)="Symptoms child hypoglycemia (choice=Shaky)"
label(data$symptoms_child_hypo_2_v2___1)="Symptoms child hypoglycemia (choice=Fast Heartbeat)"
label(data$symptoms_child_hypo_2_v2___2)="Symptoms child hypoglycemia (choice=Sweaty)"
label(data$symptoms_child_hypo_2_v2___3)="Symptoms child hypoglycemia (choice=Tired but not Sleepy)"
label(data$symptoms_child_hypo_2_v2___4)="Symptoms child hypoglycemia (choice=More Hungry than Usual)"
label(data$symptoms_child_hypo_2_v2___5)="Symptoms child hypoglycemia (choice=Grumpy & dont know why)"
label(data$third_section_filled_out_v2)="Third section filled out?"
label(data$date_hypoglycemia_event_3_v2)="Date of Hypoglycemia Event"
label(data$time_hypoglycemia_event_3_v2)="Time of Hypoglycemia Event"
label(data$form_filled_out_by_who_3_v2)="Form filled out by who?"
label(data$time_of_last_meal_3_v2)="Time of last meal?"
label(data$symptoms_child_hypo_3_v2___0)="Symptoms child hypoglycemia (choice=Shaky)"
label(data$symptoms_child_hypo_3_v2___1)="Symptoms child hypoglycemia (choice=Fast Heartbeat)"
label(data$symptoms_child_hypo_3_v2___2)="Symptoms child hypoglycemia (choice=Sweaty)"
label(data$symptoms_child_hypo_3_v2___3)="Symptoms child hypoglycemia (choice=Tired but not Sleepy)"
label(data$symptoms_child_hypo_3_v2___4)="Symptoms child hypoglycemia (choice=More Hungry than Usual)"
label(data$symptoms_child_hypo_3_v2___5)="Symptoms child hypoglycemia (choice=Grumpy & dont know why)"
label(data$fourth_section_filled_v2)="Fourth section filled out?"
label(data$date_hypoglycemia_event_4_v2)="Date of Hypoglycemia Event"
label(data$time_hypoglycemia_event_4_v2)="Time of Hypoglycemia Event"
label(data$form_filled_out_by_who_4_v2)="Form filled out by who?"
label(data$time_of_last_meal_4_v2)="Time of last meal?"
label(data$symptoms_child_hypo_4_v2___0)="Symptoms child hypoglycemia (choice=Shaky)"
label(data$symptoms_child_hypo_4_v2___1)="Symptoms child hypoglycemia (choice=Fast Heartbeat)"
label(data$symptoms_child_hypo_4_v2___2)="Symptoms child hypoglycemia (choice=Sweaty)"
label(data$symptoms_child_hypo_4_v2___3)="Symptoms child hypoglycemia (choice=Tired but not Sleepy)"
label(data$symptoms_child_hypo_4_v2___4)="Symptoms child hypoglycemia (choice=More Hungry than Usual)"
label(data$symptoms_child_hypo_4_v2___5)="Symptoms child hypoglycemia (choice=Grumpy & dont know why)"
label(data$fifth_section_filled_v2)="Fifth section filled out?"
label(data$date_hypoglycemia_event_5_v2)="Date of Hypoglycemia Event"
label(data$time_hypoglycemia_event_5_v2)="Time of Hypoglycemia Event"
label(data$form_filled_out_by_who_5_v2)="Form filled out by who?"
label(data$time_of_last_meal_5_v2)="Time of last meal?"
label(data$symptoms_child_hypo_5_v2___0)="Symptoms child hypoglycemia (choice=Shaky)"
label(data$symptoms_child_hypo_5_v2___1)="Symptoms child hypoglycemia (choice=Fast Heartbeat)"
label(data$symptoms_child_hypo_5_v2___2)="Symptoms child hypoglycemia (choice=Sweaty)"
label(data$symptoms_child_hypo_5_v2___3)="Symptoms child hypoglycemia (choice=Tired but not Sleepy)"
label(data$symptoms_child_hypo_5_v2___4)="Symptoms child hypoglycemia (choice=More Hungry than Usual)"
label(data$symptoms_child_hypo_5_v2___5)="Symptoms child hypoglycemia (choice=Grumpy & dont know why)"
label(data$sixth_section_filled_v2)="Sixth section filled out?"
label(data$date_hypoglycemia_event_6_v2)="Date of Hypoglycemia Event"
label(data$time_hypoglycemia_event_6_v2)="Time of Hypoglycemia Event"
label(data$form_filled_out_by_who_6_v2)="Form filled out by who?"
label(data$time_of_last_meal_6_v2)="Time of last meal?"
label(data$symptoms_child_hypo_6_v2___0)="Symptoms child hypoglycemia (choice=Shaky)"
label(data$symptoms_child_hypo_6_v2___1)="Symptoms child hypoglycemia (choice=Fast Heartbeat)"
label(data$symptoms_child_hypo_6_v2___2)="Symptoms child hypoglycemia (choice=Sweaty)"
label(data$symptoms_child_hypo_6_v2___3)="Symptoms child hypoglycemia (choice=Tired but not Sleepy)"
label(data$symptoms_child_hypo_6_v2___4)="Symptoms child hypoglycemia (choice=More Hungry than Usual)"
label(data$symptoms_child_hypo_6_v2___5)="Symptoms child hypoglycemia (choice=Grumpy & dont know why)"
label(data$seventh_section_filled_v2)="Seventh section filled out?"
label(data$date_hypoglycemia_event_7_v2)="Date of Hypoglycemia Event"
label(data$time_hypoglycemia_event_7_v2)="Time of Hypoglycemia Event"
label(data$form_filled_out_by_who_7_v2)="Form filled out by who?"
label(data$time_of_last_meal_7_v2)="Time of last meal?"
label(data$symptoms_child_hypo_7_v2___0)="Symptoms child hypoglycemia (choice=Shaky)"
label(data$symptoms_child_hypo_7_v2___1)="Symptoms child hypoglycemia (choice=Fast Heartbeat)"
label(data$symptoms_child_hypo_7_v2___2)="Symptoms child hypoglycemia (choice=Sweaty)"
label(data$symptoms_child_hypo_7_v2___3)="Symptoms child hypoglycemia (choice=Tired but not Sleepy)"
label(data$symptoms_child_hypo_7_v2___4)="Symptoms child hypoglycemia (choice=More Hungry than Usual)"
label(data$symptoms_child_hypo_7_v2___5)="Symptoms child hypoglycemia (choice=Grumpy & dont know why)"
label(data$eighth_section_filled_v2)="Eighth section filled out?"
label(data$date_hypoglycemia_event_8_v2)="Date of Hypoglycemia Event"
label(data$time_hypoglycemia_event_8_v2)="Time of Hypoglycemia Event"
label(data$form_filled_out_by_who_8_v2)="Form filled out by who?"
label(data$time_of_last_meal_8_v2)="Time of last meal?"
label(data$symptoms_child_hypo_8_v2___0)="Symptoms child hypoglycemia (choice=Shaky)"
label(data$symptoms_child_hypo_8_v2___1)="Symptoms child hypoglycemia (choice=Fast Heartbeat)"
label(data$symptoms_child_hypo_8_v2___2)="Symptoms child hypoglycemia (choice=Sweaty)"
label(data$symptoms_child_hypo_8_v2___3)="Symptoms child hypoglycemia (choice=Tired but not Sleepy)"
label(data$symptoms_child_hypo_8_v2___4)="Symptoms child hypoglycemia (choice=More Hungry than Usual)"
label(data$symptoms_child_hypo_8_v2___5)="Symptoms child hypoglycemia (choice=Grumpy & dont know why)"
label(data$athome_child_618_hypoglycemia_questionnairesecond_complete)="Complete?"
label(data$pft_yes_no_v2)="Did the subject have pulmonary function tests completed in the last year? "
label(data$date_fev1_v2)="date of most recent FEV 1 in last year"
label(data$fev1_v2)="FEV1 %"
label(data$fev1_l_v2)="FEV1 (L)"
label(data$fvc_v2)="FVC (%)"
label(data$fvc_l_v2)="FVC (L) "
label(data$fev1_fvc_v2)="FEV1/FVC %"
label(data$fev_25_75_v2)="FEF 25-75%"
label(data$comments_pft_1_v2)="comments PFT "
label(data$pulmonary_functionsecond_visit_complete)="Complete?"
label(data$ae_occur_v2)="Did an AE occur?"
label(data$ae_initials_v2)="Subject Initials"
label(data$ae_description_v2)="Adverse event description"
label(data$ae_start_date_v2)="Date of start of AE"
label(data$ae_end_date_v2)="Date of end of AE"
label(data$ae_severity_v2)="severity of AE"
label(data$action_taken_v2)="action taken AE"
label(data$ae_outcome_v2)="outcome of AE "
label(data$ae_relation_to_study_v2)="Relation to study AE"
label(data$ae_serious_v2)="Is AE a serious adverse event?"
label(data$invest_sign_date_v2)="Investigator Signature Date"
label(data$adverse_event_logsecond_visit_complete)="Complete?"
label(data$y_n_protocol_dev_v2)="Was there a protocol deviation? "
label(data$deviation_type_v2)="Deviation Type:"
label(data$other_dev_explain_v2)="Other:"
label(data$timing_of_deviation_v2)="Timing of deviation"
label(data$dev_id_by_v2)="Deviation identified by:"
label(data$protocol_dev_identified_by_v2)="Identified by other:"
label(data$details_of_the_dev_v2)="Provide details of the deviation:"
label(data$deviation_result_ae_v2)="Did the deviation result in an AE occuring?"
label(data$steps_resolve_dev_v2)="Explain the steps taken to resolve the deviation:"
label(data$second_protocol_dev_v2)="Was there a second protocol deviation? "
label(data$deviation_type_2_v2)="Deviation Type:"
label(data$other_dev_explain_2_v2)="Other:"
label(data$timing_of_deviation_2_v2)="Timing of deviation"
label(data$dev_id_by_2_v2)="Deviation identified by:"
label(data$protocol_dev_identified_by_2_v2)="Identified by other:"
label(data$details_of_the_dev_2_v2)="Provide details of the deviation:"
label(data$deviation_result_ae_2_v2)="Did the deviation result in an AE occuring?"
label(data$steps_resolve_dev_2_v2)="Explain the steps taken to resolve the deviation:"
label(data$third_protocol_dev_v2)="Was there a third protocol deviation?"
label(data$deviation_type_3_v2)="Deviation Type:"
label(data$other_dev_explain_3_v2)="Other:"
label(data$timing_of_deviation_3_v2)="Timing of deviation"
label(data$dev_id_by_3_v2)="Deviation identified by:"
label(data$protocol_dev_identified_by_3_v2)="Identified by other:"
label(data$details_of_the_dev_3_v2)="Provide details of the deviation:"
label(data$deviation_result_ae_3_v2)="Did the deviation result in an AE occuring?"
label(data$steps_resolve_dev_3_v2)="Explain the steps taken to resolve the deviation:"
label(data$fourth_protocol_dev_v2)="Was there a fourth protocol deviation?"
label(data$deviation_type_4_v2)="Deviation Type:"
label(data$other_dev_explain_4_v2)="Other:"
label(data$timing_of_deviation_4_v2)="Timing of deviation"
label(data$dev_id_by_4_v2)="Deviation identified by:"
label(data$protocol_dev_identified_by_4_v2)="Identified by other:"
label(data$details_of_the_dev_4_v2)="Provide details of the deviation:"
label(data$deviation_result_ae_4_v2)="Did the deviation result in an AE occuring?"
label(data$steps_resolve_dev_4_v2)="Explain the steps taken to resolve the deviation:"
label(data$protocol_deviationsecond_visit_complete)="Complete?"
label(data$agreed_to_cgm_v2)="Agreed to CGM"
label(data$date_cgm_placement_v2)="Date of CGM Placement"
label(data$expiration_date_v2)="Expiration Date"
label(data$lot_number_v2)="Lot number"
label(data$sensor_serial_issues_v2)="sensor inserted - serial number"
label(data$time_of_insertion_v2)="Time of insertion"
label(data$cgm_instructions_v2___1)="sensor instruction- given to subject or parent/guardian if subject is a minor (choice=freestyle libre CGM instructions)"
label(data$cgm_instructions_v2___2)="sensor instruction- given to subject or parent/guardian if subject is a minor (choice=FedEx materials needed to send back the Freestyle Libre sensor)"
label(data$cgm_instructions_v2___3)="sensor instruction- given to subject or parent/guardian if subject is a minor (choice=reviewed CGM instructions including duration of wear of 10 days or less)"
label(data$cgm_placement_site_v2)="CGM placement site"
label(data$cgm_uploaded_v2)="Sensor data uploaded"
label(data$sensor_raw_data_upload_v2)="Sensor Raw Data Upload"
label(data$cgm_data_success_failure_v2)="CGM Data collected"
label(data$cgm_gaps_filled_in_v2)="CGM Data Gaps Filled In?"
label(data$number_of_gaps_filled_in_v2)="Number of Gaps Filled In"
label(data$total_time_filled_in_v2)="Total Time Filled In"
label(data$num_days_cgm_wear_v2)="Number of days of CGM wear"
label(data$num_days_good_data_v2)="Number of Days with Good Data"
label(data$num_hours_good_data_v2)="Number of Hours with Good Data"
label(data$total_sensor_readings_v2)="Total Sensor Readings"
label(data$average_sensor_v2)="Average Sensor reading"
label(data$standard_deviation_v2)="Standard Deviation"
label(data$min_sensor_v2)="Minimum Sensor Reading"
label(data$max_sensor_v2)="Maximum Sensor Reading"
label(data$q1_sensor_v2)="First Quartile Sensor Glucose"
label(data$median_sensor_glucose_v2)="Median Sensor Glucose"
label(data$q3_sensor_v2)="Third Quartile Sensor Glucose"
label(data$estimated_a1c_v2)="Estimated A1C"
label(data$excursions_over_120_v2)="Excursions over 120"
label(data$min_spent_over_120_v2)="Time Spent Over 120"
label(data$percent_time_over_120_v2)="Percent of Time Over 120"
label(data$excursions_over_140_v2)="Excursions Over 140"
label(data$min_spent_over_140_v2)="Time Spent Over 140"
label(data$percent_time_over_140_v2)="Percent of Time Over 140"
label(data$excursions_over_180_v2)="Excursions over 180"
label(data$min_spent_over_180_v2)="Time Spent Over 180"
label(data$percent_time_over_180_v2)="Percent Time Spent Over 180"
label(data$excursions_over_200_v2)="Excursions Over 200"
label(data$min_spent_over_200_v2)="Time Spent Over 200"
label(data$percent_time_over_200_v2)="Percent of Time Spent over 200"
label(data$avg_excur_over_140_per_day_v2)="Average amount of Excursions over 140 per day"
label(data$avg_excur_over_200_per_day_v2)="Average Excursions over 200 per day"
label(data$excursions_under_54_v2)="Excursions Under 54"
label(data$time_spent_under_54_v2)="Time Spent Under 54"
label(data$percent_time_under_54_v2)="Percent  of Time Under 54"
label(data$excursions_under_60_v2)="Excursions Under 60"
label(data$time_spent_under_60_v2)="Time Spent Under 60"
label(data$percent_time_under_60_v2)="Percent of Time Under 60"
label(data$excursions_under_70_v2)="Excursions Under 70"
label(data$time_spent_under_70_v2)="Time Spent Under 70"
label(data$percent_time_under_70_v2)="Percent Time Spent Under 70"
label(data$daytime_auc_v2)="Daytime Area Under the Curve"
label(data$daytime_avg_sensor_glucose_v2)="Daytime Average Sensor Glucose"
label(data$daytime_min_sensor_glucose_v2)="Daytime Minimum Sensor Glucose"
label(data$daytime_max_sensor_glucose_v2)="Daytime Maximum Sensor Glucose"
label(data$daytime_sd_v2)="Daytime Standard Deviation"
label(data$nighttime_auc_v2)="Nighttime Area Under the Curve"
label(data$nighttime_avg_sens_glucose_v2)="Nighttime Average Sensor Glucose"
label(data$nighttime_min_sens_glucose_v2)="Nighttime Minimum Sensor Glucose"
label(data$nighttime_max_sens_glucose_v2)="Nighttime Maximum Sensor Glucose"
label(data$nighttime_sd_v2)="Nighttime Standard Deviation"
label(data$auc_over_180_v2)="Area Under the Curve Greater than 180"
label(data$average_auc_180_v2)="Average Area Under the Curve Greater than 180"
label(data$auc_greater_than_98_v2)="Area Under the Curve greater than 98"
label(data$avg_auc_greater_than_98_v2)="Average Area Under the Curve > 98"
label(data$total_auc_v2)="Total Area Under the Curve"
label(data$average_auc_per_day_v2)="Average Area Under the Curve per Day"
label(data$mage_v2)="Mean Amplitude Glycemic Excursion (MAGE)"
label(data$r_mage_v2)="R MAGE"
label(data$m_value_v2)="M-value"
label(data$lability_index_v2)="Lability Index"
label(data$avg_daily_risk_range_v2)="Average Daily Risk Range"
label(data$j_index_v2)="J-Index"
label(data$low_blood_glucose_index_v2)="Low Blood Glucose Index"
label(data$high_blood_glucose_index_v2)="High Blood Glucose Index"
label(data$cont_overall_net_gly_v2)="Continuous Overall Net Glycemic Action"
label(data$mean_of_daily_differences_v2)="Mean of Daily Differences"
label(data$glycemic_risk_assess_v2)="Glycemic Risk Assessment Diabetes Equation"
label(data$mean_absolute_glucose_v2)="Mean Absolute Glucose"
label(data$coefficient_of_variation_v2)="Coefficient of Variation"
label(data$interquartile_range_v2)="Interquartile Range"
label(data$notes_v2)="Notes"
label(data$cgm_datasecond_visit_complete)="Complete?"
label(data$patient_undergo_dexa_v2)="Did the participant undergo a DXA scan?"
label(data$date_of_dxa_v2)="Date of DXA"
label(data$height_dxa_cm_v2)="height day of DXA  (can be the same as in vitals)"
label(data$height_m_v2)="Height in meters"
label(data$make_of_dxa_machine_v2)="Make  of DXA machine"
label(data$model_of_dxa_machine_v2)="Model of DXA machine"
label(data$software_of_dxa_v2)="Software of DXA"
label(data$tissue_g_v2)="Tissue (g)"
label(data$total_fat_mass_v2)="Total Fat Mass (%)"
label(data$fat_g_v2)="Fat Body Mass (g)"
label(data$fat_free_g_v2)="Fat Free Mass (g)"
label(data$lean_mass_g_v2)="Lean Body Mass (g)"
label(data$total_mass_kg_v2)="Total Mass (kg)"
label(data$fat_free_mass_v2)="Fat Free Mass %"
label(data$fat_mass_index_v2)="Fat Mass Index (FMI) "
label(data$lbm_fm_v2)="Lean body mass/fat mass (LBM/FM)"
label(data$fat_free_mass_index_fat_fr_v2)="Fat Free Mass Index  (FFMI)"
label(data$lbmi_v2)="Lean Body Mass Index (LBMI)"
label(data$bmd_z_score_v2)="BMD z-score"
label(data$dxa_data_upload_v2)="Upload any DXA forms here"
label(data$dxa_datasecond_visit_complete)="Complete?"
#Setting Units


#Setting Factors(will create new variable for factors)
data$redcap_event_name.factor = factor(data$redcap_event_name,levels=c("visit_1_arm_1","visit_2_arm_1","visit_3_arm_1","visit_4_arm_1","unscheduled_visit_arm_1"))
data$redcap_repeat_instrument.factor = factor(data$redcap_repeat_instrument,levels=c("current_medications","random_hypoglycemia","random_hypoglycemia_questionnaires","adverse_event_log"))
data$redcap_data_access_group.factor = factor(data$redcap_data_access_group,levels=c("colorado","iowa","minnesota","washington_u_st_lo"))
data$participant_withdrawn.factor = factor(data$participant_withdrawn,levels=c("0","1","2"))
data$sex.factor = factor(data$sex,levels=c("1","2"))
data$ethnicity.factor = factor(data$ethnicity,levels=c("1","2","3"))
data$origin_race.factor = factor(data$origin_race,levels=c("1","2","3","4","5","6"))
data$cftr_genotype_available_in.factor = factor(data$cftr_genotype_available_in,levels=c("1","2","3","4"))
data$cftr_mutation_1.factor = factor(data$cftr_mutation_1,levels=c("1","2"))
data$type_of_mutation_1.factor = factor(data$type_of_mutation_1,levels=c("0","1"))
data$cftr_mutation_2.factor = factor(data$cftr_mutation_2,levels=c("1","2","3"))
data$type_of_mutation_2.factor = factor(data$type_of_mutation_2,levels=c("0","1"))
data$mutation_category.factor = factor(data$mutation_category,levels=c("0","1"))
data$new_born_screen.factor = factor(data$new_born_screen,levels=c("1","2","3"))
data$sweat_chloride_test.factor = factor(data$sweat_chloride_test,levels=c("1","0"))
data$pancreatic_status.factor = factor(data$pancreatic_status,levels=c("1","2","3"))
data$most_recent_sputum_culture___1.factor = factor(data$most_recent_sputum_culture___1,levels=c("0","1"))
data$most_recent_sputum_culture___2.factor = factor(data$most_recent_sputum_culture___2,levels=c("0","1"))
data$most_recent_sputum_culture___3.factor = factor(data$most_recent_sputum_culture___3,levels=c("0","1"))
data$most_recent_sputum_culture___4.factor = factor(data$most_recent_sputum_culture___4,levels=c("0","1"))
data$most_recent_sputum_culture___5.factor = factor(data$most_recent_sputum_culture___5,levels=c("0","1"))
data$most_recent_sputum_culture___6.factor = factor(data$most_recent_sputum_culture___6,levels=c("0","1"))
data$most_recent_sputum_culture___7.factor = factor(data$most_recent_sputum_culture___7,levels=c("0","1"))
data$most_recent_sputum_culture___8.factor = factor(data$most_recent_sputum_culture___8,levels=c("0","1"))
data$sputum_culture_year___1.factor = factor(data$sputum_culture_year___1,levels=c("0","1"))
data$sputum_culture_year___2.factor = factor(data$sputum_culture_year___2,levels=c("0","1"))
data$sputum_culture_year___3.factor = factor(data$sputum_culture_year___3,levels=c("0","1"))
data$sputum_culture_year___4.factor = factor(data$sputum_culture_year___4,levels=c("0","1"))
data$sputum_culture_year___5.factor = factor(data$sputum_culture_year___5,levels=c("0","1"))
data$sputum_culture_year___6.factor = factor(data$sputum_culture_year___6,levels=c("0","1"))
data$sputum_culture_year___7.factor = factor(data$sputum_culture_year___7,levels=c("0","1"))
data$sputum_culture_year___8.factor = factor(data$sputum_culture_year___8,levels=c("0","1"))
data$liver_disease.factor = factor(data$liver_disease,levels=c("1","0"))
data$corrector_yes_no.factor = factor(data$corrector_yes_no,levels=c("1","0"))
data$corrector___1.factor = factor(data$corrector___1,levels=c("0","1"))
data$corrector___2.factor = factor(data$corrector___2,levels=c("0","1"))
data$corrector___3.factor = factor(data$corrector___3,levels=c("0","1"))
data$corrector___4.factor = factor(data$corrector___4,levels=c("0","1"))
data$corrector___5.factor = factor(data$corrector___5,levels=c("0","1"))
data$change_mod_yn.factor = factor(data$change_mod_yn,levels=c("1","0"))
data$family_history_diabetes.factor = factor(data$family_history_diabetes,levels=c("1","0"))
data$relative_with_diabetes___1.factor = factor(data$relative_with_diabetes___1,levels=c("0","1"))
data$relative_with_diabetes___2.factor = factor(data$relative_with_diabetes___2,levels=c("0","1"))
data$relative_with_diabetes___3.factor = factor(data$relative_with_diabetes___3,levels=c("0","1"))
data$relative_with_diabetes___4.factor = factor(data$relative_with_diabetes___4,levels=c("0","1"))
data$diabetes_hisotry_type___1.factor = factor(data$diabetes_hisotry_type___1,levels=c("0","1"))
data$diabetes_hisotry_type___2.factor = factor(data$diabetes_hisotry_type___2,levels=c("0","1"))
data$diabetes_hisotry_type___3.factor = factor(data$diabetes_hisotry_type___3,levels=c("0","1"))
data$diabetes_hisotry_type___4.factor = factor(data$diabetes_hisotry_type___4,levels=c("0","1"))
data$demographics_and_cf_history_complete.factor = factor(data$demographics_and_cf_history_complete,levels=c("0","1","2"))
data$antibiotics___1.factor = factor(data$antibiotics___1,levels=c("0","1"))
data$antibiotics___2.factor = factor(data$antibiotics___2,levels=c("0","1"))
data$antibiotics___3.factor = factor(data$antibiotics___3,levels=c("0","1"))
data$antibiotics___4.factor = factor(data$antibiotics___4,levels=c("0","1"))
data$antibiotics___5.factor = factor(data$antibiotics___5,levels=c("0","1"))
data$inhaled_steroids.factor = factor(data$inhaled_steroids,levels=c("1","0"))
data$patient_using_flonase.factor = factor(data$patient_using_flonase,levels=c("1","0"))
data$inhaled_beta_agonist.factor = factor(data$inhaled_beta_agonist,levels=c("1","0"))
data$pancreatic_enzyme_therapy.factor = factor(data$pancreatic_enzyme_therapy,levels=c("1","2","3"))
data$systemic_steroid_therapy___1.factor = factor(data$systemic_steroid_therapy___1,levels=c("0","1"))
data$systemic_steroid_therapy___2.factor = factor(data$systemic_steroid_therapy___2,levels=c("0","1"))
data$systemic_steroid_therapy___3.factor = factor(data$systemic_steroid_therapy___3,levels=c("0","1"))
data$systemic_steroid_therapy___4.factor = factor(data$systemic_steroid_therapy___4,levels=c("0","1"))
data$systemic_steroid_therapy___5.factor = factor(data$systemic_steroid_therapy___5,levels=c("0","1"))
data$systemic_steroid_therapy___6.factor = factor(data$systemic_steroid_therapy___6,levels=c("0","1"))
data$cf_multivitamins_aquadeks.factor = factor(data$cf_multivitamins_aquadeks,levels=c("1","0"))
data$vitamin_d_in_addition_to_m.factor = factor(data$vitamin_d_in_addition_to_m,levels=c("1","2","3"))
data$high_dose_ibuprofen.factor = factor(data$high_dose_ibuprofen,levels=c("1","2","3"))
data$inhaled_antibiotics.factor = factor(data$inhaled_antibiotics,levels=c("1","Yes","2"))
data$ursodiol.factor = factor(data$ursodiol,levels=c("1","0"))
data$gen_1_atyp_antipsych___0.factor = factor(data$gen_1_atyp_antipsych___0,levels=c("0","1"))
data$gen_1_atyp_antipsych___1.factor = factor(data$gen_1_atyp_antipsych___1,levels=c("0","1"))
data$gen_1_atyp_antipsych___2.factor = factor(data$gen_1_atyp_antipsych___2,levels=c("0","1"))
data$gen_1_atyp_antipsych___3.factor = factor(data$gen_1_atyp_antipsych___3,levels=c("0","1"))
data$gen_1_atyp_antipsych___4.factor = factor(data$gen_1_atyp_antipsych___4,levels=c("0","1"))
data$gen_1_atyp_antipsych___5.factor = factor(data$gen_1_atyp_antipsych___5,levels=c("0","1"))
data$gen_1_atyp_antipsych___6.factor = factor(data$gen_1_atyp_antipsych___6,levels=c("0","1"))
data$gen_1_atyp_antipsych___7.factor = factor(data$gen_1_atyp_antipsych___7,levels=c("0","1"))
data$gen_1_atyp_antipsych___8.factor = factor(data$gen_1_atyp_antipsych___8,levels=c("0","1"))
data$gen_1_atyp_antipsych___9.factor = factor(data$gen_1_atyp_antipsych___9,levels=c("0","1"))
data$gen_2_atyp_antipsych___0.factor = factor(data$gen_2_atyp_antipsych___0,levels=c("0","1"))
data$gen_2_atyp_antipsych___1.factor = factor(data$gen_2_atyp_antipsych___1,levels=c("0","1"))
data$gen_2_atyp_antipsych___2.factor = factor(data$gen_2_atyp_antipsych___2,levels=c("0","1"))
data$gen_2_atyp_antipsych___3.factor = factor(data$gen_2_atyp_antipsych___3,levels=c("0","1"))
data$gen_2_atyp_antipsych___4.factor = factor(data$gen_2_atyp_antipsych___4,levels=c("0","1"))
data$gen_2_atyp_antipsych___5.factor = factor(data$gen_2_atyp_antipsych___5,levels=c("0","1"))
data$gen_2_atyp_antipsych___6.factor = factor(data$gen_2_atyp_antipsych___6,levels=c("0","1"))
data$gen_2_atyp_antipsych___7.factor = factor(data$gen_2_atyp_antipsych___7,levels=c("0","1"))
data$gen_2_atyp_antipsych___8.factor = factor(data$gen_2_atyp_antipsych___8,levels=c("0","1"))
data$gen_2_atyp_antipsych___9.factor = factor(data$gen_2_atyp_antipsych___9,levels=c("0","1"))
data$gen_2_atyp_antipsych___10.factor = factor(data$gen_2_atyp_antipsych___10,levels=c("0","1"))
data$gen_2_atyp_antipsych___11.factor = factor(data$gen_2_atyp_antipsych___11,levels=c("0","1"))
data$gen_2_atyp_antipsych___12.factor = factor(data$gen_2_atyp_antipsych___12,levels=c("0","1"))
data$gen_2_atyp_antipsych___13.factor = factor(data$gen_2_atyp_antipsych___13,levels=c("0","1"))
data$current_medications_complete.factor = factor(data$current_medications_complete,levels=c("0","1","2"))
data$cf_yes_no_inclusion.factor = factor(data$cf_yes_no_inclusion,levels=c("1","0"))
data$age_6_yes_no_inclusion.factor = factor(data$age_6_yes_no_inclusion,levels=c("1","0"))
data$clin_stable_yes_no_inclusion.factor = factor(data$clin_stable_yes_no_inclusion,levels=c("1","0"))
data$other_diabetes_yes_no.factor = factor(data$other_diabetes_yes_no,levels=c("1","0"))
data$organ_tx_yes_no.factor = factor(data$organ_tx_yes_no,levels=c("1","0"))
data$cfrd_diabetes_med_yes_no.factor = factor(data$cfrd_diabetes_med_yes_no,levels=c("1","0"))
data$pulm_ex_last3months.factor = factor(data$pulm_ex_last3months,levels=c("1","0"))
data$corrector_yes_no_exclusion.factor = factor(data$corrector_yes_no_exclusion,levels=c("1","0"))
data$consent_completed.factor = factor(data$consent_completed,levels=c("1","0"))
data$yn_future_use.factor = factor(data$yn_future_use,levels=c("1","0"))
data$upt.factor = factor(data$upt,levels=c("0","1","2","3","4"))
data$inclusionexclusion_complete.factor = factor(data$inclusionexclusion_complete,levels=c("0","1","2"))
data$repeat_visit.factor = factor(data$repeat_visit,levels=c("1","2","3","4"))
data$fast_hours.factor = factor(data$fast_hours,levels=c("1","0"))
data$tanner_female_pubic.factor = factor(data$tanner_female_pubic,levels=c("1","2","3","4","5","6"))
data$tanner_breast_dev.factor = factor(data$tanner_breast_dev,levels=c("1","2","3","4","5","6"))
data$tanner_male_pubic.factor = factor(data$tanner_male_pubic,levels=c("1","2","3","4","5","6"))
data$tanner_testicular_vol.factor = factor(data$tanner_testicular_vol,levels=c("1","2","3","4","5","6"))
data$type_of_temperature.factor = factor(data$type_of_temperature,levels=c("1","2","3"))
data$numbing_cream___1.factor = factor(data$numbing_cream___1,levels=c("0","1"))
data$numbing_cream___2.factor = factor(data$numbing_cream___2,levels=c("0","1"))
data$hypoglycemia_symptoms_yesno.factor = factor(data$hypoglycemia_symptoms_yesno,levels=c("1","0"))
data$protocol_continued_70_50___1.factor = factor(data$protocol_continued_70_50___1,levels=c("0","1"))
data$protocol_continued_70_50___2.factor = factor(data$protocol_continued_70_50___2,levels=c("0","1"))
data$protocol_continued_70_52_sym___1.factor = factor(data$protocol_continued_70_52_sym___1,levels=c("0","1"))
data$protocol_continued_70_52_sym___2.factor = factor(data$protocol_continued_70_52_sym___2,levels=c("0","1"))
data$pocgluocse50andsymptoms_1___1.factor = factor(data$pocgluocse50andsymptoms_1___1,levels=c("0","1"))
data$pocgluocse50andsymptoms_1___2.factor = factor(data$pocgluocse50andsymptoms_1___2,levels=c("0","1"))
data$pocgluocse50andsymptoms_1___3.factor = factor(data$pocgluocse50andsymptoms_1___3,levels=c("0","1"))
data$pocgluocse50andsymptoms_1___4.factor = factor(data$pocgluocse50andsymptoms_1___4,levels=c("0","1"))
data$pocgluocse50andsymptoms_1___5.factor = factor(data$pocgluocse50andsymptoms_1___5,levels=c("0","1"))
data$pocglucose12050nosyx___1.factor = factor(data$pocglucose12050nosyx___1,levels=c("0","1"))
data$pocglucose12050nosyx___2.factor = factor(data$pocglucose12050nosyx___2,levels=c("0","1"))
data$hypoglycemia_symptoms_yesno_2.factor = factor(data$hypoglycemia_symptoms_yesno_2,levels=c("1","0"))
data$protocol_continued_70_51___1.factor = factor(data$protocol_continued_70_51___1,levels=c("0","1"))
data$protocol_continued_70_51___2.factor = factor(data$protocol_continued_70_51___2,levels=c("0","1"))
data$protocol_continued_70_52_sym_2___1.factor = factor(data$protocol_continued_70_52_sym_2___1,levels=c("0","1"))
data$protocol_continued_70_52_sym_2___2.factor = factor(data$protocol_continued_70_52_sym_2___2,levels=c("0","1"))
data$pocglucose12050nosyx_2___1.factor = factor(data$pocglucose12050nosyx_2___1,levels=c("0","1"))
data$pocglucose12050nosyx_2___2.factor = factor(data$pocglucose12050nosyx_2___2,levels=c("0","1"))
data$pocgluocse50andsymptoms_2___1.factor = factor(data$pocgluocse50andsymptoms_2___1,levels=c("0","1"))
data$pocgluocse50andsymptoms_2___2.factor = factor(data$pocgluocse50andsymptoms_2___2,levels=c("0","1"))
data$pocgluocse50andsymptoms_2___3.factor = factor(data$pocgluocse50andsymptoms_2___3,levels=c("0","1"))
data$pocgluocse50andsymptoms_2___4.factor = factor(data$pocgluocse50andsymptoms_2___4,levels=c("0","1"))
data$pocgluocse50andsymptoms_2___5.factor = factor(data$pocgluocse50andsymptoms_2___5,levels=c("0","1"))
data$hypoglycemia_symptoms_yesno_3.factor = factor(data$hypoglycemia_symptoms_yesno_3,levels=c("1","0"))
data$protocol_continued_70_52___1.factor = factor(data$protocol_continued_70_52___1,levels=c("0","1"))
data$protocol_continued_70_52___2.factor = factor(data$protocol_continued_70_52___2,levels=c("0","1"))
data$protocol_continued_70_52_sym_3___1.factor = factor(data$protocol_continued_70_52_sym_3___1,levels=c("0","1"))
data$protocol_continued_70_52_sym_3___2.factor = factor(data$protocol_continued_70_52_sym_3___2,levels=c("0","1"))
data$pocglucose12050nosyx_3___1.factor = factor(data$pocglucose12050nosyx_3___1,levels=c("0","1"))
data$pocglucose12050nosyx_3___2.factor = factor(data$pocglucose12050nosyx_3___2,levels=c("0","1"))
data$pocgluocse50andsymptoms_3___1.factor = factor(data$pocgluocse50andsymptoms_3___1,levels=c("0","1"))
data$pocgluocse50andsymptoms_3___2.factor = factor(data$pocgluocse50andsymptoms_3___2,levels=c("0","1"))
data$pocgluocse50andsymptoms_3___3.factor = factor(data$pocgluocse50andsymptoms_3___3,levels=c("0","1"))
data$pocgluocse50andsymptoms_3___4.factor = factor(data$pocgluocse50andsymptoms_3___4,levels=c("0","1"))
data$pocgluocse50andsymptoms_3___5.factor = factor(data$pocgluocse50andsymptoms_3___5,levels=c("0","1"))
data$random_hypoglycemia_ogtt.factor = factor(data$random_hypoglycemia_ogtt,levels=c("0","1"))
data$dischargepoc70.factor = factor(data$dischargepoc70,levels=c("1","2"))
data$dischargepocless70___1.factor = factor(data$dischargepocless70___1,levels=c("0","1"))
data$dischargepocless70___2.factor = factor(data$dischargepocless70___2,levels=c("0","1"))
data$dischargepocless70___3.factor = factor(data$dischargepocless70___3,levels=c("0","1"))
data$visit_completed.factor = factor(data$visit_completed,levels=c("1","0"))
data$ogtt_documentation_complete.factor = factor(data$ogtt_documentation_complete,levels=c("0","1","2"))
data$rando_hypo_symp_yn.factor = factor(data$rando_hypo_symp_yn,levels=c("1","0"))
data$random_hypoglycemia_complete.factor = factor(data$random_hypoglycemia_complete,levels=c("0","1","2"))
data$spec_forms_age_rando.factor = factor(data$spec_forms_age_rando,levels=c("1","2","3"))
data$shaky_rando_p.factor = factor(data$shaky_rando_p,levels=c("1","2"))
data$fast_heart_rando_p.factor = factor(data$fast_heart_rando_p,levels=c("1","2"))
data$sweaty_rando_p.factor = factor(data$sweaty_rando_p,levels=c("1","2"))
data$tired_not_sleep_rando_p.factor = factor(data$tired_not_sleep_rando_p,levels=c("1","2"))
data$hungry_rando_p.factor = factor(data$hungry_rando_p,levels=c("1","2"))
data$grumpy_unknown_p.factor = factor(data$grumpy_unknown_p,levels=c("1","2"))
data$shaky_rando_t.factor = factor(data$shaky_rando_t,levels=c("1","2"))
data$fast_heart_rando_t.factor = factor(data$fast_heart_rando_t,levels=c("1","2"))
data$sweat_rando_t.factor = factor(data$sweat_rando_t,levels=c("1","2"))
data$tired_not_slep_rando_t.factor = factor(data$tired_not_slep_rando_t,levels=c("1","2"))
data$hunger_rando_t.factor = factor(data$hunger_rando_t,levels=c("1","2"))
data$grumpy_unknown_rando_t.factor = factor(data$grumpy_unknown_rando_t,levels=c("1","2"))
data$heart_pound_rando_t.factor = factor(data$heart_pound_rando_t,levels=c("0","1","2","3","4","5","6"))
data$shaky_trem_rando_t.factor = factor(data$shaky_trem_rando_t,levels=c("0","1","2","3","4","5","6"))
data$nerv_anx_rando_t.factor = factor(data$nerv_anx_rando_t,levels=c("0","1","2","3","4","5","6"))
data$sweaty_rando_t.factor = factor(data$sweaty_rando_t,levels=c("0","1","2","3","4","5","6"))
data$hungry_rando_t.factor = factor(data$hungry_rando_t,levels=c("0","1","2","3","4","5","6"))
data$tingling_rando_t.factor = factor(data$tingling_rando_t,levels=c("0","1","2","3","4","5","6"))
data$diff_think_rando_t.factor = factor(data$diff_think_rando_t,levels=c("0","1","2","3","4","5","6"))
data$tired_drowsy_rando_t.factor = factor(data$tired_drowsy_rando_t,levels=c("0","1","2","3","4","5","6"))
data$weak_rando_t.factor = factor(data$weak_rando_t,levels=c("0","1","2","3","4","5","6"))
data$warm_rando_t.factor = factor(data$warm_rando_t,levels=c("0","1","2","3","4","5","6"))
data$faint_rando_t.factor = factor(data$faint_rando_t,levels=c("0","1","2","3","4","5","6"))
data$dizzy_rando_t.factor = factor(data$dizzy_rando_t,levels=c("0","1","2","3","4","5","6"))
data$heart_pound_rando_a.factor = factor(data$heart_pound_rando_a,levels=c("0","1","2","3","4","5","6"))
data$shaky_trem_rando_a.factor = factor(data$shaky_trem_rando_a,levels=c("0","1","2","3","4","5","6"))
data$nerv_anx_rando_a.factor = factor(data$nerv_anx_rando_a,levels=c("0","1","2","3","4","5","6"))
data$sweat_rando_a.factor = factor(data$sweat_rando_a,levels=c("0","1","2","3","4","5","6"))
data$hungry_rando_a.factor = factor(data$hungry_rando_a,levels=c("0","1","2","3","4","5","6"))
data$tingling_rando_a.factor = factor(data$tingling_rando_a,levels=c("0","1","2","3","4","5","6"))
data$diff_think_rando_a.factor = factor(data$diff_think_rando_a,levels=c("0","1","2","3","4","5","6"))
data$tired_drowsy_rando_a.factor = factor(data$tired_drowsy_rando_a,levels=c("0","1","2","3","4","5","6"))
data$weak_rando_a.factor = factor(data$weak_rando_a,levels=c("0","1","2","3","4","5","6"))
data$warm_rando_a.factor = factor(data$warm_rando_a,levels=c("0","1","2","3","4","5","6"))
data$faint_rando_a.factor = factor(data$faint_rando_a,levels=c("0","1","2","3","4","5","6"))
data$dizzy_rando_a.factor = factor(data$dizzy_rando_a,levels=c("0","1","2","3","4","5","6"))
data$random_hypoglycemia_questionnaires_complete.factor = factor(data$random_hypoglycemia_questionnaires_complete,levels=c("0","1","2"))
data$heart_pounding_baseline.factor = factor(data$heart_pounding_baseline,levels=c("0","1","2","3","4","5","6"))
data$shaky_tremulous_baseline.factor = factor(data$shaky_tremulous_baseline,levels=c("0","1","2","3","4","5","6"))
data$nervous_anxious_baseline.factor = factor(data$nervous_anxious_baseline,levels=c("0","1","2","3","4","5","6"))
data$sweaty_baseline.factor = factor(data$sweaty_baseline,levels=c("0","1","2","3","4","5","6"))
data$hungry_baseline.factor = factor(data$hungry_baseline,levels=c("0","1","2","3","4","5","6"))
data$tingling_baseline.factor = factor(data$tingling_baseline,levels=c("0","1","2","3","4","5","6"))
data$diff_thinking_baseline.factor = factor(data$diff_thinking_baseline,levels=c("0","1","2","3","4","5","6"))
data$tired_drowsy_baseline.factor = factor(data$tired_drowsy_baseline,levels=c("0","1","2","3","4","5","6"))
data$weak_baseline.factor = factor(data$weak_baseline,levels=c("0","1","2","3","4","5","6"))
data$warm_baseline.factor = factor(data$warm_baseline,levels=c("0","1","2","3","4","5","6"))
data$faint_baseline.factor = factor(data$faint_baseline,levels=c("0","1","2","3","4","5","6"))
data$dizzy_baseline.factor = factor(data$dizzy_baseline,levels=c("0","1","2","3","4","5","6"))
data$heart_pounding_120.factor = factor(data$heart_pounding_120,levels=c("0","1","2","3","4","5","6"))
data$shaky_tremulous_120.factor = factor(data$shaky_tremulous_120,levels=c("0","1","2","3","4","5","6"))
data$nervous_anxious_120.factor = factor(data$nervous_anxious_120,levels=c("0","1","2","3","4","5","6"))
data$sweaty_120.factor = factor(data$sweaty_120,levels=c("0","1","2","3","4","5","6"))
data$hungry_120.factor = factor(data$hungry_120,levels=c("0","1","2","3","4","5","6"))
data$tingling_120.factor = factor(data$tingling_120,levels=c("0","1","2","3","4","5","6"))
data$diff_thinking_120.factor = factor(data$diff_thinking_120,levels=c("0","1","2","3","4","5","6"))
data$tired_drowsy_120.factor = factor(data$tired_drowsy_120,levels=c("0","1","2","3","4","5","6"))
data$weak_120.factor = factor(data$weak_120,levels=c("0","1","2","3","4","5","6"))
data$warm_120.factor = factor(data$warm_120,levels=c("0","1","2","3","4","5","6"))
data$faint_120.factor = factor(data$faint_120,levels=c("0","1","2","3","4","5","6"))
data$dizzy_120.factor = factor(data$dizzy_120,levels=c("0","1","2","3","4","5","6"))
data$heart_pounding_150.factor = factor(data$heart_pounding_150,levels=c("0","1","2","3","4","5","6"))
data$shaky_tremulous_150.factor = factor(data$shaky_tremulous_150,levels=c("0","1","2","3","4","5","6"))
data$nervous_anxious_150.factor = factor(data$nervous_anxious_150,levels=c("0","1","2","3","4","5","6"))
data$sweaty_150.factor = factor(data$sweaty_150,levels=c("0","1","2","3","4","5","6"))
data$hungry_150.factor = factor(data$hungry_150,levels=c("0","1","2","3","4","5","6"))
data$tingling_150.factor = factor(data$tingling_150,levels=c("0","1","2","3","4","5","6"))
data$diff_thinking_150.factor = factor(data$diff_thinking_150,levels=c("0","1","2","3","4","5","6"))
data$tired_drowsy_150.factor = factor(data$tired_drowsy_150,levels=c("0","1","2","3","4","5","6"))
data$weak_150.factor = factor(data$weak_150,levels=c("0","1","2","3","4","5","6"))
data$warm_150.factor = factor(data$warm_150,levels=c("0","1","2","3","4","5","6"))
data$faint_150.factor = factor(data$faint_150,levels=c("0","1","2","3","4","5","6"))
data$dizzy_150.factor = factor(data$dizzy_150,levels=c("0","1","2","3","4","5","6"))
data$heart_pounding_180.factor = factor(data$heart_pounding_180,levels=c("0","1","2","3","4","5","6"))
data$shaky_tremulous_180.factor = factor(data$shaky_tremulous_180,levels=c("0","1","2","3","4","5","6"))
data$nervous_anxious_180.factor = factor(data$nervous_anxious_180,levels=c("0","1","2","3","4","5","6"))
data$sweaty_180.factor = factor(data$sweaty_180,levels=c("0","1","2","3","4","5","6"))
data$hungry_180.factor = factor(data$hungry_180,levels=c("0","1","2","3","4","5","6"))
data$tingling_180.factor = factor(data$tingling_180,levels=c("0","1","2","3","4","5","6"))
data$diff_thinking_180.factor = factor(data$diff_thinking_180,levels=c("0","1","2","3","4","5","6"))
data$tired_drowsy_180.factor = factor(data$tired_drowsy_180,levels=c("0","1","2","3","4","5","6"))
data$weak_180.factor = factor(data$weak_180,levels=c("0","1","2","3","4","5","6"))
data$warm_180.factor = factor(data$warm_180,levels=c("0","1","2","3","4","5","6"))
data$faint_180.factor = factor(data$faint_180,levels=c("0","1","2","3","4","5","6"))
data$dizzy_180.factor = factor(data$dizzy_180,levels=c("0","1","2","3","4","5","6"))
data$ogtt_hypoglycemia_questionnaires_complete.factor = factor(data$ogtt_hypoglycemia_questionnaires_complete,levels=c("0","1","2"))
data$shaking_peds_base.factor = factor(data$shaking_peds_base,levels=c("1","0"))
data$fast_heart_peds_base.factor = factor(data$fast_heart_peds_base,levels=c("1","0"))
data$sweating_peds_base.factor = factor(data$sweating_peds_base,levels=c("1","0"))
data$weak_peds_base.factor = factor(data$weak_peds_base,levels=c("1","0"))
data$hunger_peds_base.factor = factor(data$hunger_peds_base,levels=c("1","0"))
data$irritable_peds_base.factor = factor(data$irritable_peds_base,levels=c("1","0"))
data$shaking_peds_120.factor = factor(data$shaking_peds_120,levels=c("1","0"))
data$fast_heart_peds_120.factor = factor(data$fast_heart_peds_120,levels=c("1","0"))
data$sweating_peds_120.factor = factor(data$sweating_peds_120,levels=c("1","0"))
data$weak_peds_120.factor = factor(data$weak_peds_120,levels=c("1","0"))
data$hunger_peds_120.factor = factor(data$hunger_peds_120,levels=c("1","0"))
data$irritable_peds_120.factor = factor(data$irritable_peds_120,levels=c("1","0"))
data$shaking_peds_150.factor = factor(data$shaking_peds_150,levels=c("1","0"))
data$fast_heart_peds_150.factor = factor(data$fast_heart_peds_150,levels=c("1","0"))
data$sweating_peds_150.factor = factor(data$sweating_peds_150,levels=c("1","0"))
data$weak_peds_150.factor = factor(data$weak_peds_150,levels=c("1","0"))
data$hunger_peds_150.factor = factor(data$hunger_peds_150,levels=c("1","0"))
data$irritable_peds_150.factor = factor(data$irritable_peds_150,levels=c("1","0"))
data$shaking_peds_180.factor = factor(data$shaking_peds_180,levels=c("1","0"))
data$fast_heart_peds_180.factor = factor(data$fast_heart_peds_180,levels=c("1","0"))
data$sweating_peds_180.factor = factor(data$sweating_peds_180,levels=c("1","0"))
data$weak_peds_180.factor = factor(data$weak_peds_180,levels=c("1","0"))
data$hunger_peds_180.factor = factor(data$hunger_peds_180,levels=c("1","0"))
data$irritable_peds_180.factor = factor(data$irritable_peds_180,levels=c("1","0"))
data$ogtt_hypoglycemia_questionnaire_age_618_complete.factor = factor(data$ogtt_hypoglycemia_questionnaire_age_618_complete,levels=c("0","1","2"))
data$questionnaire_filled_out.factor = factor(data$questionnaire_filled_out,levels=c("1","0"))
data$home_hypo_symptoms_yn.factor = factor(data$home_hypo_symptoms_yn,levels=c("1","0"))
data$i_feel___0.factor = factor(data$i_feel___0,levels=c("0","1"))
data$i_feel___1.factor = factor(data$i_feel___1,levels=c("0","1"))
data$i_feel___2.factor = factor(data$i_feel___2,levels=c("0","1"))
data$i_feel___3.factor = factor(data$i_feel___3,levels=c("0","1"))
data$i_feel___4.factor = factor(data$i_feel___4,levels=c("0","1"))
data$i_feel___5.factor = factor(data$i_feel___5,levels=c("0","1"))
data$i_feel___6.factor = factor(data$i_feel___6,levels=c("0","1"))
data$i_feel___7.factor = factor(data$i_feel___7,levels=c("0","1"))
data$i_feel___8.factor = factor(data$i_feel___8,levels=c("0","1"))
data$i_feel___9.factor = factor(data$i_feel___9,levels=c("0","1"))
data$i_feel___10.factor = factor(data$i_feel___10,levels=c("0","1"))
data$i_feel___11.factor = factor(data$i_feel___11,levels=c("0","1"))
data$it_was_recognized_by.factor = factor(data$it_was_recognized_by,levels=c("0","1"))
data$i_needed___0.factor = factor(data$i_needed___0,levels=c("0","1"))
data$i_needed___1.factor = factor(data$i_needed___1,levels=c("0","1"))
data$i_needed___2.factor = factor(data$i_needed___2,levels=c("0","1"))
data$juice_or_food.factor = factor(data$juice_or_food,levels=c("0","1","2"))
data$another_section_1.factor = factor(data$another_section_1,levels=c("1","0"))
data$i_feel_2___0.factor = factor(data$i_feel_2___0,levels=c("0","1"))
data$i_feel_2___1.factor = factor(data$i_feel_2___1,levels=c("0","1"))
data$i_feel_2___2.factor = factor(data$i_feel_2___2,levels=c("0","1"))
data$i_feel_2___3.factor = factor(data$i_feel_2___3,levels=c("0","1"))
data$i_feel_2___4.factor = factor(data$i_feel_2___4,levels=c("0","1"))
data$i_feel_2___5.factor = factor(data$i_feel_2___5,levels=c("0","1"))
data$i_feel_2___6.factor = factor(data$i_feel_2___6,levels=c("0","1"))
data$i_feel_2___7.factor = factor(data$i_feel_2___7,levels=c("0","1"))
data$i_feel_2___8.factor = factor(data$i_feel_2___8,levels=c("0","1"))
data$i_feel_2___9.factor = factor(data$i_feel_2___9,levels=c("0","1"))
data$i_feel_2___10.factor = factor(data$i_feel_2___10,levels=c("0","1"))
data$i_feel_2___11.factor = factor(data$i_feel_2___11,levels=c("0","1"))
data$it_was_recognized_by_2.factor = factor(data$it_was_recognized_by_2,levels=c("0","1"))
data$i_needed_2___0.factor = factor(data$i_needed_2___0,levels=c("0","1"))
data$i_needed_2___1.factor = factor(data$i_needed_2___1,levels=c("0","1"))
data$i_needed_2___2.factor = factor(data$i_needed_2___2,levels=c("0","1"))
data$juice_or_food_2.factor = factor(data$juice_or_food_2,levels=c("0","1","2"))
data$another_section_2.factor = factor(data$another_section_2,levels=c("1","0"))
data$i_feel_3___0.factor = factor(data$i_feel_3___0,levels=c("0","1"))
data$i_feel_3___1.factor = factor(data$i_feel_3___1,levels=c("0","1"))
data$i_feel_3___2.factor = factor(data$i_feel_3___2,levels=c("0","1"))
data$i_feel_3___3.factor = factor(data$i_feel_3___3,levels=c("0","1"))
data$i_feel_3___4.factor = factor(data$i_feel_3___4,levels=c("0","1"))
data$i_feel_3___5.factor = factor(data$i_feel_3___5,levels=c("0","1"))
data$i_feel_3___6.factor = factor(data$i_feel_3___6,levels=c("0","1"))
data$i_feel_3___7.factor = factor(data$i_feel_3___7,levels=c("0","1"))
data$i_feel_3___8.factor = factor(data$i_feel_3___8,levels=c("0","1"))
data$i_feel_3___9.factor = factor(data$i_feel_3___9,levels=c("0","1"))
data$i_feel_3___10.factor = factor(data$i_feel_3___10,levels=c("0","1"))
data$i_feel_3___11.factor = factor(data$i_feel_3___11,levels=c("0","1"))
data$it_was_recognized_by_3.factor = factor(data$it_was_recognized_by_3,levels=c("0","1"))
data$i_needed_3___0.factor = factor(data$i_needed_3___0,levels=c("0","1"))
data$i_needed_3___1.factor = factor(data$i_needed_3___1,levels=c("0","1"))
data$i_needed_3___2.factor = factor(data$i_needed_3___2,levels=c("0","1"))
data$juice_or_food_3.factor = factor(data$juice_or_food_3,levels=c("0","1","2"))
data$another_section_3.factor = factor(data$another_section_3,levels=c("1","0"))
data$i_feel_4___0.factor = factor(data$i_feel_4___0,levels=c("0","1"))
data$i_feel_4___1.factor = factor(data$i_feel_4___1,levels=c("0","1"))
data$i_feel_4___2.factor = factor(data$i_feel_4___2,levels=c("0","1"))
data$i_feel_4___3.factor = factor(data$i_feel_4___3,levels=c("0","1"))
data$i_feel_4___4.factor = factor(data$i_feel_4___4,levels=c("0","1"))
data$i_feel_4___5.factor = factor(data$i_feel_4___5,levels=c("0","1"))
data$i_feel_4___6.factor = factor(data$i_feel_4___6,levels=c("0","1"))
data$i_feel_4___7.factor = factor(data$i_feel_4___7,levels=c("0","1"))
data$i_feel_4___8.factor = factor(data$i_feel_4___8,levels=c("0","1"))
data$i_feel_4___9.factor = factor(data$i_feel_4___9,levels=c("0","1"))
data$i_feel_4___10.factor = factor(data$i_feel_4___10,levels=c("0","1"))
data$i_feel_4___11.factor = factor(data$i_feel_4___11,levels=c("0","1"))
data$it_was_recognized_by_4.factor = factor(data$it_was_recognized_by_4,levels=c("0","1"))
data$i_needed_4___0.factor = factor(data$i_needed_4___0,levels=c("0","1"))
data$i_needed_4___1.factor = factor(data$i_needed_4___1,levels=c("0","1"))
data$i_needed_4___2.factor = factor(data$i_needed_4___2,levels=c("0","1"))
data$juice_or_food_4.factor = factor(data$juice_or_food_4,levels=c("0","1","2"))
data$another_section_4.factor = factor(data$another_section_4,levels=c("1","0"))
data$i_feel_5___0.factor = factor(data$i_feel_5___0,levels=c("0","1"))
data$i_feel_5___1.factor = factor(data$i_feel_5___1,levels=c("0","1"))
data$i_feel_5___2.factor = factor(data$i_feel_5___2,levels=c("0","1"))
data$i_feel_5___3.factor = factor(data$i_feel_5___3,levels=c("0","1"))
data$i_feel_5___4.factor = factor(data$i_feel_5___4,levels=c("0","1"))
data$i_feel_5___5.factor = factor(data$i_feel_5___5,levels=c("0","1"))
data$i_feel_5___6.factor = factor(data$i_feel_5___6,levels=c("0","1"))
data$i_feel_5___7.factor = factor(data$i_feel_5___7,levels=c("0","1"))
data$i_feel_5___8.factor = factor(data$i_feel_5___8,levels=c("0","1"))
data$i_feel_5___9.factor = factor(data$i_feel_5___9,levels=c("0","1"))
data$i_feel_5___10.factor = factor(data$i_feel_5___10,levels=c("0","1"))
data$i_feel_5___11.factor = factor(data$i_feel_5___11,levels=c("0","1"))
data$it_was_recognized_by_5.factor = factor(data$it_was_recognized_by_5,levels=c("0","1"))
data$i_needed_5___0.factor = factor(data$i_needed_5___0,levels=c("0","1"))
data$i_needed_5___1.factor = factor(data$i_needed_5___1,levels=c("0","1"))
data$i_needed_5___2.factor = factor(data$i_needed_5___2,levels=c("0","1"))
data$juice_or_food_5.factor = factor(data$juice_or_food_5,levels=c("0","1","2"))
data$another_section_5.factor = factor(data$another_section_5,levels=c("1","0"))
data$i_feel_6___0.factor = factor(data$i_feel_6___0,levels=c("0","1"))
data$i_feel_6___1.factor = factor(data$i_feel_6___1,levels=c("0","1"))
data$i_feel_6___2.factor = factor(data$i_feel_6___2,levels=c("0","1"))
data$i_feel_6___3.factor = factor(data$i_feel_6___3,levels=c("0","1"))
data$i_feel_6___4.factor = factor(data$i_feel_6___4,levels=c("0","1"))
data$i_feel_6___5.factor = factor(data$i_feel_6___5,levels=c("0","1"))
data$i_feel_6___6.factor = factor(data$i_feel_6___6,levels=c("0","1"))
data$i_feel_6___7.factor = factor(data$i_feel_6___7,levels=c("0","1"))
data$i_feel_6___8.factor = factor(data$i_feel_6___8,levels=c("0","1"))
data$i_feel_6___9.factor = factor(data$i_feel_6___9,levels=c("0","1"))
data$i_feel_6___10.factor = factor(data$i_feel_6___10,levels=c("0","1"))
data$i_feel_6___11.factor = factor(data$i_feel_6___11,levels=c("0","1"))
data$it_was_recognized_by_6.factor = factor(data$it_was_recognized_by_6,levels=c("0","1"))
data$i_needed_6___0.factor = factor(data$i_needed_6___0,levels=c("0","1"))
data$i_needed_6___1.factor = factor(data$i_needed_6___1,levels=c("0","1"))
data$i_needed_6___2.factor = factor(data$i_needed_6___2,levels=c("0","1"))
data$juice_or_food_6.factor = factor(data$juice_or_food_6,levels=c("0","1","2"))
data$another_section_6.factor = factor(data$another_section_6,levels=c("1","0"))
data$i_feel_7___0.factor = factor(data$i_feel_7___0,levels=c("0","1"))
data$i_feel_7___1.factor = factor(data$i_feel_7___1,levels=c("0","1"))
data$i_feel_7___2.factor = factor(data$i_feel_7___2,levels=c("0","1"))
data$i_feel_7___3.factor = factor(data$i_feel_7___3,levels=c("0","1"))
data$i_feel_7___4.factor = factor(data$i_feel_7___4,levels=c("0","1"))
data$i_feel_7___5.factor = factor(data$i_feel_7___5,levels=c("0","1"))
data$i_feel_7___6.factor = factor(data$i_feel_7___6,levels=c("0","1"))
data$i_feel_7___7.factor = factor(data$i_feel_7___7,levels=c("0","1"))
data$i_feel_7___8.factor = factor(data$i_feel_7___8,levels=c("0","1"))
data$i_feel_7___9.factor = factor(data$i_feel_7___9,levels=c("0","1"))
data$i_feel_7___10.factor = factor(data$i_feel_7___10,levels=c("0","1"))
data$i_feel_7___11.factor = factor(data$i_feel_7___11,levels=c("0","1"))
data$it_was_recognized_by_7.factor = factor(data$it_was_recognized_by_7,levels=c("0","1"))
data$i_needed_7___0.factor = factor(data$i_needed_7___0,levels=c("0","1"))
data$i_needed_7___1.factor = factor(data$i_needed_7___1,levels=c("0","1"))
data$i_needed_7___2.factor = factor(data$i_needed_7___2,levels=c("0","1"))
data$juice_or_food_7.factor = factor(data$juice_or_food_7,levels=c("0","1","2"))
data$another_section_7.factor = factor(data$another_section_7,levels=c("1","0"))
data$i_feel_8___0.factor = factor(data$i_feel_8___0,levels=c("0","1"))
data$i_feel_8___1.factor = factor(data$i_feel_8___1,levels=c("0","1"))
data$i_feel_8___2.factor = factor(data$i_feel_8___2,levels=c("0","1"))
data$i_feel_8___3.factor = factor(data$i_feel_8___3,levels=c("0","1"))
data$i_feel_8___4.factor = factor(data$i_feel_8___4,levels=c("0","1"))
data$i_feel_8___5.factor = factor(data$i_feel_8___5,levels=c("0","1"))
data$i_feel_8___6.factor = factor(data$i_feel_8___6,levels=c("0","1"))
data$i_feel_8___7.factor = factor(data$i_feel_8___7,levels=c("0","1"))
data$i_feel_8___8.factor = factor(data$i_feel_8___8,levels=c("0","1"))
data$i_feel_8___9.factor = factor(data$i_feel_8___9,levels=c("0","1"))
data$i_feel_8___10.factor = factor(data$i_feel_8___10,levels=c("0","1"))
data$i_feel_8___11.factor = factor(data$i_feel_8___11,levels=c("0","1"))
data$it_was_recognized_by_8.factor = factor(data$it_was_recognized_by_8,levels=c("0","1"))
data$i_needed_8___0.factor = factor(data$i_needed_8___0,levels=c("0","1"))
data$i_needed_8___1.factor = factor(data$i_needed_8___1,levels=c("0","1"))
data$i_needed_8___2.factor = factor(data$i_needed_8___2,levels=c("0","1"))
data$juice_or_food_8.factor = factor(data$juice_or_food_8,levels=c("0","1","2"))
data$athome_hypoglycemia_questionnaire_complete.factor = factor(data$athome_hypoglycemia_questionnaire_complete,levels=c("0","1","2"))
data$child_home_completed.factor = factor(data$child_home_completed,levels=c("1","0"))
data$child_home_hypo_symptoms.factor = factor(data$child_home_hypo_symptoms,levels=c("1","0"))
data$symptoms_child_hypo___0.factor = factor(data$symptoms_child_hypo___0,levels=c("0","1"))
data$symptoms_child_hypo___1.factor = factor(data$symptoms_child_hypo___1,levels=c("0","1"))
data$symptoms_child_hypo___2.factor = factor(data$symptoms_child_hypo___2,levels=c("0","1"))
data$symptoms_child_hypo___3.factor = factor(data$symptoms_child_hypo___3,levels=c("0","1"))
data$symptoms_child_hypo___4.factor = factor(data$symptoms_child_hypo___4,levels=c("0","1"))
data$symptoms_child_hypo___5.factor = factor(data$symptoms_child_hypo___5,levels=c("0","1"))
data$another_section_filled.factor = factor(data$another_section_filled,levels=c("1","0"))
data$symptoms_child_hypo_2___0.factor = factor(data$symptoms_child_hypo_2___0,levels=c("0","1"))
data$symptoms_child_hypo_2___1.factor = factor(data$symptoms_child_hypo_2___1,levels=c("0","1"))
data$symptoms_child_hypo_2___2.factor = factor(data$symptoms_child_hypo_2___2,levels=c("0","1"))
data$symptoms_child_hypo_2___3.factor = factor(data$symptoms_child_hypo_2___3,levels=c("0","1"))
data$symptoms_child_hypo_2___4.factor = factor(data$symptoms_child_hypo_2___4,levels=c("0","1"))
data$symptoms_child_hypo_2___5.factor = factor(data$symptoms_child_hypo_2___5,levels=c("0","1"))
data$third_section_filled_out.factor = factor(data$third_section_filled_out,levels=c("1","0"))
data$symptoms_child_hypo_3___0.factor = factor(data$symptoms_child_hypo_3___0,levels=c("0","1"))
data$symptoms_child_hypo_3___1.factor = factor(data$symptoms_child_hypo_3___1,levels=c("0","1"))
data$symptoms_child_hypo_3___2.factor = factor(data$symptoms_child_hypo_3___2,levels=c("0","1"))
data$symptoms_child_hypo_3___3.factor = factor(data$symptoms_child_hypo_3___3,levels=c("0","1"))
data$symptoms_child_hypo_3___4.factor = factor(data$symptoms_child_hypo_3___4,levels=c("0","1"))
data$symptoms_child_hypo_3___5.factor = factor(data$symptoms_child_hypo_3___5,levels=c("0","1"))
data$fourth_section_filled.factor = factor(data$fourth_section_filled,levels=c("1","0"))
data$symptoms_child_hypo_4___0.factor = factor(data$symptoms_child_hypo_4___0,levels=c("0","1"))
data$symptoms_child_hypo_4___1.factor = factor(data$symptoms_child_hypo_4___1,levels=c("0","1"))
data$symptoms_child_hypo_4___2.factor = factor(data$symptoms_child_hypo_4___2,levels=c("0","1"))
data$symptoms_child_hypo_4___3.factor = factor(data$symptoms_child_hypo_4___3,levels=c("0","1"))
data$symptoms_child_hypo_4___4.factor = factor(data$symptoms_child_hypo_4___4,levels=c("0","1"))
data$symptoms_child_hypo_4___5.factor = factor(data$symptoms_child_hypo_4___5,levels=c("0","1"))
data$fifth_section_filled.factor = factor(data$fifth_section_filled,levels=c("1","0"))
data$symptoms_child_hypo_5___0.factor = factor(data$symptoms_child_hypo_5___0,levels=c("0","1"))
data$symptoms_child_hypo_5___1.factor = factor(data$symptoms_child_hypo_5___1,levels=c("0","1"))
data$symptoms_child_hypo_5___2.factor = factor(data$symptoms_child_hypo_5___2,levels=c("0","1"))
data$symptoms_child_hypo_5___3.factor = factor(data$symptoms_child_hypo_5___3,levels=c("0","1"))
data$symptoms_child_hypo_5___4.factor = factor(data$symptoms_child_hypo_5___4,levels=c("0","1"))
data$symptoms_child_hypo_5___5.factor = factor(data$symptoms_child_hypo_5___5,levels=c("0","1"))
data$sixth_section_filled.factor = factor(data$sixth_section_filled,levels=c("1","0"))
data$symptoms_child_hypo_6___0.factor = factor(data$symptoms_child_hypo_6___0,levels=c("0","1"))
data$symptoms_child_hypo_6___1.factor = factor(data$symptoms_child_hypo_6___1,levels=c("0","1"))
data$symptoms_child_hypo_6___2.factor = factor(data$symptoms_child_hypo_6___2,levels=c("0","1"))
data$symptoms_child_hypo_6___3.factor = factor(data$symptoms_child_hypo_6___3,levels=c("0","1"))
data$symptoms_child_hypo_6___4.factor = factor(data$symptoms_child_hypo_6___4,levels=c("0","1"))
data$symptoms_child_hypo_6___5.factor = factor(data$symptoms_child_hypo_6___5,levels=c("0","1"))
data$seventh_section_filled.factor = factor(data$seventh_section_filled,levels=c("1","0"))
data$symptoms_child_hypo_7___0.factor = factor(data$symptoms_child_hypo_7___0,levels=c("0","1"))
data$symptoms_child_hypo_7___1.factor = factor(data$symptoms_child_hypo_7___1,levels=c("0","1"))
data$symptoms_child_hypo_7___2.factor = factor(data$symptoms_child_hypo_7___2,levels=c("0","1"))
data$symptoms_child_hypo_7___3.factor = factor(data$symptoms_child_hypo_7___3,levels=c("0","1"))
data$symptoms_child_hypo_7___4.factor = factor(data$symptoms_child_hypo_7___4,levels=c("0","1"))
data$symptoms_child_hypo_7___5.factor = factor(data$symptoms_child_hypo_7___5,levels=c("0","1"))
data$eighth_section_filled.factor = factor(data$eighth_section_filled,levels=c("1","0"))
data$symptoms_child_hypo_8___0.factor = factor(data$symptoms_child_hypo_8___0,levels=c("0","1"))
data$symptoms_child_hypo_8___1.factor = factor(data$symptoms_child_hypo_8___1,levels=c("0","1"))
data$symptoms_child_hypo_8___2.factor = factor(data$symptoms_child_hypo_8___2,levels=c("0","1"))
data$symptoms_child_hypo_8___3.factor = factor(data$symptoms_child_hypo_8___3,levels=c("0","1"))
data$symptoms_child_hypo_8___4.factor = factor(data$symptoms_child_hypo_8___4,levels=c("0","1"))
data$symptoms_child_hypo_8___5.factor = factor(data$symptoms_child_hypo_8___5,levels=c("0","1"))
data$athome_child_hypoglycemia_questionnaire_complete.factor = factor(data$athome_child_hypoglycemia_questionnaire_complete,levels=c("0","1","2"))
data$pft_yes_no.factor = factor(data$pft_yes_no,levels=c("1","0"))
data$home_pft_yn.factor = factor(data$home_pft_yn,levels=c("1","0"))
data$pulmonary_function_complete.factor = factor(data$pulmonary_function_complete,levels=c("0","1","2"))
data$ae_occur.factor = factor(data$ae_occur,levels=c("1","0"))
data$ae_severity.factor = factor(data$ae_severity,levels=c("1","2","3"))
data$action_taken.factor = factor(data$action_taken,levels=c("0","1","2"))
data$ae_outcome.factor = factor(data$ae_outcome,levels=c("0","1","2","3","4"))
data$ae_relation_to_study.factor = factor(data$ae_relation_to_study,levels=c("5","4","3","2","1"))
data$ae_serious.factor = factor(data$ae_serious,levels=c("1","2"))
data$adverse_event_log_complete.factor = factor(data$adverse_event_log_complete,levels=c("0","1","2"))
data$y_n_protocol_dev.factor = factor(data$y_n_protocol_dev,levels=c("1","0"))
data$deviation_type.factor = factor(data$deviation_type,levels=c("1","2","3","4","5","6","7","8","9","10","11"))
data$timing_of_deviation.factor = factor(data$timing_of_deviation,levels=c("1","2","3"))
data$dev_id_by.factor = factor(data$dev_id_by,levels=c("1","2","3","4","5","6"))
data$deviation_result_ae.factor = factor(data$deviation_result_ae,levels=c("1","0"))
data$second_protocol_dev.factor = factor(data$second_protocol_dev,levels=c("1","0"))
data$deviation_type_2.factor = factor(data$deviation_type_2,levels=c("1","2","3","4","5","6","7","8","9","10","11"))
data$timing_of_deviation_2.factor = factor(data$timing_of_deviation_2,levels=c("1","2","3"))
data$dev_id_by_2.factor = factor(data$dev_id_by_2,levels=c("1","2","3","4","5"))
data$deviation_result_ae_2.factor = factor(data$deviation_result_ae_2,levels=c("1","0"))
data$third_protocol_dev.factor = factor(data$third_protocol_dev,levels=c("1","0"))
data$deviation_type_3.factor = factor(data$deviation_type_3,levels=c("1","2","3","4","5","6","7","8","9","10","11"))
data$timing_of_deviation_3.factor = factor(data$timing_of_deviation_3,levels=c("1","2","3"))
data$dev_id_by_3.factor = factor(data$dev_id_by_3,levels=c("1","2","3","4","5"))
data$deviation_result_ae_3.factor = factor(data$deviation_result_ae_3,levels=c("1","0"))
data$fourth_protocol_dev.factor = factor(data$fourth_protocol_dev,levels=c("1","0"))
data$deviation_type_4.factor = factor(data$deviation_type_4,levels=c("1","2","3","4","5","6","7","8","9","10","11"))
data$timing_of_deviation_4.factor = factor(data$timing_of_deviation_4,levels=c("1","2","3"))
data$dev_id_by_4.factor = factor(data$dev_id_by_4,levels=c("1","2","3","4","5"))
data$deviation_result_ae_4.factor = factor(data$deviation_result_ae_4,levels=c("1","0"))
data$protocol_deviation_complete.factor = factor(data$protocol_deviation_complete,levels=c("0","1","2"))
data$agreed_to_cgm.factor = factor(data$agreed_to_cgm,levels=c("1","0"))
data$cgm_placement_site.factor = factor(data$cgm_placement_site,levels=c("1","2"))
data$cgm_instructions___1.factor = factor(data$cgm_instructions___1,levels=c("0","1"))
data$cgm_instructions___2.factor = factor(data$cgm_instructions___2,levels=c("0","1"))
data$cgm_instructions___3.factor = factor(data$cgm_instructions___3,levels=c("0","1"))
data$replace_cgm.factor = factor(data$replace_cgm,levels=c("1","0"))
data$cgm_data_success_failure.factor = factor(data$cgm_data_success_failure,levels=c("1","2"))
data$cgm_gaps_filled_in.factor = factor(data$cgm_gaps_filled_in,levels=c("1","0"))
data$cgm_data_complete.factor = factor(data$cgm_data_complete,levels=c("0","1","2"))
data$patient_undergo_dexa.factor = factor(data$patient_undergo_dexa,levels=c("1","0"))
data$make_of_dxa_machine.factor = factor(data$make_of_dxa_machine,levels=c("1","2"))
data$dxa_data_complete.factor = factor(data$dxa_data_complete,levels=c("0","1","2"))
data$dxa_zscore_complete.factor = factor(data$dxa_zscore_complete,levels=c("0","1","2"))
data$glucose_ran_lab.factor = factor(data$glucose_ran_lab,levels=c("1","2"))
data$sample_issues.factor = factor(data$sample_issues,levels=c("1","0"))
data$sample_obtained_0_min.factor = factor(data$sample_obtained_0_min,levels=c("1","0"))
data$sample_obtained_10_min.factor = factor(data$sample_obtained_10_min,levels=c("1","0"))
data$sample_obtained_30_min.factor = factor(data$sample_obtained_30_min,levels=c("1","0"))
data$sample_obtained_60_min.factor = factor(data$sample_obtained_60_min,levels=c("1","0"))
data$sample_obtained_90_min.factor = factor(data$sample_obtained_90_min,levels=c("1","0"))
data$sample_obtained_120_min.factor = factor(data$sample_obtained_120_min,levels=c("1","0"))
data$sample_obtained_150_min.factor = factor(data$sample_obtained_150_min,levels=c("1","0"))
data$sample_obtained_180_min.factor = factor(data$sample_obtained_180_min,levels=c("1","0"))
data$ogtt_patient_results_complete.factor = factor(data$ogtt_patient_results_complete,levels=c("0","1","2"))
data$did_the_participant_redo_t.factor = factor(data$did_the_participant_redo_t,levels=c("1","0"))
data$participant_withdrawn_v0.factor = factor(data$participant_withdrawn_v0,levels=c("0","1","2"))
data$sex_v0.factor = factor(data$sex_v0,levels=c("1","2"))
data$ethnicity_v0.factor = factor(data$ethnicity_v0,levels=c("1","2","3"))
data$origin_race_v0.factor = factor(data$origin_race_v0,levels=c("1","2","3","4","5","6"))
data$cftr_genotype_available_in_v0.factor = factor(data$cftr_genotype_available_in_v0,levels=c("1","2","3","4"))
data$cftr_mutation_1_v0.factor = factor(data$cftr_mutation_1_v0,levels=c("1","2"))
data$type_of_mutation_1_v0.factor = factor(data$type_of_mutation_1_v0,levels=c("0","1"))
data$cftr_mutation_2_v0.factor = factor(data$cftr_mutation_2_v0,levels=c("1","2","3"))
data$type_of_mutation_2_v0.factor = factor(data$type_of_mutation_2_v0,levels=c("0","1"))
data$mutation_category_v0.factor = factor(data$mutation_category_v0,levels=c("0","1"))
data$new_born_screen_v0.factor = factor(data$new_born_screen_v0,levels=c("1","2","3"))
data$sweat_chloride_test_v0.factor = factor(data$sweat_chloride_test_v0,levels=c("1","0"))
data$pancreatic_status_v0.factor = factor(data$pancreatic_status_v0,levels=c("1","2","3"))
data$most_recent_sputum_culture_v0___1.factor = factor(data$most_recent_sputum_culture_v0___1,levels=c("0","1"))
data$most_recent_sputum_culture_v0___2.factor = factor(data$most_recent_sputum_culture_v0___2,levels=c("0","1"))
data$most_recent_sputum_culture_v0___3.factor = factor(data$most_recent_sputum_culture_v0___3,levels=c("0","1"))
data$most_recent_sputum_culture_v0___4.factor = factor(data$most_recent_sputum_culture_v0___4,levels=c("0","1"))
data$most_recent_sputum_culture_v0___5.factor = factor(data$most_recent_sputum_culture_v0___5,levels=c("0","1"))
data$most_recent_sputum_culture_v0___6.factor = factor(data$most_recent_sputum_culture_v0___6,levels=c("0","1"))
data$most_recent_sputum_culture_v0___7.factor = factor(data$most_recent_sputum_culture_v0___7,levels=c("0","1"))
data$most_recent_sputum_culture_v0___8.factor = factor(data$most_recent_sputum_culture_v0___8,levels=c("0","1"))
data$sputum_culture_year_v0___1.factor = factor(data$sputum_culture_year_v0___1,levels=c("0","1"))
data$sputum_culture_year_v0___2.factor = factor(data$sputum_culture_year_v0___2,levels=c("0","1"))
data$sputum_culture_year_v0___3.factor = factor(data$sputum_culture_year_v0___3,levels=c("0","1"))
data$sputum_culture_year_v0___4.factor = factor(data$sputum_culture_year_v0___4,levels=c("0","1"))
data$sputum_culture_year_v0___5.factor = factor(data$sputum_culture_year_v0___5,levels=c("0","1"))
data$sputum_culture_year_v0___6.factor = factor(data$sputum_culture_year_v0___6,levels=c("0","1"))
data$sputum_culture_year_v0___7.factor = factor(data$sputum_culture_year_v0___7,levels=c("0","1"))
data$sputum_culture_year_v0___8.factor = factor(data$sputum_culture_year_v0___8,levels=c("0","1"))
data$liver_disease_v0.factor = factor(data$liver_disease_v0,levels=c("1","0"))
data$corrector_yes_no_v0.factor = factor(data$corrector_yes_no_v0,levels=c("1","0"))
data$corrector_v0___1.factor = factor(data$corrector_v0___1,levels=c("0","1"))
data$corrector_v0___2.factor = factor(data$corrector_v0___2,levels=c("0","1"))
data$corrector_v0___3.factor = factor(data$corrector_v0___3,levels=c("0","1"))
data$corrector_v0___4.factor = factor(data$corrector_v0___4,levels=c("0","1"))
data$corrector_v0___5.factor = factor(data$corrector_v0___5,levels=c("0","1"))
data$family_history_diabetes_v0.factor = factor(data$family_history_diabetes_v0,levels=c("1","0"))
data$relative_with_diabetes_v0___1.factor = factor(data$relative_with_diabetes_v0___1,levels=c("0","1"))
data$relative_with_diabetes_v0___2.factor = factor(data$relative_with_diabetes_v0___2,levels=c("0","1"))
data$relative_with_diabetes_v0___3.factor = factor(data$relative_with_diabetes_v0___3,levels=c("0","1"))
data$relative_with_diabetes_v0___4.factor = factor(data$relative_with_diabetes_v0___4,levels=c("0","1"))
data$diabetes_hisotry_type_v0___1.factor = factor(data$diabetes_hisotry_type_v0___1,levels=c("0","1"))
data$diabetes_hisotry_type_v0___2.factor = factor(data$diabetes_hisotry_type_v0___2,levels=c("0","1"))
data$diabetes_hisotry_type_v0___3.factor = factor(data$diabetes_hisotry_type_v0___3,levels=c("0","1"))
data$diabetes_hisotry_type_v0___4.factor = factor(data$diabetes_hisotry_type_v0___4,levels=c("0","1"))
data$demographics_and_cf_history_repeat_visit_1_complete.factor = factor(data$demographics_and_cf_history_repeat_visit_1_complete,levels=c("0","1","2"))
data$antibiotics_v0___1.factor = factor(data$antibiotics_v0___1,levels=c("0","1"))
data$antibiotics_v0___2.factor = factor(data$antibiotics_v0___2,levels=c("0","1"))
data$antibiotics_v0___3.factor = factor(data$antibiotics_v0___3,levels=c("0","1"))
data$antibiotics_v0___4.factor = factor(data$antibiotics_v0___4,levels=c("0","1"))
data$antibiotics_v0___5.factor = factor(data$antibiotics_v0___5,levels=c("0","1"))
data$inhaled_steroids_v0.factor = factor(data$inhaled_steroids_v0,levels=c("1","0"))
data$patient_using_flonase_v0.factor = factor(data$patient_using_flonase_v0,levels=c("1","0"))
data$inhaled_beta_agonist_v0.factor = factor(data$inhaled_beta_agonist_v0,levels=c("1","0"))
data$pancreatic_enzyme_therapy_v0.factor = factor(data$pancreatic_enzyme_therapy_v0,levels=c("1","2","3"))
data$systemic_steroid_therapy_v0___1.factor = factor(data$systemic_steroid_therapy_v0___1,levels=c("0","1"))
data$systemic_steroid_therapy_v0___2.factor = factor(data$systemic_steroid_therapy_v0___2,levels=c("0","1"))
data$systemic_steroid_therapy_v0___3.factor = factor(data$systemic_steroid_therapy_v0___3,levels=c("0","1"))
data$systemic_steroid_therapy_v0___4.factor = factor(data$systemic_steroid_therapy_v0___4,levels=c("0","1"))
data$systemic_steroid_therapy_v0___5.factor = factor(data$systemic_steroid_therapy_v0___5,levels=c("0","1"))
data$systemic_steroid_therapy_v0___6.factor = factor(data$systemic_steroid_therapy_v0___6,levels=c("0","1"))
data$cf_multivitamins_aquadeks_v0.factor = factor(data$cf_multivitamins_aquadeks_v0,levels=c("1","0"))
data$vitamin_d_in_addition_to_m_v0.factor = factor(data$vitamin_d_in_addition_to_m_v0,levels=c("1","2","3"))
data$high_dose_ibuprofen_v0.factor = factor(data$high_dose_ibuprofen_v0,levels=c("1","2","3"))
data$inhaled_antibiotics_v0.factor = factor(data$inhaled_antibiotics_v0,levels=c("1","Yes","2"))
data$ursodiol_v0.factor = factor(data$ursodiol_v0,levels=c("1","0"))
data$gen_1_atyp_antipsych_v0___0.factor = factor(data$gen_1_atyp_antipsych_v0___0,levels=c("0","1"))
data$gen_1_atyp_antipsych_v0___1.factor = factor(data$gen_1_atyp_antipsych_v0___1,levels=c("0","1"))
data$gen_1_atyp_antipsych_v0___2.factor = factor(data$gen_1_atyp_antipsych_v0___2,levels=c("0","1"))
data$gen_1_atyp_antipsych_v0___3.factor = factor(data$gen_1_atyp_antipsych_v0___3,levels=c("0","1"))
data$gen_1_atyp_antipsych_v0___4.factor = factor(data$gen_1_atyp_antipsych_v0___4,levels=c("0","1"))
data$gen_1_atyp_antipsych_v0___5.factor = factor(data$gen_1_atyp_antipsych_v0___5,levels=c("0","1"))
data$gen_1_atyp_antipsych_v0___6.factor = factor(data$gen_1_atyp_antipsych_v0___6,levels=c("0","1"))
data$gen_1_atyp_antipsych_v0___7.factor = factor(data$gen_1_atyp_antipsych_v0___7,levels=c("0","1"))
data$gen_1_atyp_antipsych_v0___8.factor = factor(data$gen_1_atyp_antipsych_v0___8,levels=c("0","1"))
data$gen_1_atyp_antipsych_v0___9.factor = factor(data$gen_1_atyp_antipsych_v0___9,levels=c("0","1"))
data$gen_2_atyp_antipsych_v0___0.factor = factor(data$gen_2_atyp_antipsych_v0___0,levels=c("0","1"))
data$gen_2_atyp_antipsych_v0___1.factor = factor(data$gen_2_atyp_antipsych_v0___1,levels=c("0","1"))
data$gen_2_atyp_antipsych_v0___2.factor = factor(data$gen_2_atyp_antipsych_v0___2,levels=c("0","1"))
data$gen_2_atyp_antipsych_v0___3.factor = factor(data$gen_2_atyp_antipsych_v0___3,levels=c("0","1"))
data$gen_2_atyp_antipsych_v0___4.factor = factor(data$gen_2_atyp_antipsych_v0___4,levels=c("0","1"))
data$gen_2_atyp_antipsych_v0___5.factor = factor(data$gen_2_atyp_antipsych_v0___5,levels=c("0","1"))
data$gen_2_atyp_antipsych_v0___6.factor = factor(data$gen_2_atyp_antipsych_v0___6,levels=c("0","1"))
data$gen_2_atyp_antipsych_v0___7.factor = factor(data$gen_2_atyp_antipsych_v0___7,levels=c("0","1"))
data$gen_2_atyp_antipsych_v0___8.factor = factor(data$gen_2_atyp_antipsych_v0___8,levels=c("0","1"))
data$gen_2_atyp_antipsych_v0___9.factor = factor(data$gen_2_atyp_antipsych_v0___9,levels=c("0","1"))
data$gen_2_atyp_antipsych_v0___10.factor = factor(data$gen_2_atyp_antipsych_v0___10,levels=c("0","1"))
data$gen_2_atyp_antipsych_v0___11.factor = factor(data$gen_2_atyp_antipsych_v0___11,levels=c("0","1"))
data$gen_2_atyp_antipsych_v0___12.factor = factor(data$gen_2_atyp_antipsych_v0___12,levels=c("0","1"))
data$gen_2_atyp_antipsych_v0___13.factor = factor(data$gen_2_atyp_antipsych_v0___13,levels=c("0","1"))
data$current_medications_repeat_visit_1_complete.factor = factor(data$current_medications_repeat_visit_1_complete,levels=c("0","1","2"))
data$cf_yes_no_inclusion_v0.factor = factor(data$cf_yes_no_inclusion_v0,levels=c("1","0"))
data$age_6_yes_no_inclusion_v0.factor = factor(data$age_6_yes_no_inclusion_v0,levels=c("1","0"))
data$clin_stable_yes_no_inclusion_v0.factor = factor(data$clin_stable_yes_no_inclusion_v0,levels=c("1","0"))
data$other_diabetes_yes_no_v0.factor = factor(data$other_diabetes_yes_no_v0,levels=c("1","0"))
data$organ_tx_yes_no_v0.factor = factor(data$organ_tx_yes_no_v0,levels=c("1","0"))
data$cfrd_diabetes_med_yes_no_v0.factor = factor(data$cfrd_diabetes_med_yes_no_v0,levels=c("1","0"))
data$pulm_ex_last3months_v0.factor = factor(data$pulm_ex_last3months_v0,levels=c("1","0"))
data$corrector_yes_no_exclusion_v0.factor = factor(data$corrector_yes_no_exclusion_v0,levels=c("1","0"))
data$consent_completed_v0.factor = factor(data$consent_completed_v0,levels=c("1","0"))
data$upt_v0.factor = factor(data$upt_v0,levels=c("0","1","2","3","4"))
data$inclusionexclusion_repeat_visit_1_complete.factor = factor(data$inclusionexclusion_repeat_visit_1_complete,levels=c("0","1","2"))
data$fast_hours_v0.factor = factor(data$fast_hours_v0,levels=c("1","0"))
data$tanner_stage_v0.factor = factor(data$tanner_stage_v0,levels=c("1","2","3","4","5","6","7","8"))
data$tanner_female_pubic_v0.factor = factor(data$tanner_female_pubic_v0,levels=c("1","2","3","4","5","6"))
data$tanner_breast_dev_v0.factor = factor(data$tanner_breast_dev_v0,levels=c("1","2","3","4","5","6"))
data$tanner_male_pubic_v0.factor = factor(data$tanner_male_pubic_v0,levels=c("1","2","3","4","5","6"))
data$tanner_testicular_vol_v0.factor = factor(data$tanner_testicular_vol_v0,levels=c("1","2","3","4","5","6"))
data$type_of_temperature_v0.factor = factor(data$type_of_temperature_v0,levels=c("1","2","3"))
data$numbing_cream_v0___1.factor = factor(data$numbing_cream_v0___1,levels=c("0","1"))
data$numbing_cream_v0___2.factor = factor(data$numbing_cream_v0___2,levels=c("0","1"))
data$hypoglycemia_symptoms_yesno_v0.factor = factor(data$hypoglycemia_symptoms_yesno_v0,levels=c("1","0"))
data$protocol_continued_70_50_v0___1.factor = factor(data$protocol_continued_70_50_v0___1,levels=c("0","1"))
data$protocol_continued_70_50_v0___2.factor = factor(data$protocol_continued_70_50_v0___2,levels=c("0","1"))
data$protocol_continued_70_52_sym_v0___1.factor = factor(data$protocol_continued_70_52_sym_v0___1,levels=c("0","1"))
data$protocol_continued_70_52_sym_v0___2.factor = factor(data$protocol_continued_70_52_sym_v0___2,levels=c("0","1"))
data$pocgluocse50andsymptoms_1_v0___1.factor = factor(data$pocgluocse50andsymptoms_1_v0___1,levels=c("0","1"))
data$pocgluocse50andsymptoms_1_v0___2.factor = factor(data$pocgluocse50andsymptoms_1_v0___2,levels=c("0","1"))
data$pocgluocse50andsymptoms_1_v0___3.factor = factor(data$pocgluocse50andsymptoms_1_v0___3,levels=c("0","1"))
data$pocgluocse50andsymptoms_1_v0___4.factor = factor(data$pocgluocse50andsymptoms_1_v0___4,levels=c("0","1"))
data$pocgluocse50andsymptoms_1_v0___5.factor = factor(data$pocgluocse50andsymptoms_1_v0___5,levels=c("0","1"))
data$pocglucose12050nosyx_v0___1.factor = factor(data$pocglucose12050nosyx_v0___1,levels=c("0","1"))
data$pocglucose12050nosyx_v0___2.factor = factor(data$pocglucose12050nosyx_v0___2,levels=c("0","1"))
data$hypoglycemia_symptoms_yesno_2_v0.factor = factor(data$hypoglycemia_symptoms_yesno_2_v0,levels=c("1","0"))
data$protocol_continued_70_51_v0___1.factor = factor(data$protocol_continued_70_51_v0___1,levels=c("0","1"))
data$protocol_continued_70_51_v0___2.factor = factor(data$protocol_continued_70_51_v0___2,levels=c("0","1"))
data$protocol_continued_70_52_sym_2_v0___1.factor = factor(data$protocol_continued_70_52_sym_2_v0___1,levels=c("0","1"))
data$protocol_continued_70_52_sym_2_v0___2.factor = factor(data$protocol_continued_70_52_sym_2_v0___2,levels=c("0","1"))
data$pocglucose12050nosyx_2_v0___1.factor = factor(data$pocglucose12050nosyx_2_v0___1,levels=c("0","1"))
data$pocglucose12050nosyx_2_v0___2.factor = factor(data$pocglucose12050nosyx_2_v0___2,levels=c("0","1"))
data$pocgluocse50andsymptoms_2_v0___1.factor = factor(data$pocgluocse50andsymptoms_2_v0___1,levels=c("0","1"))
data$pocgluocse50andsymptoms_2_v0___2.factor = factor(data$pocgluocse50andsymptoms_2_v0___2,levels=c("0","1"))
data$pocgluocse50andsymptoms_2_v0___3.factor = factor(data$pocgluocse50andsymptoms_2_v0___3,levels=c("0","1"))
data$pocgluocse50andsymptoms_2_v0___4.factor = factor(data$pocgluocse50andsymptoms_2_v0___4,levels=c("0","1"))
data$pocgluocse50andsymptoms_2_v0___5.factor = factor(data$pocgluocse50andsymptoms_2_v0___5,levels=c("0","1"))
data$hypoglycemia_symptoms_yesno_3_v0.factor = factor(data$hypoglycemia_symptoms_yesno_3_v0,levels=c("1","0"))
data$protocol_continued_70_52_v0___1.factor = factor(data$protocol_continued_70_52_v0___1,levels=c("0","1"))
data$protocol_continued_70_52_v0___2.factor = factor(data$protocol_continued_70_52_v0___2,levels=c("0","1"))
data$protocol_continued_70_52_sym_3_v0___1.factor = factor(data$protocol_continued_70_52_sym_3_v0___1,levels=c("0","1"))
data$protocol_continued_70_52_sym_3_v0___2.factor = factor(data$protocol_continued_70_52_sym_3_v0___2,levels=c("0","1"))
data$pocglucose12050nosyx_3_v0___1.factor = factor(data$pocglucose12050nosyx_3_v0___1,levels=c("0","1"))
data$pocglucose12050nosyx_3_v0___2.factor = factor(data$pocglucose12050nosyx_3_v0___2,levels=c("0","1"))
data$pocgluocse50andsymptoms_3_v0___1.factor = factor(data$pocgluocse50andsymptoms_3_v0___1,levels=c("0","1"))
data$pocgluocse50andsymptoms_3_v0___2.factor = factor(data$pocgluocse50andsymptoms_3_v0___2,levels=c("0","1"))
data$pocgluocse50andsymptoms_3_v0___3.factor = factor(data$pocgluocse50andsymptoms_3_v0___3,levels=c("0","1"))
data$pocgluocse50andsymptoms_3_v0___4.factor = factor(data$pocgluocse50andsymptoms_3_v0___4,levels=c("0","1"))
data$pocgluocse50andsymptoms_3_v0___5.factor = factor(data$pocgluocse50andsymptoms_3_v0___5,levels=c("0","1"))
data$random_hypoglycemia_ogtt_v0.factor = factor(data$random_hypoglycemia_ogtt_v0,levels=c("0","1"))
data$random_hypoglycemia_ogtt_2_v0.factor = factor(data$random_hypoglycemia_ogtt_2_v0,levels=c("0","1"))
data$random_hypoglycemia_ogtt_3_v0.factor = factor(data$random_hypoglycemia_ogtt_3_v0,levels=c("0","1"))
data$random_hypoglycemia_ogtt_4_v0.factor = factor(data$random_hypoglycemia_ogtt_4_v0,levels=c("0","1"))
data$random_hypoglycemia_ogtt_5_v0.factor = factor(data$random_hypoglycemia_ogtt_5_v0,levels=c("0","1"))
data$dischargepoc70_v0.factor = factor(data$dischargepoc70_v0,levels=c("1","2"))
data$dischargepocless70_v0.factor = factor(data$dischargepocless70_v0,levels=c("1","2","3"))
data$ogtt_documentation_repeat_visit_1_complete.factor = factor(data$ogtt_documentation_repeat_visit_1_complete,levels=c("0","1","2"))
data$heart_pounding_baseline_v0.factor = factor(data$heart_pounding_baseline_v0,levels=c("0","1","2","3","4","5","6"))
data$shaky_tremulous_baseline_v0.factor = factor(data$shaky_tremulous_baseline_v0,levels=c("0","1","2","3","4","5","6"))
data$nervous_anxious_baseline_v0.factor = factor(data$nervous_anxious_baseline_v0,levels=c("0","1","2","3","4","5","6"))
data$sweaty_baseline_v0.factor = factor(data$sweaty_baseline_v0,levels=c("0","1","2","3","4","5","6"))
data$hungry_baseline_v0.factor = factor(data$hungry_baseline_v0,levels=c("0","1","2","3","4","5","6"))
data$tingling_baseline_v0.factor = factor(data$tingling_baseline_v0,levels=c("0","1","2","3","4","5","6"))
data$diff_thinking_baseline_v0.factor = factor(data$diff_thinking_baseline_v0,levels=c("0","1","2","3","4","5","6"))
data$tired_drowsy_baseline_v0.factor = factor(data$tired_drowsy_baseline_v0,levels=c("0","1","2","3","4","5","6"))
data$weak_baseline_v0.factor = factor(data$weak_baseline_v0,levels=c("0","1","2","3","4","5","6"))
data$warm_baseline_v0.factor = factor(data$warm_baseline_v0,levels=c("0","1","2","3","4","5","6"))
data$faint_baseline_v0.factor = factor(data$faint_baseline_v0,levels=c("0","1","2","3","4","5","6"))
data$dizzy_baseline_v0.factor = factor(data$dizzy_baseline_v0,levels=c("0","1","2","3","4","5","6"))
data$heart_pounding_120_v0.factor = factor(data$heart_pounding_120_v0,levels=c("0","1","2","3","4","5","6"))
data$shaky_tremulous_120_v0.factor = factor(data$shaky_tremulous_120_v0,levels=c("0","1","2","3","4","5","6"))
data$nervous_anxious_120_v0.factor = factor(data$nervous_anxious_120_v0,levels=c("0","1","2","3","4","5","6"))
data$sweaty_120_v0.factor = factor(data$sweaty_120_v0,levels=c("0","1","2","3","4","5","6"))
data$hungry_120_v0.factor = factor(data$hungry_120_v0,levels=c("0","1","2","3","4","5","6"))
data$tingling_120_v0.factor = factor(data$tingling_120_v0,levels=c("0","1","2","3","4","5","6"))
data$diff_thinking_120_v0.factor = factor(data$diff_thinking_120_v0,levels=c("0","1","2","3","4","5","6"))
data$tired_drowsy_120_v0.factor = factor(data$tired_drowsy_120_v0,levels=c("0","1","2","3","4","5","6"))
data$weak_120_v0.factor = factor(data$weak_120_v0,levels=c("0","1","2","3","4","5","6"))
data$warm_120_v0.factor = factor(data$warm_120_v0,levels=c("0","1","2","3","4","5","6"))
data$faint_120_v0.factor = factor(data$faint_120_v0,levels=c("0","1","2","3","4","5","6"))
data$dizzy_120_v0.factor = factor(data$dizzy_120_v0,levels=c("0","1","2","3","4","5","6"))
data$heart_pounding_150_v0.factor = factor(data$heart_pounding_150_v0,levels=c("0","1","2","3","4","5","6"))
data$shaky_tremulous_150_v0.factor = factor(data$shaky_tremulous_150_v0,levels=c("0","1","2","3","4","5","6"))
data$nervous_anxious_150_v0.factor = factor(data$nervous_anxious_150_v0,levels=c("0","1","2","3","4","5","6"))
data$sweaty_150_v0.factor = factor(data$sweaty_150_v0,levels=c("0","1","2","3","4","5","6"))
data$hungry_150_v0.factor = factor(data$hungry_150_v0,levels=c("0","1","2","3","4","5","6"))
data$tingling_150_v0.factor = factor(data$tingling_150_v0,levels=c("0","1","2","3","4","5","6"))
data$diff_thinking_150_v0.factor = factor(data$diff_thinking_150_v0,levels=c("0","1","2","3","4","5","6"))
data$tired_drowsy_150_v0.factor = factor(data$tired_drowsy_150_v0,levels=c("0","1","2","3","4","5","6"))
data$weak_150_v0.factor = factor(data$weak_150_v0,levels=c("0","1","2","3","4","5","6"))
data$warm_150_v0.factor = factor(data$warm_150_v0,levels=c("0","1","2","3","4","5","6"))
data$faint_150_v0.factor = factor(data$faint_150_v0,levels=c("0","1","2","3","4","5","6"))
data$dizzy_150_v0.factor = factor(data$dizzy_150_v0,levels=c("0","1","2","3","4","5","6"))
data$heart_pounding_180_v0.factor = factor(data$heart_pounding_180_v0,levels=c("0","1","2","3","4","5","6"))
data$shaky_tremulous_180_v0.factor = factor(data$shaky_tremulous_180_v0,levels=c("0","1","2","3","4","5","6"))
data$nervous_anxious_180_v0.factor = factor(data$nervous_anxious_180_v0,levels=c("0","1","2","3","4","5","6"))
data$sweaty_180_v0.factor = factor(data$sweaty_180_v0,levels=c("0","1","2","3","4","5","6"))
data$hungry_180_v0.factor = factor(data$hungry_180_v0,levels=c("0","1","2","3","4","5","6"))
data$tingling_180_v0.factor = factor(data$tingling_180_v0,levels=c("0","1","2","3","4","5","6"))
data$diff_thinking_180_v0.factor = factor(data$diff_thinking_180_v0,levels=c("0","1","2","3","4","5","6"))
data$tired_drowsy_180_v0.factor = factor(data$tired_drowsy_180_v0,levels=c("0","1","2","3","4","5","6"))
data$weak_180_v0.factor = factor(data$weak_180_v0,levels=c("0","1","2","3","4","5","6"))
data$warm_180_v0.factor = factor(data$warm_180_v0,levels=c("0","1","2","3","4","5","6"))
data$faint_180_v0.factor = factor(data$faint_180_v0,levels=c("0","1","2","3","4","5","6"))
data$dizzy_180_v0.factor = factor(data$dizzy_180_v0,levels=c("0","1","2","3","4","5","6"))
data$ogtt_hypoglycemia_questionnaires_repeat_visit_1_complete.factor = factor(data$ogtt_hypoglycemia_questionnaires_repeat_visit_1_complete,levels=c("0","1","2"))
data$shaking_peds_base_v0.factor = factor(data$shaking_peds_base_v0,levels=c("1","0"))
data$fast_heart_peds_base_v0.factor = factor(data$fast_heart_peds_base_v0,levels=c("1","0"))
data$sweating_peds_base_v0.factor = factor(data$sweating_peds_base_v0,levels=c("1","0"))
data$weak_peds_base_v0.factor = factor(data$weak_peds_base_v0,levels=c("1","0"))
data$hunger_peds_base_v0.factor = factor(data$hunger_peds_base_v0,levels=c("1","0"))
data$irritable_peds_base_v0.factor = factor(data$irritable_peds_base_v0,levels=c("1","0"))
data$shaking_peds_120_v0.factor = factor(data$shaking_peds_120_v0,levels=c("1","0"))
data$fast_heart_peds_120_v0.factor = factor(data$fast_heart_peds_120_v0,levels=c("1","0"))
data$sweating_peds_120_v0.factor = factor(data$sweating_peds_120_v0,levels=c("1","0"))
data$weak_peds_120_v0.factor = factor(data$weak_peds_120_v0,levels=c("1","0"))
data$hunger_peds_120_v0.factor = factor(data$hunger_peds_120_v0,levels=c("1","0"))
data$irritable_peds_120_v0.factor = factor(data$irritable_peds_120_v0,levels=c("1","0"))
data$shaking_peds_150_v0.factor = factor(data$shaking_peds_150_v0,levels=c("1","0"))
data$fast_heart_peds_150_v0.factor = factor(data$fast_heart_peds_150_v0,levels=c("1","0"))
data$sweating_peds_150_v0.factor = factor(data$sweating_peds_150_v0,levels=c("1","0"))
data$weak_peds_150_v0.factor = factor(data$weak_peds_150_v0,levels=c("1","0"))
data$hunger_peds_150_v0.factor = factor(data$hunger_peds_150_v0,levels=c("1","0"))
data$irritable_peds_150_v0.factor = factor(data$irritable_peds_150_v0,levels=c("1","0"))
data$shaking_peds_180_v0.factor = factor(data$shaking_peds_180_v0,levels=c("1","0"))
data$fast_heart_peds_180_v0.factor = factor(data$fast_heart_peds_180_v0,levels=c("1","0"))
data$sweating_peds_180_v0.factor = factor(data$sweating_peds_180_v0,levels=c("1","0"))
data$weak_peds_180_v0.factor = factor(data$weak_peds_180_v0,levels=c("1","0"))
data$hunger_peds_180_v0.factor = factor(data$hunger_peds_180_v0,levels=c("1","0"))
data$irritable_peds_180_v0.factor = factor(data$irritable_peds_180_v0,levels=c("1","0"))
data$ogtt_hypoglycemia_questionnaire_age_618_repeat_vis_complete.factor = factor(data$ogtt_hypoglycemia_questionnaire_age_618_repeat_vis_complete,levels=c("0","1","2"))
data$questionnaire_filled_out_v0.factor = factor(data$questionnaire_filled_out_v0,levels=c("1","0"))
data$rv_home_hypo.factor = factor(data$rv_home_hypo,levels=c("1","0"))
data$i_feel_v0___0.factor = factor(data$i_feel_v0___0,levels=c("0","1"))
data$i_feel_v0___1.factor = factor(data$i_feel_v0___1,levels=c("0","1"))
data$i_feel_v0___2.factor = factor(data$i_feel_v0___2,levels=c("0","1"))
data$i_feel_v0___3.factor = factor(data$i_feel_v0___3,levels=c("0","1"))
data$i_feel_v0___4.factor = factor(data$i_feel_v0___4,levels=c("0","1"))
data$i_feel_v0___5.factor = factor(data$i_feel_v0___5,levels=c("0","1"))
data$i_feel_v0___6.factor = factor(data$i_feel_v0___6,levels=c("0","1"))
data$i_feel_v0___7.factor = factor(data$i_feel_v0___7,levels=c("0","1"))
data$i_feel_v0___8.factor = factor(data$i_feel_v0___8,levels=c("0","1"))
data$i_feel_v0___9.factor = factor(data$i_feel_v0___9,levels=c("0","1"))
data$i_feel_v0___10.factor = factor(data$i_feel_v0___10,levels=c("0","1"))
data$i_feel_v0___11.factor = factor(data$i_feel_v0___11,levels=c("0","1"))
data$it_was_recognized_by_v0.factor = factor(data$it_was_recognized_by_v0,levels=c("0","1"))
data$i_needed_v0___0.factor = factor(data$i_needed_v0___0,levels=c("0","1"))
data$i_needed_v0___1.factor = factor(data$i_needed_v0___1,levels=c("0","1"))
data$i_needed_v0___2.factor = factor(data$i_needed_v0___2,levels=c("0","1"))
data$juice_or_food_v0.factor = factor(data$juice_or_food_v0,levels=c("0","1","2"))
data$another_section_1_v0.factor = factor(data$another_section_1_v0,levels=c("1","0"))
data$i_feel_2_v0___0.factor = factor(data$i_feel_2_v0___0,levels=c("0","1"))
data$i_feel_2_v0___1.factor = factor(data$i_feel_2_v0___1,levels=c("0","1"))
data$i_feel_2_v0___2.factor = factor(data$i_feel_2_v0___2,levels=c("0","1"))
data$i_feel_2_v0___3.factor = factor(data$i_feel_2_v0___3,levels=c("0","1"))
data$i_feel_2_v0___4.factor = factor(data$i_feel_2_v0___4,levels=c("0","1"))
data$i_feel_2_v0___5.factor = factor(data$i_feel_2_v0___5,levels=c("0","1"))
data$i_feel_2_v0___6.factor = factor(data$i_feel_2_v0___6,levels=c("0","1"))
data$i_feel_2_v0___7.factor = factor(data$i_feel_2_v0___7,levels=c("0","1"))
data$i_feel_2_v0___8.factor = factor(data$i_feel_2_v0___8,levels=c("0","1"))
data$i_feel_2_v0___9.factor = factor(data$i_feel_2_v0___9,levels=c("0","1"))
data$i_feel_2_v0___10.factor = factor(data$i_feel_2_v0___10,levels=c("0","1"))
data$i_feel_2_v0___11.factor = factor(data$i_feel_2_v0___11,levels=c("0","1"))
data$it_was_recognized_by_2_v0.factor = factor(data$it_was_recognized_by_2_v0,levels=c("0","1"))
data$i_needed_2_v0___0.factor = factor(data$i_needed_2_v0___0,levels=c("0","1"))
data$i_needed_2_v0___1.factor = factor(data$i_needed_2_v0___1,levels=c("0","1"))
data$i_needed_2_v0___2.factor = factor(data$i_needed_2_v0___2,levels=c("0","1"))
data$juice_or_food_2_v0.factor = factor(data$juice_or_food_2_v0,levels=c("0","1","2"))
data$another_section_2_v0.factor = factor(data$another_section_2_v0,levels=c("1","0"))
data$i_feel_3_v0___0.factor = factor(data$i_feel_3_v0___0,levels=c("0","1"))
data$i_feel_3_v0___1.factor = factor(data$i_feel_3_v0___1,levels=c("0","1"))
data$i_feel_3_v0___2.factor = factor(data$i_feel_3_v0___2,levels=c("0","1"))
data$i_feel_3_v0___3.factor = factor(data$i_feel_3_v0___3,levels=c("0","1"))
data$i_feel_3_v0___4.factor = factor(data$i_feel_3_v0___4,levels=c("0","1"))
data$i_feel_3_v0___5.factor = factor(data$i_feel_3_v0___5,levels=c("0","1"))
data$i_feel_3_v0___6.factor = factor(data$i_feel_3_v0___6,levels=c("0","1"))
data$i_feel_3_v0___7.factor = factor(data$i_feel_3_v0___7,levels=c("0","1"))
data$i_feel_3_v0___8.factor = factor(data$i_feel_3_v0___8,levels=c("0","1"))
data$i_feel_3_v0___9.factor = factor(data$i_feel_3_v0___9,levels=c("0","1"))
data$i_feel_3_v0___10.factor = factor(data$i_feel_3_v0___10,levels=c("0","1"))
data$i_feel_3_v0___11.factor = factor(data$i_feel_3_v0___11,levels=c("0","1"))
data$it_was_recognized_by_3_v0.factor = factor(data$it_was_recognized_by_3_v0,levels=c("0","1"))
data$i_needed_3_v0___0.factor = factor(data$i_needed_3_v0___0,levels=c("0","1"))
data$i_needed_3_v0___1.factor = factor(data$i_needed_3_v0___1,levels=c("0","1"))
data$i_needed_3_v0___2.factor = factor(data$i_needed_3_v0___2,levels=c("0","1"))
data$juice_or_food_3_v0.factor = factor(data$juice_or_food_3_v0,levels=c("0","1","2"))
data$another_section_3_v0.factor = factor(data$another_section_3_v0,levels=c("1","0"))
data$i_feel_4_v0___0.factor = factor(data$i_feel_4_v0___0,levels=c("0","1"))
data$i_feel_4_v0___1.factor = factor(data$i_feel_4_v0___1,levels=c("0","1"))
data$i_feel_4_v0___2.factor = factor(data$i_feel_4_v0___2,levels=c("0","1"))
data$i_feel_4_v0___3.factor = factor(data$i_feel_4_v0___3,levels=c("0","1"))
data$i_feel_4_v0___4.factor = factor(data$i_feel_4_v0___4,levels=c("0","1"))
data$i_feel_4_v0___5.factor = factor(data$i_feel_4_v0___5,levels=c("0","1"))
data$i_feel_4_v0___6.factor = factor(data$i_feel_4_v0___6,levels=c("0","1"))
data$i_feel_4_v0___7.factor = factor(data$i_feel_4_v0___7,levels=c("0","1"))
data$i_feel_4_v0___8.factor = factor(data$i_feel_4_v0___8,levels=c("0","1"))
data$i_feel_4_v0___9.factor = factor(data$i_feel_4_v0___9,levels=c("0","1"))
data$i_feel_4_v0___10.factor = factor(data$i_feel_4_v0___10,levels=c("0","1"))
data$i_feel_4_v0___11.factor = factor(data$i_feel_4_v0___11,levels=c("0","1"))
data$it_was_recognized_by_4_v0.factor = factor(data$it_was_recognized_by_4_v0,levels=c("0","1"))
data$i_needed_4_v0___0.factor = factor(data$i_needed_4_v0___0,levels=c("0","1"))
data$i_needed_4_v0___1.factor = factor(data$i_needed_4_v0___1,levels=c("0","1"))
data$i_needed_4_v0___2.factor = factor(data$i_needed_4_v0___2,levels=c("0","1"))
data$juice_or_food_4_v0.factor = factor(data$juice_or_food_4_v0,levels=c("0","1","2"))
data$another_section_4_v0.factor = factor(data$another_section_4_v0,levels=c("1","0"))
data$i_feel_5_v0___0.factor = factor(data$i_feel_5_v0___0,levels=c("0","1"))
data$i_feel_5_v0___1.factor = factor(data$i_feel_5_v0___1,levels=c("0","1"))
data$i_feel_5_v0___2.factor = factor(data$i_feel_5_v0___2,levels=c("0","1"))
data$i_feel_5_v0___3.factor = factor(data$i_feel_5_v0___3,levels=c("0","1"))
data$i_feel_5_v0___4.factor = factor(data$i_feel_5_v0___4,levels=c("0","1"))
data$i_feel_5_v0___5.factor = factor(data$i_feel_5_v0___5,levels=c("0","1"))
data$i_feel_5_v0___6.factor = factor(data$i_feel_5_v0___6,levels=c("0","1"))
data$i_feel_5_v0___7.factor = factor(data$i_feel_5_v0___7,levels=c("0","1"))
data$i_feel_5_v0___8.factor = factor(data$i_feel_5_v0___8,levels=c("0","1"))
data$i_feel_5_v0___9.factor = factor(data$i_feel_5_v0___9,levels=c("0","1"))
data$i_feel_5_v0___10.factor = factor(data$i_feel_5_v0___10,levels=c("0","1"))
data$i_feel_5_v0___11.factor = factor(data$i_feel_5_v0___11,levels=c("0","1"))
data$it_was_recognized_by_5_v0.factor = factor(data$it_was_recognized_by_5_v0,levels=c("0","1"))
data$i_needed_5_v0___0.factor = factor(data$i_needed_5_v0___0,levels=c("0","1"))
data$i_needed_5_v0___1.factor = factor(data$i_needed_5_v0___1,levels=c("0","1"))
data$i_needed_5_v0___2.factor = factor(data$i_needed_5_v0___2,levels=c("0","1"))
data$juice_or_food_5_v0.factor = factor(data$juice_or_food_5_v0,levels=c("0","1","2"))
data$another_section_5_v0.factor = factor(data$another_section_5_v0,levels=c("1","0"))
data$i_feel_6_v0___0.factor = factor(data$i_feel_6_v0___0,levels=c("0","1"))
data$i_feel_6_v0___1.factor = factor(data$i_feel_6_v0___1,levels=c("0","1"))
data$i_feel_6_v0___2.factor = factor(data$i_feel_6_v0___2,levels=c("0","1"))
data$i_feel_6_v0___3.factor = factor(data$i_feel_6_v0___3,levels=c("0","1"))
data$i_feel_6_v0___4.factor = factor(data$i_feel_6_v0___4,levels=c("0","1"))
data$i_feel_6_v0___5.factor = factor(data$i_feel_6_v0___5,levels=c("0","1"))
data$i_feel_6_v0___6.factor = factor(data$i_feel_6_v0___6,levels=c("0","1"))
data$i_feel_6_v0___7.factor = factor(data$i_feel_6_v0___7,levels=c("0","1"))
data$i_feel_6_v0___8.factor = factor(data$i_feel_6_v0___8,levels=c("0","1"))
data$i_feel_6_v0___9.factor = factor(data$i_feel_6_v0___9,levels=c("0","1"))
data$i_feel_6_v0___10.factor = factor(data$i_feel_6_v0___10,levels=c("0","1"))
data$i_feel_6_v0___11.factor = factor(data$i_feel_6_v0___11,levels=c("0","1"))
data$it_was_recognized_by_6_v0.factor = factor(data$it_was_recognized_by_6_v0,levels=c("0","1"))
data$i_needed_6_v0___0.factor = factor(data$i_needed_6_v0___0,levels=c("0","1"))
data$i_needed_6_v0___1.factor = factor(data$i_needed_6_v0___1,levels=c("0","1"))
data$i_needed_6_v0___2.factor = factor(data$i_needed_6_v0___2,levels=c("0","1"))
data$juice_or_food_6_v0.factor = factor(data$juice_or_food_6_v0,levels=c("0","1","2"))
data$another_section_6_v0.factor = factor(data$another_section_6_v0,levels=c("1","0"))
data$i_feel_7_v0___0.factor = factor(data$i_feel_7_v0___0,levels=c("0","1"))
data$i_feel_7_v0___1.factor = factor(data$i_feel_7_v0___1,levels=c("0","1"))
data$i_feel_7_v0___2.factor = factor(data$i_feel_7_v0___2,levels=c("0","1"))
data$i_feel_7_v0___3.factor = factor(data$i_feel_7_v0___3,levels=c("0","1"))
data$i_feel_7_v0___4.factor = factor(data$i_feel_7_v0___4,levels=c("0","1"))
data$i_feel_7_v0___5.factor = factor(data$i_feel_7_v0___5,levels=c("0","1"))
data$i_feel_7_v0___6.factor = factor(data$i_feel_7_v0___6,levels=c("0","1"))
data$i_feel_7_v0___7.factor = factor(data$i_feel_7_v0___7,levels=c("0","1"))
data$i_feel_7_v0___8.factor = factor(data$i_feel_7_v0___8,levels=c("0","1"))
data$i_feel_7_v0___9.factor = factor(data$i_feel_7_v0___9,levels=c("0","1"))
data$i_feel_7_v0___10.factor = factor(data$i_feel_7_v0___10,levels=c("0","1"))
data$i_feel_7_v0___11.factor = factor(data$i_feel_7_v0___11,levels=c("0","1"))
data$it_was_recognized_by_7_v0.factor = factor(data$it_was_recognized_by_7_v0,levels=c("0","1"))
data$i_needed_7_v0___0.factor = factor(data$i_needed_7_v0___0,levels=c("0","1"))
data$i_needed_7_v0___1.factor = factor(data$i_needed_7_v0___1,levels=c("0","1"))
data$i_needed_7_v0___2.factor = factor(data$i_needed_7_v0___2,levels=c("0","1"))
data$juice_or_food_7_v0.factor = factor(data$juice_or_food_7_v0,levels=c("0","1","2"))
data$another_section_7_v0.factor = factor(data$another_section_7_v0,levels=c("1","0"))
data$i_feel_8_v0___0.factor = factor(data$i_feel_8_v0___0,levels=c("0","1"))
data$i_feel_8_v0___1.factor = factor(data$i_feel_8_v0___1,levels=c("0","1"))
data$i_feel_8_v0___2.factor = factor(data$i_feel_8_v0___2,levels=c("0","1"))
data$i_feel_8_v0___3.factor = factor(data$i_feel_8_v0___3,levels=c("0","1"))
data$i_feel_8_v0___4.factor = factor(data$i_feel_8_v0___4,levels=c("0","1"))
data$i_feel_8_v0___5.factor = factor(data$i_feel_8_v0___5,levels=c("0","1"))
data$i_feel_8_v0___6.factor = factor(data$i_feel_8_v0___6,levels=c("0","1"))
data$i_feel_8_v0___7.factor = factor(data$i_feel_8_v0___7,levels=c("0","1"))
data$i_feel_8_v0___8.factor = factor(data$i_feel_8_v0___8,levels=c("0","1"))
data$i_feel_8_v0___9.factor = factor(data$i_feel_8_v0___9,levels=c("0","1"))
data$i_feel_8_v0___10.factor = factor(data$i_feel_8_v0___10,levels=c("0","1"))
data$i_feel_8_v0___11.factor = factor(data$i_feel_8_v0___11,levels=c("0","1"))
data$it_was_recognized_by_8_v0.factor = factor(data$it_was_recognized_by_8_v0,levels=c("0","1"))
data$i_needed_8_v0___0.factor = factor(data$i_needed_8_v0___0,levels=c("0","1"))
data$i_needed_8_v0___1.factor = factor(data$i_needed_8_v0___1,levels=c("0","1"))
data$i_needed_8_v0___2.factor = factor(data$i_needed_8_v0___2,levels=c("0","1"))
data$juice_or_food_8_v0.factor = factor(data$juice_or_food_8_v0,levels=c("0","1","2"))
data$athome_adult_hypoglycemia_questionnaire_repeat_vis_complete.factor = factor(data$athome_adult_hypoglycemia_questionnaire_repeat_vis_complete,levels=c("0","1","2"))
data$child_home_completed_v0.factor = factor(data$child_home_completed_v0,levels=c("1","0"))
data$rv_child_hypo_home.factor = factor(data$rv_child_hypo_home,levels=c("1","0"))
data$symptoms_child_hypo_v0___0.factor = factor(data$symptoms_child_hypo_v0___0,levels=c("0","1"))
data$symptoms_child_hypo_v0___1.factor = factor(data$symptoms_child_hypo_v0___1,levels=c("0","1"))
data$symptoms_child_hypo_v0___2.factor = factor(data$symptoms_child_hypo_v0___2,levels=c("0","1"))
data$symptoms_child_hypo_v0___3.factor = factor(data$symptoms_child_hypo_v0___3,levels=c("0","1"))
data$symptoms_child_hypo_v0___4.factor = factor(data$symptoms_child_hypo_v0___4,levels=c("0","1"))
data$symptoms_child_hypo_v0___5.factor = factor(data$symptoms_child_hypo_v0___5,levels=c("0","1"))
data$another_section_filled_v0.factor = factor(data$another_section_filled_v0,levels=c("1","0"))
data$symptoms_child_hypo_2_v0___0.factor = factor(data$symptoms_child_hypo_2_v0___0,levels=c("0","1"))
data$symptoms_child_hypo_2_v0___1.factor = factor(data$symptoms_child_hypo_2_v0___1,levels=c("0","1"))
data$symptoms_child_hypo_2_v0___2.factor = factor(data$symptoms_child_hypo_2_v0___2,levels=c("0","1"))
data$symptoms_child_hypo_2_v0___3.factor = factor(data$symptoms_child_hypo_2_v0___3,levels=c("0","1"))
data$symptoms_child_hypo_2_v0___4.factor = factor(data$symptoms_child_hypo_2_v0___4,levels=c("0","1"))
data$symptoms_child_hypo_2_v0___5.factor = factor(data$symptoms_child_hypo_2_v0___5,levels=c("0","1"))
data$third_section_filled_out_v0.factor = factor(data$third_section_filled_out_v0,levels=c("1","0"))
data$symptoms_child_hypo_3_v0___0.factor = factor(data$symptoms_child_hypo_3_v0___0,levels=c("0","1"))
data$symptoms_child_hypo_3_v0___1.factor = factor(data$symptoms_child_hypo_3_v0___1,levels=c("0","1"))
data$symptoms_child_hypo_3_v0___2.factor = factor(data$symptoms_child_hypo_3_v0___2,levels=c("0","1"))
data$symptoms_child_hypo_3_v0___3.factor = factor(data$symptoms_child_hypo_3_v0___3,levels=c("0","1"))
data$symptoms_child_hypo_3_v0___4.factor = factor(data$symptoms_child_hypo_3_v0___4,levels=c("0","1"))
data$symptoms_child_hypo_3_v0___5.factor = factor(data$symptoms_child_hypo_3_v0___5,levels=c("0","1"))
data$fourth_section_filled_v0.factor = factor(data$fourth_section_filled_v0,levels=c("1","0"))
data$symptoms_child_hypo_4_v0___0.factor = factor(data$symptoms_child_hypo_4_v0___0,levels=c("0","1"))
data$symptoms_child_hypo_4_v0___1.factor = factor(data$symptoms_child_hypo_4_v0___1,levels=c("0","1"))
data$symptoms_child_hypo_4_v0___2.factor = factor(data$symptoms_child_hypo_4_v0___2,levels=c("0","1"))
data$symptoms_child_hypo_4_v0___3.factor = factor(data$symptoms_child_hypo_4_v0___3,levels=c("0","1"))
data$symptoms_child_hypo_4_v0___4.factor = factor(data$symptoms_child_hypo_4_v0___4,levels=c("0","1"))
data$symptoms_child_hypo_4_v0___5.factor = factor(data$symptoms_child_hypo_4_v0___5,levels=c("0","1"))
data$fifth_section_filled_v0.factor = factor(data$fifth_section_filled_v0,levels=c("1","0"))
data$symptoms_child_hypo_5_v0___0.factor = factor(data$symptoms_child_hypo_5_v0___0,levels=c("0","1"))
data$symptoms_child_hypo_5_v0___1.factor = factor(data$symptoms_child_hypo_5_v0___1,levels=c("0","1"))
data$symptoms_child_hypo_5_v0___2.factor = factor(data$symptoms_child_hypo_5_v0___2,levels=c("0","1"))
data$symptoms_child_hypo_5_v0___3.factor = factor(data$symptoms_child_hypo_5_v0___3,levels=c("0","1"))
data$symptoms_child_hypo_5_v0___4.factor = factor(data$symptoms_child_hypo_5_v0___4,levels=c("0","1"))
data$symptoms_child_hypo_5_v0___5.factor = factor(data$symptoms_child_hypo_5_v0___5,levels=c("0","1"))
data$sixth_section_filled_v0.factor = factor(data$sixth_section_filled_v0,levels=c("1","0"))
data$symptoms_child_hypo_6_v0___0.factor = factor(data$symptoms_child_hypo_6_v0___0,levels=c("0","1"))
data$symptoms_child_hypo_6_v0___1.factor = factor(data$symptoms_child_hypo_6_v0___1,levels=c("0","1"))
data$symptoms_child_hypo_6_v0___2.factor = factor(data$symptoms_child_hypo_6_v0___2,levels=c("0","1"))
data$symptoms_child_hypo_6_v0___3.factor = factor(data$symptoms_child_hypo_6_v0___3,levels=c("0","1"))
data$symptoms_child_hypo_6_v0___4.factor = factor(data$symptoms_child_hypo_6_v0___4,levels=c("0","1"))
data$symptoms_child_hypo_6_v0___5.factor = factor(data$symptoms_child_hypo_6_v0___5,levels=c("0","1"))
data$seventh_section_filled_v0.factor = factor(data$seventh_section_filled_v0,levels=c("1","0"))
data$symptoms_child_hypo_7_v0___0.factor = factor(data$symptoms_child_hypo_7_v0___0,levels=c("0","1"))
data$symptoms_child_hypo_7_v0___1.factor = factor(data$symptoms_child_hypo_7_v0___1,levels=c("0","1"))
data$symptoms_child_hypo_7_v0___2.factor = factor(data$symptoms_child_hypo_7_v0___2,levels=c("0","1"))
data$symptoms_child_hypo_7_v0___3.factor = factor(data$symptoms_child_hypo_7_v0___3,levels=c("0","1"))
data$symptoms_child_hypo_7_v0___4.factor = factor(data$symptoms_child_hypo_7_v0___4,levels=c("0","1"))
data$symptoms_child_hypo_7_v0___5.factor = factor(data$symptoms_child_hypo_7_v0___5,levels=c("0","1"))
data$eighth_section_filled_v0.factor = factor(data$eighth_section_filled_v0,levels=c("1","0"))
data$symptoms_child_hypo_8_v0___0.factor = factor(data$symptoms_child_hypo_8_v0___0,levels=c("0","1"))
data$symptoms_child_hypo_8_v0___1.factor = factor(data$symptoms_child_hypo_8_v0___1,levels=c("0","1"))
data$symptoms_child_hypo_8_v0___2.factor = factor(data$symptoms_child_hypo_8_v0___2,levels=c("0","1"))
data$symptoms_child_hypo_8_v0___3.factor = factor(data$symptoms_child_hypo_8_v0___3,levels=c("0","1"))
data$symptoms_child_hypo_8_v0___4.factor = factor(data$symptoms_child_hypo_8_v0___4,levels=c("0","1"))
data$symptoms_child_hypo_8_v0___5.factor = factor(data$symptoms_child_hypo_8_v0___5,levels=c("0","1"))
data$athome_child_618_hypoglycemia_questionnaire_repeat_complete.factor = factor(data$athome_child_618_hypoglycemia_questionnaire_repeat_complete,levels=c("0","1","2"))
data$pft_yes_no_v0.factor = factor(data$pft_yes_no_v0,levels=c("1","0"))
data$pulmonary_function_repeat_visit_1_complete.factor = factor(data$pulmonary_function_repeat_visit_1_complete,levels=c("0","1","2"))
data$ae_occur_v0.factor = factor(data$ae_occur_v0,levels=c("1","0"))
data$ae_severity_v0.factor = factor(data$ae_severity_v0,levels=c("1","2","3"))
data$action_taken_v0.factor = factor(data$action_taken_v0,levels=c("0","1","2"))
data$ae_outcome_v0.factor = factor(data$ae_outcome_v0,levels=c("0","1","2","3","4"))
data$ae_relation_to_study_v0.factor = factor(data$ae_relation_to_study_v0,levels=c("5","4","3","2","1"))
data$ae_serious_v0.factor = factor(data$ae_serious_v0,levels=c("1","2"))
data$adverse_event_log_repeat_visit_1_complete.factor = factor(data$adverse_event_log_repeat_visit_1_complete,levels=c("0","1","2"))
data$y_n_protocol_dev_v0.factor = factor(data$y_n_protocol_dev_v0,levels=c("1","0"))
data$deviation_type_v0.factor = factor(data$deviation_type_v0,levels=c("1","2","3","4","5","6","7","8","9","10","11"))
data$timing_of_deviation_v0.factor = factor(data$timing_of_deviation_v0,levels=c("1","2","3"))
data$dev_id_by_v0.factor = factor(data$dev_id_by_v0,levels=c("1","2","3","4","5"))
data$deviation_result_ae_v0.factor = factor(data$deviation_result_ae_v0,levels=c("1","0"))
data$second_protocol_dev_v0.factor = factor(data$second_protocol_dev_v0,levels=c("1","0"))
data$deviation_type_2_v0.factor = factor(data$deviation_type_2_v0,levels=c("1","2","3","4","5","6","7","8","9","10","11"))
data$timing_of_deviation_2_v0.factor = factor(data$timing_of_deviation_2_v0,levels=c("1","2","3"))
data$dev_id_by_2_v0.factor = factor(data$dev_id_by_2_v0,levels=c("1","2","3","4","5"))
data$deviation_result_ae_2_v0.factor = factor(data$deviation_result_ae_2_v0,levels=c("1","0"))
data$third_protocol_dev_v0.factor = factor(data$third_protocol_dev_v0,levels=c("1","0"))
data$deviation_type_3_v0.factor = factor(data$deviation_type_3_v0,levels=c("1","2","3","4","5","6","7","8","9","10","11"))
data$timing_of_deviation_3_v0.factor = factor(data$timing_of_deviation_3_v0,levels=c("1","2","3"))
data$dev_id_by_3_v0.factor = factor(data$dev_id_by_3_v0,levels=c("1","2","3","4","5"))
data$deviation_result_ae_3_v0.factor = factor(data$deviation_result_ae_3_v0,levels=c("1","0"))
data$fourth_protocol_dev_v0.factor = factor(data$fourth_protocol_dev_v0,levels=c("1","0"))
data$deviation_type_4_v0.factor = factor(data$deviation_type_4_v0,levels=c("1","2","3","4","5","6","7","8","9","10","11"))
data$timing_of_deviation_4_v0.factor = factor(data$timing_of_deviation_4_v0,levels=c("1","2","3"))
data$dev_id_by_4_v0.factor = factor(data$dev_id_by_4_v0,levels=c("1","2","3","4","5"))
data$deviation_result_ae_4_v0.factor = factor(data$deviation_result_ae_4_v0,levels=c("1","0"))
data$protocol_deviation_repeat_visit_1_complete.factor = factor(data$protocol_deviation_repeat_visit_1_complete,levels=c("0","1","2"))
data$agreed_to_cgm_v0.factor = factor(data$agreed_to_cgm_v0,levels=c("1","0"))
data$cgm_instructions_v0___1.factor = factor(data$cgm_instructions_v0___1,levels=c("0","1"))
data$cgm_instructions_v0___2.factor = factor(data$cgm_instructions_v0___2,levels=c("0","1"))
data$cgm_instructions_v0___3.factor = factor(data$cgm_instructions_v0___3,levels=c("0","1"))
data$cgm_placement_site_v0.factor = factor(data$cgm_placement_site_v0,levels=c("1","2"))
data$cgm_data_success_failure_v0.factor = factor(data$cgm_data_success_failure_v0,levels=c("1","2"))
data$cgm_gaps_filled_in_v0.factor = factor(data$cgm_gaps_filled_in_v0,levels=c("1","0"))
data$num_hours_good_data_v0.factor = factor(data$num_hours_good_data_v0,levels=c("1","2","3","4","5","6","7"))
data$total_sensor_readings_v0.factor = factor(data$total_sensor_readings_v0,levels=c("288","576","864","1152","1440","1728","2016"))
data$cgm_data_repeat_visit_1_complete.factor = factor(data$cgm_data_repeat_visit_1_complete,levels=c("0","1","2"))
data$patient_undergo_dexa_v0.factor = factor(data$patient_undergo_dexa_v0,levels=c("1","0"))
data$make_of_dxa_machine_v0.factor = factor(data$make_of_dxa_machine_v0,levels=c("1","2"))
data$dxa_data_repeat_visit_1_complete.factor = factor(data$dxa_data_repeat_visit_1_complete,levels=c("0","1","2"))
data$participant_withdrawn_v2.factor = factor(data$participant_withdrawn_v2,levels=c("0","1","2"))
data$sex_v2.factor = factor(data$sex_v2,levels=c("1","2"))
data$ethnicity_v2.factor = factor(data$ethnicity_v2,levels=c("1","2","3"))
data$origin_race_v2.factor = factor(data$origin_race_v2,levels=c("1","2","3","4","5","6"))
data$cftr_genotype_available_in_v2.factor = factor(data$cftr_genotype_available_in_v2,levels=c("1","2","3","4"))
data$cftr_mutation_1_v2.factor = factor(data$cftr_mutation_1_v2,levels=c("1","2"))
data$type_of_mutation_1_v2.factor = factor(data$type_of_mutation_1_v2,levels=c("0","1"))
data$cftr_mutation_2_v2.factor = factor(data$cftr_mutation_2_v2,levels=c("1","2","3"))
data$type_of_mutation_2_v2.factor = factor(data$type_of_mutation_2_v2,levels=c("0","1"))
data$mutation_category_v2.factor = factor(data$mutation_category_v2,levels=c("0","1"))
data$new_born_screen_v2.factor = factor(data$new_born_screen_v2,levels=c("1","2","3"))
data$sweat_chloride_test_v2.factor = factor(data$sweat_chloride_test_v2,levels=c("1","0"))
data$pancreatic_status_v2.factor = factor(data$pancreatic_status_v2,levels=c("1","2","3"))
data$most_recent_sputum_culture_v2___1.factor = factor(data$most_recent_sputum_culture_v2___1,levels=c("0","1"))
data$most_recent_sputum_culture_v2___2.factor = factor(data$most_recent_sputum_culture_v2___2,levels=c("0","1"))
data$most_recent_sputum_culture_v2___3.factor = factor(data$most_recent_sputum_culture_v2___3,levels=c("0","1"))
data$most_recent_sputum_culture_v2___4.factor = factor(data$most_recent_sputum_culture_v2___4,levels=c("0","1"))
data$most_recent_sputum_culture_v2___5.factor = factor(data$most_recent_sputum_culture_v2___5,levels=c("0","1"))
data$most_recent_sputum_culture_v2___6.factor = factor(data$most_recent_sputum_culture_v2___6,levels=c("0","1"))
data$most_recent_sputum_culture_v2___7.factor = factor(data$most_recent_sputum_culture_v2___7,levels=c("0","1"))
data$most_recent_sputum_culture_v2___8.factor = factor(data$most_recent_sputum_culture_v2___8,levels=c("0","1"))
data$sputum_culture_year_v2___1.factor = factor(data$sputum_culture_year_v2___1,levels=c("0","1"))
data$sputum_culture_year_v2___2.factor = factor(data$sputum_culture_year_v2___2,levels=c("0","1"))
data$sputum_culture_year_v2___3.factor = factor(data$sputum_culture_year_v2___3,levels=c("0","1"))
data$sputum_culture_year_v2___4.factor = factor(data$sputum_culture_year_v2___4,levels=c("0","1"))
data$sputum_culture_year_v2___5.factor = factor(data$sputum_culture_year_v2___5,levels=c("0","1"))
data$sputum_culture_year_v2___6.factor = factor(data$sputum_culture_year_v2___6,levels=c("0","1"))
data$sputum_culture_year_v2___7.factor = factor(data$sputum_culture_year_v2___7,levels=c("0","1"))
data$sputum_culture_year_v2___8.factor = factor(data$sputum_culture_year_v2___8,levels=c("0","1"))
data$liver_disease_v2.factor = factor(data$liver_disease_v2,levels=c("1","0"))
data$corrector_yes_no_v2.factor = factor(data$corrector_yes_no_v2,levels=c("1","0"))
data$corrector_v2___1.factor = factor(data$corrector_v2___1,levels=c("0","1"))
data$corrector_v2___2.factor = factor(data$corrector_v2___2,levels=c("0","1"))
data$corrector_v2___3.factor = factor(data$corrector_v2___3,levels=c("0","1"))
data$corrector_v2___4.factor = factor(data$corrector_v2___4,levels=c("0","1"))
data$corrector_v2___5.factor = factor(data$corrector_v2___5,levels=c("0","1"))
data$family_history_diabetes_v2.factor = factor(data$family_history_diabetes_v2,levels=c("1","0"))
data$relative_with_diabetes_v2___1.factor = factor(data$relative_with_diabetes_v2___1,levels=c("0","1"))
data$relative_with_diabetes_v2___2.factor = factor(data$relative_with_diabetes_v2___2,levels=c("0","1"))
data$relative_with_diabetes_v2___3.factor = factor(data$relative_with_diabetes_v2___3,levels=c("0","1"))
data$relative_with_diabetes_v2___4.factor = factor(data$relative_with_diabetes_v2___4,levels=c("0","1"))
data$diabetes_hisotry_type_v2___1.factor = factor(data$diabetes_hisotry_type_v2___1,levels=c("0","1"))
data$diabetes_hisotry_type_v2___2.factor = factor(data$diabetes_hisotry_type_v2___2,levels=c("0","1"))
data$diabetes_hisotry_type_v2___3.factor = factor(data$diabetes_hisotry_type_v2___3,levels=c("0","1"))
data$diabetes_hisotry_type_v2___4.factor = factor(data$diabetes_hisotry_type_v2___4,levels=c("0","1"))
data$demographics_and_cf_historysecond_visit_complete.factor = factor(data$demographics_and_cf_historysecond_visit_complete,levels=c("0","1","2"))
data$antibiotics_v2___1.factor = factor(data$antibiotics_v2___1,levels=c("0","1"))
data$antibiotics_v2___2.factor = factor(data$antibiotics_v2___2,levels=c("0","1"))
data$antibiotics_v2___3.factor = factor(data$antibiotics_v2___3,levels=c("0","1"))
data$antibiotics_v2___4.factor = factor(data$antibiotics_v2___4,levels=c("0","1"))
data$antibiotics_v2___5.factor = factor(data$antibiotics_v2___5,levels=c("0","1"))
data$inhaled_steroids_v2.factor = factor(data$inhaled_steroids_v2,levels=c("1","0"))
data$patient_using_flonase_v2.factor = factor(data$patient_using_flonase_v2,levels=c("1","0"))
data$inhaled_beta_agonist_v2.factor = factor(data$inhaled_beta_agonist_v2,levels=c("1","0"))
data$pancreatic_enzyme_therapy_v2.factor = factor(data$pancreatic_enzyme_therapy_v2,levels=c("1","2","3"))
data$systemic_steroid_therapy_v2___1.factor = factor(data$systemic_steroid_therapy_v2___1,levels=c("0","1"))
data$systemic_steroid_therapy_v2___2.factor = factor(data$systemic_steroid_therapy_v2___2,levels=c("0","1"))
data$systemic_steroid_therapy_v2___3.factor = factor(data$systemic_steroid_therapy_v2___3,levels=c("0","1"))
data$systemic_steroid_therapy_v2___4.factor = factor(data$systemic_steroid_therapy_v2___4,levels=c("0","1"))
data$systemic_steroid_therapy_v2___5.factor = factor(data$systemic_steroid_therapy_v2___5,levels=c("0","1"))
data$systemic_steroid_therapy_v2___6.factor = factor(data$systemic_steroid_therapy_v2___6,levels=c("0","1"))
data$cf_multivitamins_aquadeks_v2.factor = factor(data$cf_multivitamins_aquadeks_v2,levels=c("1","0"))
data$vitamin_d_in_addition_to_m_v2.factor = factor(data$vitamin_d_in_addition_to_m_v2,levels=c("1","2","3"))
data$high_dose_ibuprofen_v2.factor = factor(data$high_dose_ibuprofen_v2,levels=c("1","2","3"))
data$inhaled_antibiotics_v2.factor = factor(data$inhaled_antibiotics_v2,levels=c("1","Yes","2"))
data$ursodiol_v2.factor = factor(data$ursodiol_v2,levels=c("1","0"))
data$gen_1_atyp_antipsych_v2___0.factor = factor(data$gen_1_atyp_antipsych_v2___0,levels=c("0","1"))
data$gen_1_atyp_antipsych_v2___1.factor = factor(data$gen_1_atyp_antipsych_v2___1,levels=c("0","1"))
data$gen_1_atyp_antipsych_v2___2.factor = factor(data$gen_1_atyp_antipsych_v2___2,levels=c("0","1"))
data$gen_1_atyp_antipsych_v2___3.factor = factor(data$gen_1_atyp_antipsych_v2___3,levels=c("0","1"))
data$gen_1_atyp_antipsych_v2___4.factor = factor(data$gen_1_atyp_antipsych_v2___4,levels=c("0","1"))
data$gen_1_atyp_antipsych_v2___5.factor = factor(data$gen_1_atyp_antipsych_v2___5,levels=c("0","1"))
data$gen_1_atyp_antipsych_v2___6.factor = factor(data$gen_1_atyp_antipsych_v2___6,levels=c("0","1"))
data$gen_1_atyp_antipsych_v2___7.factor = factor(data$gen_1_atyp_antipsych_v2___7,levels=c("0","1"))
data$gen_1_atyp_antipsych_v2___8.factor = factor(data$gen_1_atyp_antipsych_v2___8,levels=c("0","1"))
data$gen_1_atyp_antipsych_v2___9.factor = factor(data$gen_1_atyp_antipsych_v2___9,levels=c("0","1"))
data$gen_2_atyp_antipsych_v2___0.factor = factor(data$gen_2_atyp_antipsych_v2___0,levels=c("0","1"))
data$gen_2_atyp_antipsych_v2___1.factor = factor(data$gen_2_atyp_antipsych_v2___1,levels=c("0","1"))
data$gen_2_atyp_antipsych_v2___2.factor = factor(data$gen_2_atyp_antipsych_v2___2,levels=c("0","1"))
data$gen_2_atyp_antipsych_v2___3.factor = factor(data$gen_2_atyp_antipsych_v2___3,levels=c("0","1"))
data$gen_2_atyp_antipsych_v2___4.factor = factor(data$gen_2_atyp_antipsych_v2___4,levels=c("0","1"))
data$gen_2_atyp_antipsych_v2___5.factor = factor(data$gen_2_atyp_antipsych_v2___5,levels=c("0","1"))
data$gen_2_atyp_antipsych_v2___6.factor = factor(data$gen_2_atyp_antipsych_v2___6,levels=c("0","1"))
data$gen_2_atyp_antipsych_v2___7.factor = factor(data$gen_2_atyp_antipsych_v2___7,levels=c("0","1"))
data$gen_2_atyp_antipsych_v2___8.factor = factor(data$gen_2_atyp_antipsych_v2___8,levels=c("0","1"))
data$gen_2_atyp_antipsych_v2___9.factor = factor(data$gen_2_atyp_antipsych_v2___9,levels=c("0","1"))
data$gen_2_atyp_antipsych_v2___10.factor = factor(data$gen_2_atyp_antipsych_v2___10,levels=c("0","1"))
data$gen_2_atyp_antipsych_v2___11.factor = factor(data$gen_2_atyp_antipsych_v2___11,levels=c("0","1"))
data$gen_2_atyp_antipsych_v2___12.factor = factor(data$gen_2_atyp_antipsych_v2___12,levels=c("0","1"))
data$gen_2_atyp_antipsych_v2___13.factor = factor(data$gen_2_atyp_antipsych_v2___13,levels=c("0","1"))
data$current_medications_second_visit_complete.factor = factor(data$current_medications_second_visit_complete,levels=c("0","1","2"))
data$cf_yes_no_inclusion_v2.factor = factor(data$cf_yes_no_inclusion_v2,levels=c("1","0"))
data$age_6_yes_no_inclusion_v2.factor = factor(data$age_6_yes_no_inclusion_v2,levels=c("1","0"))
data$clin_stable_yes_no_inclusion_v2.factor = factor(data$clin_stable_yes_no_inclusion_v2,levels=c("1","0"))
data$other_diabetes_yes_no_v2.factor = factor(data$other_diabetes_yes_no_v2,levels=c("1","0"))
data$organ_tx_yes_no_v2.factor = factor(data$organ_tx_yes_no_v2,levels=c("1","0"))
data$cfrd_diabetes_med_yes_no_v2.factor = factor(data$cfrd_diabetes_med_yes_no_v2,levels=c("1","0"))
data$pulm_ex_last3months_v2.factor = factor(data$pulm_ex_last3months_v2,levels=c("1","0"))
data$corrector_yes_no_exclusion_v2.factor = factor(data$corrector_yes_no_exclusion_v2,levels=c("1","0"))
data$consent_completed_v2.factor = factor(data$consent_completed_v2,levels=c("1","0"))
data$upt_v2.factor = factor(data$upt_v2,levels=c("0","1","2","3","4"))
data$inclusionexclusion_second_visit_complete.factor = factor(data$inclusionexclusion_second_visit_complete,levels=c("0","1","2"))
data$fast_hours_v2.factor = factor(data$fast_hours_v2,levels=c("1","0"))
data$tanner_stage_v2.factor = factor(data$tanner_stage_v2,levels=c("1","2","3","4","5","6","7","8"))
data$tanner_female_pubic_v2.factor = factor(data$tanner_female_pubic_v2,levels=c("1","2","3","4","5","6"))
data$tanner_breast_dev_v2.factor = factor(data$tanner_breast_dev_v2,levels=c("1","2","3","4","5","6"))
data$tanner_male_pubic_v2.factor = factor(data$tanner_male_pubic_v2,levels=c("1","2","3","4","5","6"))
data$tanner_testicular_vol_v2.factor = factor(data$tanner_testicular_vol_v2,levels=c("1","2","3","4","5","6"))
data$type_of_temperature_v2.factor = factor(data$type_of_temperature_v2,levels=c("1","2","3"))
data$numbing_cream_v2___1.factor = factor(data$numbing_cream_v2___1,levels=c("0","1"))
data$numbing_cream_v2___2.factor = factor(data$numbing_cream_v2___2,levels=c("0","1"))
data$hypoglycemia_symptoms_yesno_v2.factor = factor(data$hypoglycemia_symptoms_yesno_v2,levels=c("1","0"))
data$protocol_continued_70_50_v2___1.factor = factor(data$protocol_continued_70_50_v2___1,levels=c("0","1"))
data$protocol_continued_70_50_v2___2.factor = factor(data$protocol_continued_70_50_v2___2,levels=c("0","1"))
data$protocol_continued_70_52_sym_v2___1.factor = factor(data$protocol_continued_70_52_sym_v2___1,levels=c("0","1"))
data$protocol_continued_70_52_sym_v2___2.factor = factor(data$protocol_continued_70_52_sym_v2___2,levels=c("0","1"))
data$pocgluocse50andsymptoms_1_v2___1.factor = factor(data$pocgluocse50andsymptoms_1_v2___1,levels=c("0","1"))
data$pocgluocse50andsymptoms_1_v2___2.factor = factor(data$pocgluocse50andsymptoms_1_v2___2,levels=c("0","1"))
data$pocgluocse50andsymptoms_1_v2___3.factor = factor(data$pocgluocse50andsymptoms_1_v2___3,levels=c("0","1"))
data$pocgluocse50andsymptoms_1_v2___4.factor = factor(data$pocgluocse50andsymptoms_1_v2___4,levels=c("0","1"))
data$pocgluocse50andsymptoms_1_v2___5.factor = factor(data$pocgluocse50andsymptoms_1_v2___5,levels=c("0","1"))
data$pocglucose12050nosyx_v2___1.factor = factor(data$pocglucose12050nosyx_v2___1,levels=c("0","1"))
data$pocglucose12050nosyx_v2___2.factor = factor(data$pocglucose12050nosyx_v2___2,levels=c("0","1"))
data$hypoglycemia_symptoms_yesno_2_v2.factor = factor(data$hypoglycemia_symptoms_yesno_2_v2,levels=c("1","0"))
data$protocol_continued_70_51_v2___1.factor = factor(data$protocol_continued_70_51_v2___1,levels=c("0","1"))
data$protocol_continued_70_51_v2___2.factor = factor(data$protocol_continued_70_51_v2___2,levels=c("0","1"))
data$protocol_continued_70_52_sym_2_v2___1.factor = factor(data$protocol_continued_70_52_sym_2_v2___1,levels=c("0","1"))
data$protocol_continued_70_52_sym_2_v2___2.factor = factor(data$protocol_continued_70_52_sym_2_v2___2,levels=c("0","1"))
data$pocglucose12050nosyx_2_v2___1.factor = factor(data$pocglucose12050nosyx_2_v2___1,levels=c("0","1"))
data$pocglucose12050nosyx_2_v2___2.factor = factor(data$pocglucose12050nosyx_2_v2___2,levels=c("0","1"))
data$pocgluocse50andsymptoms_2_v2___1.factor = factor(data$pocgluocse50andsymptoms_2_v2___1,levels=c("0","1"))
data$pocgluocse50andsymptoms_2_v2___2.factor = factor(data$pocgluocse50andsymptoms_2_v2___2,levels=c("0","1"))
data$pocgluocse50andsymptoms_2_v2___3.factor = factor(data$pocgluocse50andsymptoms_2_v2___3,levels=c("0","1"))
data$pocgluocse50andsymptoms_2_v2___4.factor = factor(data$pocgluocse50andsymptoms_2_v2___4,levels=c("0","1"))
data$pocgluocse50andsymptoms_2_v2___5.factor = factor(data$pocgluocse50andsymptoms_2_v2___5,levels=c("0","1"))
data$hypoglycemia_symptoms_yesno_3_v2.factor = factor(data$hypoglycemia_symptoms_yesno_3_v2,levels=c("1","0"))
data$protocol_continued_70_52_v2___1.factor = factor(data$protocol_continued_70_52_v2___1,levels=c("0","1"))
data$protocol_continued_70_52_v2___2.factor = factor(data$protocol_continued_70_52_v2___2,levels=c("0","1"))
data$protocol_continued_70_52_sym_3_v2___1.factor = factor(data$protocol_continued_70_52_sym_3_v2___1,levels=c("0","1"))
data$protocol_continued_70_52_sym_3_v2___2.factor = factor(data$protocol_continued_70_52_sym_3_v2___2,levels=c("0","1"))
data$pocglucose12050nosyx_3_v2___1.factor = factor(data$pocglucose12050nosyx_3_v2___1,levels=c("0","1"))
data$pocglucose12050nosyx_3_v2___2.factor = factor(data$pocglucose12050nosyx_3_v2___2,levels=c("0","1"))
data$pocgluocse50andsymptoms_3_v2___1.factor = factor(data$pocgluocse50andsymptoms_3_v2___1,levels=c("0","1"))
data$pocgluocse50andsymptoms_3_v2___2.factor = factor(data$pocgluocse50andsymptoms_3_v2___2,levels=c("0","1"))
data$pocgluocse50andsymptoms_3_v2___3.factor = factor(data$pocgluocse50andsymptoms_3_v2___3,levels=c("0","1"))
data$pocgluocse50andsymptoms_3_v2___4.factor = factor(data$pocgluocse50andsymptoms_3_v2___4,levels=c("0","1"))
data$pocgluocse50andsymptoms_3_v2___5.factor = factor(data$pocgluocse50andsymptoms_3_v2___5,levels=c("0","1"))
data$random_hypoglycemia_ogtt_v2.factor = factor(data$random_hypoglycemia_ogtt_v2,levels=c("0","1"))
data$random_hypoglycemia_ogtt_2_v2.factor = factor(data$random_hypoglycemia_ogtt_2_v2,levels=c("0","1"))
data$random_hypoglycemia_ogtt_3_v2.factor = factor(data$random_hypoglycemia_ogtt_3_v2,levels=c("0","1"))
data$random_hypoglycemia_ogtt_4_v2.factor = factor(data$random_hypoglycemia_ogtt_4_v2,levels=c("0","1"))
data$random_hypoglycemia_ogtt_5_v2.factor = factor(data$random_hypoglycemia_ogtt_5_v2,levels=c("0","1"))
data$dischargepoc70_v2.factor = factor(data$dischargepoc70_v2,levels=c("1","2"))
data$dischargepocless70_v2.factor = factor(data$dischargepocless70_v2,levels=c("1","2","3"))
data$ogtt_documentation_second_visit_complete.factor = factor(data$ogtt_documentation_second_visit_complete,levels=c("0","1","2"))
data$heart_pounding_baseline_v2.factor = factor(data$heart_pounding_baseline_v2,levels=c("0","1","2","3","4","5","6"))
data$shaky_tremulous_baseline_v2.factor = factor(data$shaky_tremulous_baseline_v2,levels=c("0","1","2","3","4","5","6"))
data$nervous_anxious_baseline_v2.factor = factor(data$nervous_anxious_baseline_v2,levels=c("0","1","2","3","4","5","6"))
data$sweaty_baseline_v2.factor = factor(data$sweaty_baseline_v2,levels=c("0","1","2","3","4","5","6"))
data$hungry_baseline_v2.factor = factor(data$hungry_baseline_v2,levels=c("0","1","2","3","4","5","6"))
data$tingling_baseline_v2.factor = factor(data$tingling_baseline_v2,levels=c("0","1","2","3","4","5","6"))
data$diff_thinking_baseline_v2.factor = factor(data$diff_thinking_baseline_v2,levels=c("0","1","2","3","4","5","6"))
data$tired_drowsy_baseline_v2.factor = factor(data$tired_drowsy_baseline_v2,levels=c("0","1","2","3","4","5","6"))
data$weak_baseline_v2.factor = factor(data$weak_baseline_v2,levels=c("0","1","2","3","4","5","6"))
data$warm_baseline_v2.factor = factor(data$warm_baseline_v2,levels=c("0","1","2","3","4","5","6"))
data$faint_baseline_v2.factor = factor(data$faint_baseline_v2,levels=c("0","1","2","3","4","5","6"))
data$dizzy_baseline_v2.factor = factor(data$dizzy_baseline_v2,levels=c("0","1","2","3","4","5","6"))
data$heart_pounding_120_v2.factor = factor(data$heart_pounding_120_v2,levels=c("0","1","2","3","4","5","6"))
data$shaky_tremulous_120_v2.factor = factor(data$shaky_tremulous_120_v2,levels=c("0","1","2","3","4","5","6"))
data$nervous_anxious_120_v2.factor = factor(data$nervous_anxious_120_v2,levels=c("0","1","2","3","4","5","6"))
data$sweaty_120_v2.factor = factor(data$sweaty_120_v2,levels=c("0","1","2","3","4","5","6"))
data$hungry_120_v2.factor = factor(data$hungry_120_v2,levels=c("0","1","2","3","4","5","6"))
data$tingling_120_v2.factor = factor(data$tingling_120_v2,levels=c("0","1","2","3","4","5","6"))
data$diff_thinking_120_v2.factor = factor(data$diff_thinking_120_v2,levels=c("0","1","2","3","4","5","6"))
data$tired_drowsy_120_v2.factor = factor(data$tired_drowsy_120_v2,levels=c("0","1","2","3","4","5","6"))
data$weak_120_v2.factor = factor(data$weak_120_v2,levels=c("0","1","2","3","4","5","6"))
data$warm_120_v2.factor = factor(data$warm_120_v2,levels=c("0","1","2","3","4","5","6"))
data$faint_120_v2.factor = factor(data$faint_120_v2,levels=c("0","1","2","3","4","5","6"))
data$dizzy_120_v2.factor = factor(data$dizzy_120_v2,levels=c("0","1","2","3","4","5","6"))
data$heart_pounding_150_v2.factor = factor(data$heart_pounding_150_v2,levels=c("0","1","2","3","4","5","6"))
data$shaky_tremulous_150_v2.factor = factor(data$shaky_tremulous_150_v2,levels=c("0","1","2","3","4","5","6"))
data$nervous_anxious_150_v2.factor = factor(data$nervous_anxious_150_v2,levels=c("0","1","2","3","4","5","6"))
data$sweaty_150_v2.factor = factor(data$sweaty_150_v2,levels=c("0","1","2","3","4","5","6"))
data$hungry_150_v2.factor = factor(data$hungry_150_v2,levels=c("0","1","2","3","4","5","6"))
data$tingling_150_v2.factor = factor(data$tingling_150_v2,levels=c("0","1","2","3","4","5","6"))
data$diff_thinking_150_v2.factor = factor(data$diff_thinking_150_v2,levels=c("0","1","2","3","4","5","6"))
data$tired_drowsy_150_v2.factor = factor(data$tired_drowsy_150_v2,levels=c("0","1","2","3","4","5","6"))
data$weak_150_v2.factor = factor(data$weak_150_v2,levels=c("0","1","2","3","4","5","6"))
data$warm_150_v2.factor = factor(data$warm_150_v2,levels=c("0","1","2","3","4","5","6"))
data$faint_150_v2.factor = factor(data$faint_150_v2,levels=c("0","1","2","3","4","5","6"))
data$dizzy_150_v2.factor = factor(data$dizzy_150_v2,levels=c("0","1","2","3","4","5","6"))
data$heart_pounding_180_v2.factor = factor(data$heart_pounding_180_v2,levels=c("0","1","2","3","4","5","6"))
data$shaky_tremulous_180_v2.factor = factor(data$shaky_tremulous_180_v2,levels=c("0","1","2","3","4","5","6"))
data$nervous_anxious_180_v2.factor = factor(data$nervous_anxious_180_v2,levels=c("0","1","2","3","4","5","6"))
data$sweaty_180_v2.factor = factor(data$sweaty_180_v2,levels=c("0","1","2","3","4","5","6"))
data$hungry_180_v2.factor = factor(data$hungry_180_v2,levels=c("0","1","2","3","4","5","6"))
data$tingling_180_v2.factor = factor(data$tingling_180_v2,levels=c("0","1","2","3","4","5","6"))
data$diff_thinking_180_v2.factor = factor(data$diff_thinking_180_v2,levels=c("0","1","2","3","4","5","6"))
data$tired_drowsy_180_v2.factor = factor(data$tired_drowsy_180_v2,levels=c("0","1","2","3","4","5","6"))
data$weak_180_v2.factor = factor(data$weak_180_v2,levels=c("0","1","2","3","4","5","6"))
data$warm_180_v2.factor = factor(data$warm_180_v2,levels=c("0","1","2","3","4","5","6"))
data$faint_180_v2.factor = factor(data$faint_180_v2,levels=c("0","1","2","3","4","5","6"))
data$dizzy_180_v2.factor = factor(data$dizzy_180_v2,levels=c("0","1","2","3","4","5","6"))
data$ogtt_hypoglycemia_questionnairessecond_visit_complete.factor = factor(data$ogtt_hypoglycemia_questionnairessecond_visit_complete,levels=c("0","1","2"))
data$shaking_peds_base_v2.factor = factor(data$shaking_peds_base_v2,levels=c("1","0"))
data$fast_heart_peds_base_v2.factor = factor(data$fast_heart_peds_base_v2,levels=c("1","0"))
data$sweating_peds_base_v2.factor = factor(data$sweating_peds_base_v2,levels=c("1","0"))
data$weak_peds_base_v2.factor = factor(data$weak_peds_base_v2,levels=c("1","0"))
data$hunger_peds_base_v2.factor = factor(data$hunger_peds_base_v2,levels=c("1","0"))
data$irritable_peds_base_v2.factor = factor(data$irritable_peds_base_v2,levels=c("1","0"))
data$shaking_peds_120_v2.factor = factor(data$shaking_peds_120_v2,levels=c("1","0"))
data$fast_heart_peds_120_v2.factor = factor(data$fast_heart_peds_120_v2,levels=c("1","0"))
data$sweating_peds_120_v2.factor = factor(data$sweating_peds_120_v2,levels=c("1","0"))
data$weak_peds_120_v2.factor = factor(data$weak_peds_120_v2,levels=c("1","0"))
data$hunger_peds_120_v2.factor = factor(data$hunger_peds_120_v2,levels=c("1","0"))
data$irritable_peds_120_v2.factor = factor(data$irritable_peds_120_v2,levels=c("1","0"))
data$shaking_peds_150_v2.factor = factor(data$shaking_peds_150_v2,levels=c("1","0"))
data$fast_heart_peds_150_v2.factor = factor(data$fast_heart_peds_150_v2,levels=c("1","0"))
data$sweating_peds_150_v2.factor = factor(data$sweating_peds_150_v2,levels=c("1","0"))
data$weak_peds_150_v2.factor = factor(data$weak_peds_150_v2,levels=c("1","0"))
data$hunger_peds_150_v2.factor = factor(data$hunger_peds_150_v2,levels=c("1","0"))
data$irritable_peds_150_v2.factor = factor(data$irritable_peds_150_v2,levels=c("1","0"))
data$shaking_peds_180_v2.factor = factor(data$shaking_peds_180_v2,levels=c("1","0"))
data$fast_heart_peds_180_v2.factor = factor(data$fast_heart_peds_180_v2,levels=c("1","0"))
data$sweating_peds_180_v2.factor = factor(data$sweating_peds_180_v2,levels=c("1","0"))
data$weak_peds_180_v2.factor = factor(data$weak_peds_180_v2,levels=c("1","0"))
data$hunger_peds_180_v2.factor = factor(data$hunger_peds_180_v2,levels=c("1","0"))
data$irritable_peds_180_v2.factor = factor(data$irritable_peds_180_v2,levels=c("1","0"))
data$ogtt_hypoglycemia_questionnaire_age_618_second_vis_complete.factor = factor(data$ogtt_hypoglycemia_questionnaire_age_618_second_vis_complete,levels=c("0","1","2"))
data$questionnaire_filled_out_v2.factor = factor(data$questionnaire_filled_out_v2,levels=c("1","0"))
data$v2_home_hypo.factor = factor(data$v2_home_hypo,levels=c("1","0"))
data$i_feel_v2___0.factor = factor(data$i_feel_v2___0,levels=c("0","1"))
data$i_feel_v2___1.factor = factor(data$i_feel_v2___1,levels=c("0","1"))
data$i_feel_v2___2.factor = factor(data$i_feel_v2___2,levels=c("0","1"))
data$i_feel_v2___3.factor = factor(data$i_feel_v2___3,levels=c("0","1"))
data$i_feel_v2___4.factor = factor(data$i_feel_v2___4,levels=c("0","1"))
data$i_feel_v2___5.factor = factor(data$i_feel_v2___5,levels=c("0","1"))
data$i_feel_v2___6.factor = factor(data$i_feel_v2___6,levels=c("0","1"))
data$i_feel_v2___7.factor = factor(data$i_feel_v2___7,levels=c("0","1"))
data$i_feel_v2___8.factor = factor(data$i_feel_v2___8,levels=c("0","1"))
data$i_feel_v2___9.factor = factor(data$i_feel_v2___9,levels=c("0","1"))
data$i_feel_v2___10.factor = factor(data$i_feel_v2___10,levels=c("0","1"))
data$i_feel_v2___11.factor = factor(data$i_feel_v2___11,levels=c("0","1"))
data$it_was_recognized_by_v2.factor = factor(data$it_was_recognized_by_v2,levels=c("0","1"))
data$i_needed_v2___0.factor = factor(data$i_needed_v2___0,levels=c("0","1"))
data$i_needed_v2___1.factor = factor(data$i_needed_v2___1,levels=c("0","1"))
data$i_needed_v2___2.factor = factor(data$i_needed_v2___2,levels=c("0","1"))
data$juice_or_food_v2.factor = factor(data$juice_or_food_v2,levels=c("0","1","2"))
data$another_section_1_v2.factor = factor(data$another_section_1_v2,levels=c("1","0"))
data$i_feel_2_v2___0.factor = factor(data$i_feel_2_v2___0,levels=c("0","1"))
data$i_feel_2_v2___1.factor = factor(data$i_feel_2_v2___1,levels=c("0","1"))
data$i_feel_2_v2___2.factor = factor(data$i_feel_2_v2___2,levels=c("0","1"))
data$i_feel_2_v2___3.factor = factor(data$i_feel_2_v2___3,levels=c("0","1"))
data$i_feel_2_v2___4.factor = factor(data$i_feel_2_v2___4,levels=c("0","1"))
data$i_feel_2_v2___5.factor = factor(data$i_feel_2_v2___5,levels=c("0","1"))
data$i_feel_2_v2___6.factor = factor(data$i_feel_2_v2___6,levels=c("0","1"))
data$i_feel_2_v2___7.factor = factor(data$i_feel_2_v2___7,levels=c("0","1"))
data$i_feel_2_v2___8.factor = factor(data$i_feel_2_v2___8,levels=c("0","1"))
data$i_feel_2_v2___9.factor = factor(data$i_feel_2_v2___9,levels=c("0","1"))
data$i_feel_2_v2___10.factor = factor(data$i_feel_2_v2___10,levels=c("0","1"))
data$i_feel_2_v2___11.factor = factor(data$i_feel_2_v2___11,levels=c("0","1"))
data$it_was_recognized_by_2_v2.factor = factor(data$it_was_recognized_by_2_v2,levels=c("0","1"))
data$i_needed_2_v2___0.factor = factor(data$i_needed_2_v2___0,levels=c("0","1"))
data$i_needed_2_v2___1.factor = factor(data$i_needed_2_v2___1,levels=c("0","1"))
data$i_needed_2_v2___2.factor = factor(data$i_needed_2_v2___2,levels=c("0","1"))
data$juice_or_food_2_v2.factor = factor(data$juice_or_food_2_v2,levels=c("0","1","2"))
data$another_section_2_v2.factor = factor(data$another_section_2_v2,levels=c("1","0"))
data$i_feel_3_v2___0.factor = factor(data$i_feel_3_v2___0,levels=c("0","1"))
data$i_feel_3_v2___1.factor = factor(data$i_feel_3_v2___1,levels=c("0","1"))
data$i_feel_3_v2___2.factor = factor(data$i_feel_3_v2___2,levels=c("0","1"))
data$i_feel_3_v2___3.factor = factor(data$i_feel_3_v2___3,levels=c("0","1"))
data$i_feel_3_v2___4.factor = factor(data$i_feel_3_v2___4,levels=c("0","1"))
data$i_feel_3_v2___5.factor = factor(data$i_feel_3_v2___5,levels=c("0","1"))
data$i_feel_3_v2___6.factor = factor(data$i_feel_3_v2___6,levels=c("0","1"))
data$i_feel_3_v2___7.factor = factor(data$i_feel_3_v2___7,levels=c("0","1"))
data$i_feel_3_v2___8.factor = factor(data$i_feel_3_v2___8,levels=c("0","1"))
data$i_feel_3_v2___9.factor = factor(data$i_feel_3_v2___9,levels=c("0","1"))
data$i_feel_3_v2___10.factor = factor(data$i_feel_3_v2___10,levels=c("0","1"))
data$i_feel_3_v2___11.factor = factor(data$i_feel_3_v2___11,levels=c("0","1"))
data$it_was_recognized_by_3_v2.factor = factor(data$it_was_recognized_by_3_v2,levels=c("0","1"))
data$i_needed_3_v2___0.factor = factor(data$i_needed_3_v2___0,levels=c("0","1"))
data$i_needed_3_v2___1.factor = factor(data$i_needed_3_v2___1,levels=c("0","1"))
data$i_needed_3_v2___2.factor = factor(data$i_needed_3_v2___2,levels=c("0","1"))
data$juice_or_food_3_v2.factor = factor(data$juice_or_food_3_v2,levels=c("0","1","2"))
data$another_section_3_v2.factor = factor(data$another_section_3_v2,levels=c("1","0"))
data$i_feel_4_v2___0.factor = factor(data$i_feel_4_v2___0,levels=c("0","1"))
data$i_feel_4_v2___1.factor = factor(data$i_feel_4_v2___1,levels=c("0","1"))
data$i_feel_4_v2___2.factor = factor(data$i_feel_4_v2___2,levels=c("0","1"))
data$i_feel_4_v2___3.factor = factor(data$i_feel_4_v2___3,levels=c("0","1"))
data$i_feel_4_v2___4.factor = factor(data$i_feel_4_v2___4,levels=c("0","1"))
data$i_feel_4_v2___5.factor = factor(data$i_feel_4_v2___5,levels=c("0","1"))
data$i_feel_4_v2___6.factor = factor(data$i_feel_4_v2___6,levels=c("0","1"))
data$i_feel_4_v2___7.factor = factor(data$i_feel_4_v2___7,levels=c("0","1"))
data$i_feel_4_v2___8.factor = factor(data$i_feel_4_v2___8,levels=c("0","1"))
data$i_feel_4_v2___9.factor = factor(data$i_feel_4_v2___9,levels=c("0","1"))
data$i_feel_4_v2___10.factor = factor(data$i_feel_4_v2___10,levels=c("0","1"))
data$i_feel_4_v2___11.factor = factor(data$i_feel_4_v2___11,levels=c("0","1"))
data$it_was_recognized_by_4_v2.factor = factor(data$it_was_recognized_by_4_v2,levels=c("0","1"))
data$i_needed_4_v2___0.factor = factor(data$i_needed_4_v2___0,levels=c("0","1"))
data$i_needed_4_v2___1.factor = factor(data$i_needed_4_v2___1,levels=c("0","1"))
data$i_needed_4_v2___2.factor = factor(data$i_needed_4_v2___2,levels=c("0","1"))
data$juice_or_food_4_v2.factor = factor(data$juice_or_food_4_v2,levels=c("0","1","2"))
data$another_section_4_v2.factor = factor(data$another_section_4_v2,levels=c("1","0"))
data$i_feel_5_v2___0.factor = factor(data$i_feel_5_v2___0,levels=c("0","1"))
data$i_feel_5_v2___1.factor = factor(data$i_feel_5_v2___1,levels=c("0","1"))
data$i_feel_5_v2___2.factor = factor(data$i_feel_5_v2___2,levels=c("0","1"))
data$i_feel_5_v2___3.factor = factor(data$i_feel_5_v2___3,levels=c("0","1"))
data$i_feel_5_v2___4.factor = factor(data$i_feel_5_v2___4,levels=c("0","1"))
data$i_feel_5_v2___5.factor = factor(data$i_feel_5_v2___5,levels=c("0","1"))
data$i_feel_5_v2___6.factor = factor(data$i_feel_5_v2___6,levels=c("0","1"))
data$i_feel_5_v2___7.factor = factor(data$i_feel_5_v2___7,levels=c("0","1"))
data$i_feel_5_v2___8.factor = factor(data$i_feel_5_v2___8,levels=c("0","1"))
data$i_feel_5_v2___9.factor = factor(data$i_feel_5_v2___9,levels=c("0","1"))
data$i_feel_5_v2___10.factor = factor(data$i_feel_5_v2___10,levels=c("0","1"))
data$i_feel_5_v2___11.factor = factor(data$i_feel_5_v2___11,levels=c("0","1"))
data$it_was_recognized_by_5_v2.factor = factor(data$it_was_recognized_by_5_v2,levels=c("0","1"))
data$i_needed_5_v2___0.factor = factor(data$i_needed_5_v2___0,levels=c("0","1"))
data$i_needed_5_v2___1.factor = factor(data$i_needed_5_v2___1,levels=c("0","1"))
data$i_needed_5_v2___2.factor = factor(data$i_needed_5_v2___2,levels=c("0","1"))
data$juice_or_food_5_v2.factor = factor(data$juice_or_food_5_v2,levels=c("0","1","2"))
data$another_section_5_v2.factor = factor(data$another_section_5_v2,levels=c("1","0"))
data$i_feel_6_v2___0.factor = factor(data$i_feel_6_v2___0,levels=c("0","1"))
data$i_feel_6_v2___1.factor = factor(data$i_feel_6_v2___1,levels=c("0","1"))
data$i_feel_6_v2___2.factor = factor(data$i_feel_6_v2___2,levels=c("0","1"))
data$i_feel_6_v2___3.factor = factor(data$i_feel_6_v2___3,levels=c("0","1"))
data$i_feel_6_v2___4.factor = factor(data$i_feel_6_v2___4,levels=c("0","1"))
data$i_feel_6_v2___5.factor = factor(data$i_feel_6_v2___5,levels=c("0","1"))
data$i_feel_6_v2___6.factor = factor(data$i_feel_6_v2___6,levels=c("0","1"))
data$i_feel_6_v2___7.factor = factor(data$i_feel_6_v2___7,levels=c("0","1"))
data$i_feel_6_v2___8.factor = factor(data$i_feel_6_v2___8,levels=c("0","1"))
data$i_feel_6_v2___9.factor = factor(data$i_feel_6_v2___9,levels=c("0","1"))
data$i_feel_6_v2___10.factor = factor(data$i_feel_6_v2___10,levels=c("0","1"))
data$i_feel_6_v2___11.factor = factor(data$i_feel_6_v2___11,levels=c("0","1"))
data$it_was_recognized_by_6_v2.factor = factor(data$it_was_recognized_by_6_v2,levels=c("0","1"))
data$i_needed_6_v2___0.factor = factor(data$i_needed_6_v2___0,levels=c("0","1"))
data$i_needed_6_v2___1.factor = factor(data$i_needed_6_v2___1,levels=c("0","1"))
data$i_needed_6_v2___2.factor = factor(data$i_needed_6_v2___2,levels=c("0","1"))
data$juice_or_food_6_v2.factor = factor(data$juice_or_food_6_v2,levels=c("0","1","2"))
data$another_section_6_v2.factor = factor(data$another_section_6_v2,levels=c("1","0"))
data$i_feel_7_v2___0.factor = factor(data$i_feel_7_v2___0,levels=c("0","1"))
data$i_feel_7_v2___1.factor = factor(data$i_feel_7_v2___1,levels=c("0","1"))
data$i_feel_7_v2___2.factor = factor(data$i_feel_7_v2___2,levels=c("0","1"))
data$i_feel_7_v2___3.factor = factor(data$i_feel_7_v2___3,levels=c("0","1"))
data$i_feel_7_v2___4.factor = factor(data$i_feel_7_v2___4,levels=c("0","1"))
data$i_feel_7_v2___5.factor = factor(data$i_feel_7_v2___5,levels=c("0","1"))
data$i_feel_7_v2___6.factor = factor(data$i_feel_7_v2___6,levels=c("0","1"))
data$i_feel_7_v2___7.factor = factor(data$i_feel_7_v2___7,levels=c("0","1"))
data$i_feel_7_v2___8.factor = factor(data$i_feel_7_v2___8,levels=c("0","1"))
data$i_feel_7_v2___9.factor = factor(data$i_feel_7_v2___9,levels=c("0","1"))
data$i_feel_7_v2___10.factor = factor(data$i_feel_7_v2___10,levels=c("0","1"))
data$i_feel_7_v2___11.factor = factor(data$i_feel_7_v2___11,levels=c("0","1"))
data$it_was_recognized_by_7_v2.factor = factor(data$it_was_recognized_by_7_v2,levels=c("0","1"))
data$i_needed_7_v2___0.factor = factor(data$i_needed_7_v2___0,levels=c("0","1"))
data$i_needed_7_v2___1.factor = factor(data$i_needed_7_v2___1,levels=c("0","1"))
data$i_needed_7_v2___2.factor = factor(data$i_needed_7_v2___2,levels=c("0","1"))
data$juice_or_food_7_v2.factor = factor(data$juice_or_food_7_v2,levels=c("0","1","2"))
data$another_section_7_v2.factor = factor(data$another_section_7_v2,levels=c("1","0"))
data$i_feel_8_v2___0.factor = factor(data$i_feel_8_v2___0,levels=c("0","1"))
data$i_feel_8_v2___1.factor = factor(data$i_feel_8_v2___1,levels=c("0","1"))
data$i_feel_8_v2___2.factor = factor(data$i_feel_8_v2___2,levels=c("0","1"))
data$i_feel_8_v2___3.factor = factor(data$i_feel_8_v2___3,levels=c("0","1"))
data$i_feel_8_v2___4.factor = factor(data$i_feel_8_v2___4,levels=c("0","1"))
data$i_feel_8_v2___5.factor = factor(data$i_feel_8_v2___5,levels=c("0","1"))
data$i_feel_8_v2___6.factor = factor(data$i_feel_8_v2___6,levels=c("0","1"))
data$i_feel_8_v2___7.factor = factor(data$i_feel_8_v2___7,levels=c("0","1"))
data$i_feel_8_v2___8.factor = factor(data$i_feel_8_v2___8,levels=c("0","1"))
data$i_feel_8_v2___9.factor = factor(data$i_feel_8_v2___9,levels=c("0","1"))
data$i_feel_8_v2___10.factor = factor(data$i_feel_8_v2___10,levels=c("0","1"))
data$i_feel_8_v2___11.factor = factor(data$i_feel_8_v2___11,levels=c("0","1"))
data$it_was_recognized_by_8_v2.factor = factor(data$it_was_recognized_by_8_v2,levels=c("0","1"))
data$i_needed_8_v2___0.factor = factor(data$i_needed_8_v2___0,levels=c("0","1"))
data$i_needed_8_v2___1.factor = factor(data$i_needed_8_v2___1,levels=c("0","1"))
data$i_needed_8_v2___2.factor = factor(data$i_needed_8_v2___2,levels=c("0","1"))
data$juice_or_food_8_v2.factor = factor(data$juice_or_food_8_v2,levels=c("0","1","2"))
data$athome_adult_hypoglycemia_questionnairesecond_visi_complete.factor = factor(data$athome_adult_hypoglycemia_questionnairesecond_visi_complete,levels=c("0","1","2"))
data$child_home_completed_v2.factor = factor(data$child_home_completed_v2,levels=c("1","0"))
data$v2_child_home_hypo.factor = factor(data$v2_child_home_hypo,levels=c("1","0"))
data$symptoms_child_hypo_v2___0.factor = factor(data$symptoms_child_hypo_v2___0,levels=c("0","1"))
data$symptoms_child_hypo_v2___1.factor = factor(data$symptoms_child_hypo_v2___1,levels=c("0","1"))
data$symptoms_child_hypo_v2___2.factor = factor(data$symptoms_child_hypo_v2___2,levels=c("0","1"))
data$symptoms_child_hypo_v2___3.factor = factor(data$symptoms_child_hypo_v2___3,levels=c("0","1"))
data$symptoms_child_hypo_v2___4.factor = factor(data$symptoms_child_hypo_v2___4,levels=c("0","1"))
data$symptoms_child_hypo_v2___5.factor = factor(data$symptoms_child_hypo_v2___5,levels=c("0","1"))
data$another_section_filled_v2.factor = factor(data$another_section_filled_v2,levels=c("1","0"))
data$symptoms_child_hypo_2_v2___0.factor = factor(data$symptoms_child_hypo_2_v2___0,levels=c("0","1"))
data$symptoms_child_hypo_2_v2___1.factor = factor(data$symptoms_child_hypo_2_v2___1,levels=c("0","1"))
data$symptoms_child_hypo_2_v2___2.factor = factor(data$symptoms_child_hypo_2_v2___2,levels=c("0","1"))
data$symptoms_child_hypo_2_v2___3.factor = factor(data$symptoms_child_hypo_2_v2___3,levels=c("0","1"))
data$symptoms_child_hypo_2_v2___4.factor = factor(data$symptoms_child_hypo_2_v2___4,levels=c("0","1"))
data$symptoms_child_hypo_2_v2___5.factor = factor(data$symptoms_child_hypo_2_v2___5,levels=c("0","1"))
data$third_section_filled_out_v2.factor = factor(data$third_section_filled_out_v2,levels=c("1","0"))
data$symptoms_child_hypo_3_v2___0.factor = factor(data$symptoms_child_hypo_3_v2___0,levels=c("0","1"))
data$symptoms_child_hypo_3_v2___1.factor = factor(data$symptoms_child_hypo_3_v2___1,levels=c("0","1"))
data$symptoms_child_hypo_3_v2___2.factor = factor(data$symptoms_child_hypo_3_v2___2,levels=c("0","1"))
data$symptoms_child_hypo_3_v2___3.factor = factor(data$symptoms_child_hypo_3_v2___3,levels=c("0","1"))
data$symptoms_child_hypo_3_v2___4.factor = factor(data$symptoms_child_hypo_3_v2___4,levels=c("0","1"))
data$symptoms_child_hypo_3_v2___5.factor = factor(data$symptoms_child_hypo_3_v2___5,levels=c("0","1"))
data$fourth_section_filled_v2.factor = factor(data$fourth_section_filled_v2,levels=c("1","0"))
data$symptoms_child_hypo_4_v2___0.factor = factor(data$symptoms_child_hypo_4_v2___0,levels=c("0","1"))
data$symptoms_child_hypo_4_v2___1.factor = factor(data$symptoms_child_hypo_4_v2___1,levels=c("0","1"))
data$symptoms_child_hypo_4_v2___2.factor = factor(data$symptoms_child_hypo_4_v2___2,levels=c("0","1"))
data$symptoms_child_hypo_4_v2___3.factor = factor(data$symptoms_child_hypo_4_v2___3,levels=c("0","1"))
data$symptoms_child_hypo_4_v2___4.factor = factor(data$symptoms_child_hypo_4_v2___4,levels=c("0","1"))
data$symptoms_child_hypo_4_v2___5.factor = factor(data$symptoms_child_hypo_4_v2___5,levels=c("0","1"))
data$fifth_section_filled_v2.factor = factor(data$fifth_section_filled_v2,levels=c("1","0"))
data$symptoms_child_hypo_5_v2___0.factor = factor(data$symptoms_child_hypo_5_v2___0,levels=c("0","1"))
data$symptoms_child_hypo_5_v2___1.factor = factor(data$symptoms_child_hypo_5_v2___1,levels=c("0","1"))
data$symptoms_child_hypo_5_v2___2.factor = factor(data$symptoms_child_hypo_5_v2___2,levels=c("0","1"))
data$symptoms_child_hypo_5_v2___3.factor = factor(data$symptoms_child_hypo_5_v2___3,levels=c("0","1"))
data$symptoms_child_hypo_5_v2___4.factor = factor(data$symptoms_child_hypo_5_v2___4,levels=c("0","1"))
data$symptoms_child_hypo_5_v2___5.factor = factor(data$symptoms_child_hypo_5_v2___5,levels=c("0","1"))
data$sixth_section_filled_v2.factor = factor(data$sixth_section_filled_v2,levels=c("1","0"))
data$symptoms_child_hypo_6_v2___0.factor = factor(data$symptoms_child_hypo_6_v2___0,levels=c("0","1"))
data$symptoms_child_hypo_6_v2___1.factor = factor(data$symptoms_child_hypo_6_v2___1,levels=c("0","1"))
data$symptoms_child_hypo_6_v2___2.factor = factor(data$symptoms_child_hypo_6_v2___2,levels=c("0","1"))
data$symptoms_child_hypo_6_v2___3.factor = factor(data$symptoms_child_hypo_6_v2___3,levels=c("0","1"))
data$symptoms_child_hypo_6_v2___4.factor = factor(data$symptoms_child_hypo_6_v2___4,levels=c("0","1"))
data$symptoms_child_hypo_6_v2___5.factor = factor(data$symptoms_child_hypo_6_v2___5,levels=c("0","1"))
data$seventh_section_filled_v2.factor = factor(data$seventh_section_filled_v2,levels=c("1","0"))
data$symptoms_child_hypo_7_v2___0.factor = factor(data$symptoms_child_hypo_7_v2___0,levels=c("0","1"))
data$symptoms_child_hypo_7_v2___1.factor = factor(data$symptoms_child_hypo_7_v2___1,levels=c("0","1"))
data$symptoms_child_hypo_7_v2___2.factor = factor(data$symptoms_child_hypo_7_v2___2,levels=c("0","1"))
data$symptoms_child_hypo_7_v2___3.factor = factor(data$symptoms_child_hypo_7_v2___3,levels=c("0","1"))
data$symptoms_child_hypo_7_v2___4.factor = factor(data$symptoms_child_hypo_7_v2___4,levels=c("0","1"))
data$symptoms_child_hypo_7_v2___5.factor = factor(data$symptoms_child_hypo_7_v2___5,levels=c("0","1"))
data$eighth_section_filled_v2.factor = factor(data$eighth_section_filled_v2,levels=c("1","0"))
data$symptoms_child_hypo_8_v2___0.factor = factor(data$symptoms_child_hypo_8_v2___0,levels=c("0","1"))
data$symptoms_child_hypo_8_v2___1.factor = factor(data$symptoms_child_hypo_8_v2___1,levels=c("0","1"))
data$symptoms_child_hypo_8_v2___2.factor = factor(data$symptoms_child_hypo_8_v2___2,levels=c("0","1"))
data$symptoms_child_hypo_8_v2___3.factor = factor(data$symptoms_child_hypo_8_v2___3,levels=c("0","1"))
data$symptoms_child_hypo_8_v2___4.factor = factor(data$symptoms_child_hypo_8_v2___4,levels=c("0","1"))
data$symptoms_child_hypo_8_v2___5.factor = factor(data$symptoms_child_hypo_8_v2___5,levels=c("0","1"))
data$athome_child_618_hypoglycemia_questionnairesecond_complete.factor = factor(data$athome_child_618_hypoglycemia_questionnairesecond_complete,levels=c("0","1","2"))
data$pft_yes_no_v2.factor = factor(data$pft_yes_no_v2,levels=c("1","0"))
data$pulmonary_functionsecond_visit_complete.factor = factor(data$pulmonary_functionsecond_visit_complete,levels=c("0","1","2"))
data$ae_occur_v2.factor = factor(data$ae_occur_v2,levels=c("1","0"))
data$ae_severity_v2.factor = factor(data$ae_severity_v2,levels=c("1","2","3"))
data$action_taken_v2.factor = factor(data$action_taken_v2,levels=c("0","1","2"))
data$ae_outcome_v2.factor = factor(data$ae_outcome_v2,levels=c("0","1","2","3","4"))
data$ae_relation_to_study_v2.factor = factor(data$ae_relation_to_study_v2,levels=c("5","4","3","2","1"))
data$ae_serious_v2.factor = factor(data$ae_serious_v2,levels=c("1","2"))
data$adverse_event_logsecond_visit_complete.factor = factor(data$adverse_event_logsecond_visit_complete,levels=c("0","1","2"))
data$y_n_protocol_dev_v2.factor = factor(data$y_n_protocol_dev_v2,levels=c("1","0"))
data$deviation_type_v2.factor = factor(data$deviation_type_v2,levels=c("1","2","3","4","5","6","7","8","9","10","11"))
data$timing_of_deviation_v2.factor = factor(data$timing_of_deviation_v2,levels=c("1","2","3"))
data$dev_id_by_v2.factor = factor(data$dev_id_by_v2,levels=c("1","2","3","4","5"))
data$deviation_result_ae_v2.factor = factor(data$deviation_result_ae_v2,levels=c("1","0"))
data$second_protocol_dev_v2.factor = factor(data$second_protocol_dev_v2,levels=c("1","0"))
data$deviation_type_2_v2.factor = factor(data$deviation_type_2_v2,levels=c("1","2","3","4","5","6","7","8","9","10","11"))
data$timing_of_deviation_2_v2.factor = factor(data$timing_of_deviation_2_v2,levels=c("1","2","3"))
data$dev_id_by_2_v2.factor = factor(data$dev_id_by_2_v2,levels=c("1","2","3","4","5"))
data$deviation_result_ae_2_v2.factor = factor(data$deviation_result_ae_2_v2,levels=c("1","0"))
data$third_protocol_dev_v2.factor = factor(data$third_protocol_dev_v2,levels=c("1","0"))
data$deviation_type_3_v2.factor = factor(data$deviation_type_3_v2,levels=c("1","2","3","4","5","6","7","8","9","10","11"))
data$timing_of_deviation_3_v2.factor = factor(data$timing_of_deviation_3_v2,levels=c("1","2","3"))
data$dev_id_by_3_v2.factor = factor(data$dev_id_by_3_v2,levels=c("1","2","3","4","5"))
data$deviation_result_ae_3_v2.factor = factor(data$deviation_result_ae_3_v2,levels=c("1","0"))
data$fourth_protocol_dev_v2.factor = factor(data$fourth_protocol_dev_v2,levels=c("1","0"))
data$deviation_type_4_v2.factor = factor(data$deviation_type_4_v2,levels=c("1","2","3","4","5","6","7","8","9","10","11"))
data$timing_of_deviation_4_v2.factor = factor(data$timing_of_deviation_4_v2,levels=c("1","2","3"))
data$dev_id_by_4_v2.factor = factor(data$dev_id_by_4_v2,levels=c("1","2","3","4","5"))
data$deviation_result_ae_4_v2.factor = factor(data$deviation_result_ae_4_v2,levels=c("1","0"))
data$protocol_deviationsecond_visit_complete.factor = factor(data$protocol_deviationsecond_visit_complete,levels=c("0","1","2"))
data$agreed_to_cgm_v2.factor = factor(data$agreed_to_cgm_v2,levels=c("1","0"))
data$cgm_instructions_v2___1.factor = factor(data$cgm_instructions_v2___1,levels=c("0","1"))
data$cgm_instructions_v2___2.factor = factor(data$cgm_instructions_v2___2,levels=c("0","1"))
data$cgm_instructions_v2___3.factor = factor(data$cgm_instructions_v2___3,levels=c("0","1"))
data$cgm_placement_site_v2.factor = factor(data$cgm_placement_site_v2,levels=c("1","2"))
data$cgm_data_success_failure_v2.factor = factor(data$cgm_data_success_failure_v2,levels=c("1","2"))
data$cgm_gaps_filled_in_v2.factor = factor(data$cgm_gaps_filled_in_v2,levels=c("1","0"))
data$num_hours_good_data_v2.factor = factor(data$num_hours_good_data_v2,levels=c("1","2","3","4","5","6","7"))
data$total_sensor_readings_v2.factor = factor(data$total_sensor_readings_v2,levels=c("288","576","864","1152","1440","1728","2016"))
data$cgm_datasecond_visit_complete.factor = factor(data$cgm_datasecond_visit_complete,levels=c("0","1","2"))
data$patient_undergo_dexa_v2.factor = factor(data$patient_undergo_dexa_v2,levels=c("1","0"))
data$make_of_dxa_machine_v2.factor = factor(data$make_of_dxa_machine_v2,levels=c("1","2"))
data$dxa_datasecond_visit_complete.factor = factor(data$dxa_datasecond_visit_complete,levels=c("0","1","2"))

levels(data$redcap_event_name.factor)=c("Visit 1","Visit 2","Visit 3","Visit 4","Unscheduled Visit")
levels(data$redcap_repeat_instrument.factor)=c("Current Medications","Random Hypoglycemia","Random Hypoglycemia Questionnaires","Adverse Event Log")
levels(data$redcap_data_access_group.factor)=c("Colorado","Iowa","Minnesota","Washington U St. Louis")
levels(data$participant_withdrawn.factor)=c("Yes- permanently from the study","Yes- Temporarily from the study","No")
levels(data$sex.factor)=c("Male","Female")
levels(data$ethnicity.factor)=c("Hispanic/Latino","Not Hispanic/Latino","N/A")
levels(data$origin_race.factor)=c("White (Europe, Middle East, North Africa)","Black or African American (Africa)","American Indian or Alaska Native (N. S. & Central America)","Asian (Far East, Southeast Asia, Indian)","Native Hawaiian or Other Pacific Islander (Hawaii, Guam, Samoa, Pacific Islands)","Declined")
levels(data$cftr_genotype_available_in.factor)=c("Yes both chromosomes","only one gene is known, other is unknown, but listed as true CF","Been completed and noted as diagnostic but the actual genotype is not available in medical record","no genotype avaliable in any form")
levels(data$cftr_mutation_1.factor)=c("F508del","Other")
levels(data$type_of_mutation_1.factor)=c("Minimal Function (class 1 & 2)","Residual Function (class 3, 4, 5)")
levels(data$cftr_mutation_2.factor)=c("F508del","Other","Unknown")
levels(data$type_of_mutation_2.factor)=c("Minimal (class 1 & 2)","Residual (class 3, 4, 5)")
levels(data$mutation_category.factor)=c("Severe (minimal & minimal)","Residual (minimal & residual)")
levels(data$new_born_screen.factor)=c("Yes","No","Unavaliable")
levels(data$sweat_chloride_test.factor)=c("Yes","No")
levels(data$pancreatic_status.factor)=c("Sufficient","Insufficient","Unknown")
levels(data$most_recent_sputum_culture___1.factor)=c("Unchecked","Checked")
levels(data$most_recent_sputum_culture___2.factor)=c("Unchecked","Checked")
levels(data$most_recent_sputum_culture___3.factor)=c("Unchecked","Checked")
levels(data$most_recent_sputum_culture___4.factor)=c("Unchecked","Checked")
levels(data$most_recent_sputum_culture___5.factor)=c("Unchecked","Checked")
levels(data$most_recent_sputum_culture___6.factor)=c("Unchecked","Checked")
levels(data$most_recent_sputum_culture___7.factor)=c("Unchecked","Checked")
levels(data$most_recent_sputum_culture___8.factor)=c("Unchecked","Checked")
levels(data$sputum_culture_year___1.factor)=c("Unchecked","Checked")
levels(data$sputum_culture_year___2.factor)=c("Unchecked","Checked")
levels(data$sputum_culture_year___3.factor)=c("Unchecked","Checked")
levels(data$sputum_culture_year___4.factor)=c("Unchecked","Checked")
levels(data$sputum_culture_year___5.factor)=c("Unchecked","Checked")
levels(data$sputum_culture_year___6.factor)=c("Unchecked","Checked")
levels(data$sputum_culture_year___7.factor)=c("Unchecked","Checked")
levels(data$sputum_culture_year___8.factor)=c("Unchecked","Checked")
levels(data$liver_disease.factor)=c("Yes","No")
levels(data$corrector_yes_no.factor)=c("Yes","No")
levels(data$corrector___1.factor)=c("Unchecked","Checked")
levels(data$corrector___2.factor)=c("Unchecked","Checked")
levels(data$corrector___3.factor)=c("Unchecked","Checked")
levels(data$corrector___4.factor)=c("Unchecked","Checked")
levels(data$corrector___5.factor)=c("Unchecked","Checked")
levels(data$change_mod_yn.factor)=c("Yes","No")
levels(data$family_history_diabetes.factor)=c("Yes","No")
levels(data$relative_with_diabetes___1.factor)=c("Unchecked","Checked")
levels(data$relative_with_diabetes___2.factor)=c("Unchecked","Checked")
levels(data$relative_with_diabetes___3.factor)=c("Unchecked","Checked")
levels(data$relative_with_diabetes___4.factor)=c("Unchecked","Checked")
levels(data$diabetes_hisotry_type___1.factor)=c("Unchecked","Checked")
levels(data$diabetes_hisotry_type___2.factor)=c("Unchecked","Checked")
levels(data$diabetes_hisotry_type___3.factor)=c("Unchecked","Checked")
levels(data$diabetes_hisotry_type___4.factor)=c("Unchecked","Checked")
levels(data$demographics_and_cf_history_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$antibiotics___1.factor)=c("Unchecked","Checked")
levels(data$antibiotics___2.factor)=c("Unchecked","Checked")
levels(data$antibiotics___3.factor)=c("Unchecked","Checked")
levels(data$antibiotics___4.factor)=c("Unchecked","Checked")
levels(data$antibiotics___5.factor)=c("Unchecked","Checked")
levels(data$inhaled_steroids.factor)=c("Yes","No")
levels(data$patient_using_flonase.factor)=c("Yes","No")
levels(data$inhaled_beta_agonist.factor)=c("Yes","No")
levels(data$pancreatic_enzyme_therapy.factor)=c("Yes","No","Suppose to be, but doesnt take")
levels(data$systemic_steroid_therapy___1.factor)=c("Unchecked","Checked")
levels(data$systemic_steroid_therapy___2.factor)=c("Unchecked","Checked")
levels(data$systemic_steroid_therapy___3.factor)=c("Unchecked","Checked")
levels(data$systemic_steroid_therapy___4.factor)=c("Unchecked","Checked")
levels(data$systemic_steroid_therapy___5.factor)=c("Unchecked","Checked")
levels(data$systemic_steroid_therapy___6.factor)=c("Unchecked","Checked")
levels(data$cf_multivitamins_aquadeks.factor)=c("Yes","No")
levels(data$vitamin_d_in_addition_to_m.factor)=c("Yes","No","Only in multivitamin")
levels(data$high_dose_ibuprofen.factor)=c("Daily","As needed","None")
levels(data$inhaled_antibiotics.factor)=c("Yes","more than 1","No")
levels(data$ursodiol.factor)=c("Yes","No")
levels(data$gen_1_atyp_antipsych___0.factor)=c("Unchecked","Checked")
levels(data$gen_1_atyp_antipsych___1.factor)=c("Unchecked","Checked")
levels(data$gen_1_atyp_antipsych___2.factor)=c("Unchecked","Checked")
levels(data$gen_1_atyp_antipsych___3.factor)=c("Unchecked","Checked")
levels(data$gen_1_atyp_antipsych___4.factor)=c("Unchecked","Checked")
levels(data$gen_1_atyp_antipsych___5.factor)=c("Unchecked","Checked")
levels(data$gen_1_atyp_antipsych___6.factor)=c("Unchecked","Checked")
levels(data$gen_1_atyp_antipsych___7.factor)=c("Unchecked","Checked")
levels(data$gen_1_atyp_antipsych___8.factor)=c("Unchecked","Checked")
levels(data$gen_1_atyp_antipsych___9.factor)=c("Unchecked","Checked")
levels(data$gen_2_atyp_antipsych___0.factor)=c("Unchecked","Checked")
levels(data$gen_2_atyp_antipsych___1.factor)=c("Unchecked","Checked")
levels(data$gen_2_atyp_antipsych___2.factor)=c("Unchecked","Checked")
levels(data$gen_2_atyp_antipsych___3.factor)=c("Unchecked","Checked")
levels(data$gen_2_atyp_antipsych___4.factor)=c("Unchecked","Checked")
levels(data$gen_2_atyp_antipsych___5.factor)=c("Unchecked","Checked")
levels(data$gen_2_atyp_antipsych___6.factor)=c("Unchecked","Checked")
levels(data$gen_2_atyp_antipsych___7.factor)=c("Unchecked","Checked")
levels(data$gen_2_atyp_antipsych___8.factor)=c("Unchecked","Checked")
levels(data$gen_2_atyp_antipsych___9.factor)=c("Unchecked","Checked")
levels(data$gen_2_atyp_antipsych___10.factor)=c("Unchecked","Checked")
levels(data$gen_2_atyp_antipsych___11.factor)=c("Unchecked","Checked")
levels(data$gen_2_atyp_antipsych___12.factor)=c("Unchecked","Checked")
levels(data$gen_2_atyp_antipsych___13.factor)=c("Unchecked","Checked")
levels(data$current_medications_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$cf_yes_no_inclusion.factor)=c("Yes","No")
levels(data$age_6_yes_no_inclusion.factor)=c("Yes","No")
levels(data$clin_stable_yes_no_inclusion.factor)=c("Yes","No")
levels(data$other_diabetes_yes_no.factor)=c("Yes","No")
levels(data$organ_tx_yes_no.factor)=c("Yes","No")
levels(data$cfrd_diabetes_med_yes_no.factor)=c("Yes","No")
levels(data$pulm_ex_last3months.factor)=c("Yes","No")
levels(data$corrector_yes_no_exclusion.factor)=c("Yes","No")
levels(data$consent_completed.factor)=c("Yes","No")
levels(data$yn_future_use.factor)=c("Yes","No")
levels(data$upt.factor)=c("subject is not female","subject is pre-pubertal","subject is post-menopausal","pregnancy test is negative","pregnancy test is positive")
levels(data$inclusionexclusion_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$repeat_visit.factor)=c("Visit 1","Visit 2","Visit 3","Visit 4")
levels(data$fast_hours.factor)=c("Yes","No")
levels(data$tanner_female_pubic.factor)=c("Tanner 1 (no puberty/pre-pubertal)","Tanner 2","Tanner 3","Tanner 4","Tanner 5 (normal adult/fully mature)","Unknown/declined")
levels(data$tanner_breast_dev.factor)=c("Tanner 1 (no puberty/pre-pubertal)","Tanner 2","Tanner 3","Tanner 4","Tanner 5 (normal adult/fully mature)","Unknown/declined")
levels(data$tanner_male_pubic.factor)=c("Tanner 1 (no puberty/pre-pubertal)","Tanner 2","Tanner 3","Tanner 4","Tanner 5 (normal adult/fully mature)","Unknown/declined")
levels(data$tanner_testicular_vol.factor)=c("Tanner 1 (1-3mL)","Tanner 2 (4-6 mL)","Tanner 3 (8-10 mL)","Tanner 4 (12-15mL)","Tanner 5 (20-25 mL)","Unknown/declined")
levels(data$type_of_temperature.factor)=c("Tympanic","Oral","Temporal")
levels(data$numbing_cream___1.factor)=c("Unchecked","Checked")
levels(data$numbing_cream___2.factor)=c("Unchecked","Checked")
levels(data$hypoglycemia_symptoms_yesno.factor)=c("Yes","No")
levels(data$protocol_continued_70_50___1.factor)=c("Unchecked","Checked")
levels(data$protocol_continued_70_50___2.factor)=c("Unchecked","Checked")
levels(data$protocol_continued_70_52_sym___1.factor)=c("Unchecked","Checked")
levels(data$protocol_continued_70_52_sym___2.factor)=c("Unchecked","Checked")
levels(data$pocgluocse50andsymptoms_1___1.factor)=c("Unchecked","Checked")
levels(data$pocgluocse50andsymptoms_1___2.factor)=c("Unchecked","Checked")
levels(data$pocgluocse50andsymptoms_1___3.factor)=c("Unchecked","Checked")
levels(data$pocgluocse50andsymptoms_1___4.factor)=c("Unchecked","Checked")
levels(data$pocgluocse50andsymptoms_1___5.factor)=c("Unchecked","Checked")
levels(data$pocglucose12050nosyx___1.factor)=c("Unchecked","Checked")
levels(data$pocglucose12050nosyx___2.factor)=c("Unchecked","Checked")
levels(data$hypoglycemia_symptoms_yesno_2.factor)=c("Yes","No")
levels(data$protocol_continued_70_51___1.factor)=c("Unchecked","Checked")
levels(data$protocol_continued_70_51___2.factor)=c("Unchecked","Checked")
levels(data$protocol_continued_70_52_sym_2___1.factor)=c("Unchecked","Checked")
levels(data$protocol_continued_70_52_sym_2___2.factor)=c("Unchecked","Checked")
levels(data$pocglucose12050nosyx_2___1.factor)=c("Unchecked","Checked")
levels(data$pocglucose12050nosyx_2___2.factor)=c("Unchecked","Checked")
levels(data$pocgluocse50andsymptoms_2___1.factor)=c("Unchecked","Checked")
levels(data$pocgluocse50andsymptoms_2___2.factor)=c("Unchecked","Checked")
levels(data$pocgluocse50andsymptoms_2___3.factor)=c("Unchecked","Checked")
levels(data$pocgluocse50andsymptoms_2___4.factor)=c("Unchecked","Checked")
levels(data$pocgluocse50andsymptoms_2___5.factor)=c("Unchecked","Checked")
levels(data$hypoglycemia_symptoms_yesno_3.factor)=c("Yes","No")
levels(data$protocol_continued_70_52___1.factor)=c("Unchecked","Checked")
levels(data$protocol_continued_70_52___2.factor)=c("Unchecked","Checked")
levels(data$protocol_continued_70_52_sym_3___1.factor)=c("Unchecked","Checked")
levels(data$protocol_continued_70_52_sym_3___2.factor)=c("Unchecked","Checked")
levels(data$pocglucose12050nosyx_3___1.factor)=c("Unchecked","Checked")
levels(data$pocglucose12050nosyx_3___2.factor)=c("Unchecked","Checked")
levels(data$pocgluocse50andsymptoms_3___1.factor)=c("Unchecked","Checked")
levels(data$pocgluocse50andsymptoms_3___2.factor)=c("Unchecked","Checked")
levels(data$pocgluocse50andsymptoms_3___3.factor)=c("Unchecked","Checked")
levels(data$pocgluocse50andsymptoms_3___4.factor)=c("Unchecked","Checked")
levels(data$pocgluocse50andsymptoms_3___5.factor)=c("Unchecked","Checked")
levels(data$random_hypoglycemia_ogtt.factor)=c("Yes","No")
levels(data$dischargepoc70.factor)=c("IV removed","subject discharged")
levels(data$dischargepocless70___1.factor)=c("Unchecked","Checked")
levels(data$dischargepocless70___2.factor)=c("Unchecked","Checked")
levels(data$dischargepocless70___3.factor)=c("Unchecked","Checked")
levels(data$visit_completed.factor)=c("Yes","No")
levels(data$ogtt_documentation_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$rando_hypo_symp_yn.factor)=c("Yes","No")
levels(data$random_hypoglycemia_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$spec_forms_age_rando.factor)=c("Ages 6-12.99","Ages 13-17.99","Ages 18+")
levels(data$shaky_rando_p.factor)=c("Yes","No")
levels(data$fast_heart_rando_p.factor)=c("Yes","No")
levels(data$sweaty_rando_p.factor)=c("Yes","No")
levels(data$tired_not_sleep_rando_p.factor)=c("Yes","No")
levels(data$hungry_rando_p.factor)=c("Yes","No")
levels(data$grumpy_unknown_p.factor)=c("Yes","No")
levels(data$shaky_rando_t.factor)=c("Yes","No")
levels(data$fast_heart_rando_t.factor)=c("Yes","No")
levels(data$sweat_rando_t.factor)=c("Yes","No")
levels(data$tired_not_slep_rando_t.factor)=c("Yes","No")
levels(data$hunger_rando_t.factor)=c("Yes","No")
levels(data$grumpy_unknown_rando_t.factor)=c("Yes","No")
levels(data$heart_pound_rando_t.factor)=c("0","1","2","3","4","5","6")
levels(data$shaky_trem_rando_t.factor)=c("0","1","2","3","4","5","6")
levels(data$nerv_anx_rando_t.factor)=c("0","1","2","3","4","5","6")
levels(data$sweaty_rando_t.factor)=c("0","1","2","3","4","5","6")
levels(data$hungry_rando_t.factor)=c("0","1","2","3","4","5","6")
levels(data$tingling_rando_t.factor)=c("0","1","2","3","4","5","6")
levels(data$diff_think_rando_t.factor)=c("0","1","2","3","4","5","6")
levels(data$tired_drowsy_rando_t.factor)=c("0","1","2","3","4","5","6")
levels(data$weak_rando_t.factor)=c("0","1","2","3","4","5","6")
levels(data$warm_rando_t.factor)=c("0","1","2","3","4","5","6")
levels(data$faint_rando_t.factor)=c("0","1","2","3","4","5","6")
levels(data$dizzy_rando_t.factor)=c("0","1","2","3","4","5","6")
levels(data$heart_pound_rando_a.factor)=c("0","1","2","3","4","5","6")
levels(data$shaky_trem_rando_a.factor)=c("0","1","2","3","4","5","6")
levels(data$nerv_anx_rando_a.factor)=c("0","1","2","3","4","5","6")
levels(data$sweat_rando_a.factor)=c("0","1","2","3","4","5","6")
levels(data$hungry_rando_a.factor)=c("0","1","2","3","4","5","6")
levels(data$tingling_rando_a.factor)=c("0","1","2","3","4","5","6")
levels(data$diff_think_rando_a.factor)=c("0","1","2","3","4","5","6")
levels(data$tired_drowsy_rando_a.factor)=c("0","1","2","3","4","5","6")
levels(data$weak_rando_a.factor)=c("0","1","2","3","4","5","6")
levels(data$warm_rando_a.factor)=c("0","1","2","3","4","5","6")
levels(data$faint_rando_a.factor)=c("0","1","2","3","4","5","6")
levels(data$dizzy_rando_a.factor)=c("0","1","2","3","4","5","6")
levels(data$random_hypoglycemia_questionnaires_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$heart_pounding_baseline.factor)=c("0 (No Symptoms)","1","2","3","4","5","6 (Severe symptoms)")
levels(data$shaky_tremulous_baseline.factor)=c("0 (No Symptoms)","1","2","3","4","5","6 (Severe symptoms)")
levels(data$nervous_anxious_baseline.factor)=c("0 (No Symptoms)","1","2","3","4","5","6 (Severe symptoms)")
levels(data$sweaty_baseline.factor)=c("0 (No Symptoms)","1","2","3","4","5","6 (Severe symptoms)")
levels(data$hungry_baseline.factor)=c("0 (No Symptoms)","1","2","3","4","5","6 (Severe symptoms)")
levels(data$tingling_baseline.factor)=c("0 (No Symptoms)","1","2","3","4","5","6 (Severe symptoms)")
levels(data$diff_thinking_baseline.factor)=c("0 (No Symptoms)","1","2","3","4","5","6 (Severe symptoms)")
levels(data$tired_drowsy_baseline.factor)=c("0 (No Symptoms)","1","2","3","4","5","6 (Severe symptoms)")
levels(data$weak_baseline.factor)=c("0 (No Symptoms)","1","2","3","4","5","6 (Severe symptoms)")
levels(data$warm_baseline.factor)=c("0 (No Symptoms)","1","2","3","4","5","6 (Severe symptoms)")
levels(data$faint_baseline.factor)=c("0 (No Symptoms)","1","2","3","4","5","6 (Severe symptoms)")
levels(data$dizzy_baseline.factor)=c("0 (No Symptoms)","1","2","3","4","5","6 (Severe symptoms)")
levels(data$heart_pounding_120.factor)=c("0 (No Symptoms)","1","2","3","4","5","6 (Severe symptoms)")
levels(data$shaky_tremulous_120.factor)=c("0 (No Symptoms)","1","2","3","4","5","6 (Severe symptoms)")
levels(data$nervous_anxious_120.factor)=c("0 (No Symptoms)","1","2","3","4","5","6 (Severe symptoms)")
levels(data$sweaty_120.factor)=c("0 (No Symptoms)","1","2","3","4","5","6 (Severe symptoms)")
levels(data$hungry_120.factor)=c("0 (No Symptoms)","1","2","3","4","5","6 (Severe symptoms)")
levels(data$tingling_120.factor)=c("0 (No Symptoms)","1","2","3","4","5","6 (Severe symptoms)")
levels(data$diff_thinking_120.factor)=c("0 (No Symptoms)","1","2","3","4","5","6 (Severe symptoms)")
levels(data$tired_drowsy_120.factor)=c("0 (No Symptoms)","1","2","3","4","5","6 (Severe symptoms)")
levels(data$weak_120.factor)=c("0 (No Symptoms)","1","2","3","4","5","6 (Severe symptoms)")
levels(data$warm_120.factor)=c("0 (No Symptoms)","1","2","3","4","5","6 (Severe symptoms)")
levels(data$faint_120.factor)=c("0 (No Symptoms)","1","2","3","4","5","6 (Severe symptoms)")
levels(data$dizzy_120.factor)=c("0 (No Symptoms)","1","2","3","4","5","6 (Severe symptoms)")
levels(data$heart_pounding_150.factor)=c("0 (No Symptoms)","1","2","3","4","5","6 (Severe symptoms)")
levels(data$shaky_tremulous_150.factor)=c("0 (No Symptoms)","1","2","3","4","5","6 (Severe symptoms)")
levels(data$nervous_anxious_150.factor)=c("0 (No Symptoms)","1","2","3","4","5","6 (Severe symptoms)")
levels(data$sweaty_150.factor)=c("0 (No Symptoms)","1","2","3","4","5","6 (Severe symptoms)")
levels(data$hungry_150.factor)=c("0 (No Symptoms)","1","2","3","4","5","6 (Severe symptoms)")
levels(data$tingling_150.factor)=c("0 (No Symptoms)","1","2","3","4","5","6 (Severe symptoms)")
levels(data$diff_thinking_150.factor)=c("0 (No Symptoms)","1","2","3","4","5","6 (Severe symptoms)")
levels(data$tired_drowsy_150.factor)=c("0 (No Symptoms)","1","2","3","4","5","6 (Severe symptoms)")
levels(data$weak_150.factor)=c("0 (No Symptoms)","1","2","3","4","5","6 (Severe symptoms)")
levels(data$warm_150.factor)=c("0 (No Symptoms)","1","2","3","4","5","6 (Severe symptoms)")
levels(data$faint_150.factor)=c("0 (No Symptoms)","1","2","3","4","5","6 (Severe symptoms)")
levels(data$dizzy_150.factor)=c("0 (No Symptoms)","1","2","3","4","5","6 (Severe symptoms)")
levels(data$heart_pounding_180.factor)=c("0 (No Symptoms)","1","2","3","4","5","6 (Severe symptoms)")
levels(data$shaky_tremulous_180.factor)=c("0 (No Symptoms)","1","2","3","4","5","6 (Severe symptoms)")
levels(data$nervous_anxious_180.factor)=c("0 (No Symptoms)","1","2","3","4","5","6 (Severe symptoms)")
levels(data$sweaty_180.factor)=c("0 (No Symptoms)","1","2","3","4","5","6 (Severe symptoms)")
levels(data$hungry_180.factor)=c("0 (No Symptoms)","1","2","3","4","5","6 (Severe symptoms)")
levels(data$tingling_180.factor)=c("0 (No Symptoms)","1","2","3","4","5","6 (Severe symptoms)")
levels(data$diff_thinking_180.factor)=c("0 (No Symptoms)","1","2","3","4","5","6 (Severe symptoms)")
levels(data$tired_drowsy_180.factor)=c("0 (No Symptoms)","1","2","3","4","5","6 (Severe symptoms)")
levels(data$weak_180.factor)=c("0 (No Symptoms)","1","2","3","4","5","6 (Severe symptoms)")
levels(data$warm_180.factor)=c("0 (No Symptoms)","1","2","3","4","5","6 (Severe symptoms)")
levels(data$faint_180.factor)=c("0 (No Symptoms)","1","2","3","4","5","6 (Severe symptoms)")
levels(data$dizzy_180.factor)=c("0 (No Symptoms)","1","2","3","4","5","6 (Severe symptoms)")
levels(data$ogtt_hypoglycemia_questionnaires_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$shaking_peds_base.factor)=c("Yes","No")
levels(data$fast_heart_peds_base.factor)=c("Yes","No")
levels(data$sweating_peds_base.factor)=c("Yes","No")
levels(data$weak_peds_base.factor)=c("Yes","No")
levels(data$hunger_peds_base.factor)=c("Yes","No")
levels(data$irritable_peds_base.factor)=c("Yes","No")
levels(data$shaking_peds_120.factor)=c("Yes","No")
levels(data$fast_heart_peds_120.factor)=c("Yes","No")
levels(data$sweating_peds_120.factor)=c("Yes","No")
levels(data$weak_peds_120.factor)=c("Yes","No")
levels(data$hunger_peds_120.factor)=c("Yes","No")
levels(data$irritable_peds_120.factor)=c("Yes","No")
levels(data$shaking_peds_150.factor)=c("Yes","No")
levels(data$fast_heart_peds_150.factor)=c("Yes","No")
levels(data$sweating_peds_150.factor)=c("Yes","No")
levels(data$weak_peds_150.factor)=c("Yes","No")
levels(data$hunger_peds_150.factor)=c("Yes","No")
levels(data$irritable_peds_150.factor)=c("Yes","No")
levels(data$shaking_peds_180.factor)=c("Yes","No")
levels(data$fast_heart_peds_180.factor)=c("Yes","No")
levels(data$sweating_peds_180.factor)=c("Yes","No")
levels(data$weak_peds_180.factor)=c("Yes","No")
levels(data$hunger_peds_180.factor)=c("Yes","No")
levels(data$irritable_peds_180.factor)=c("Yes","No")
levels(data$ogtt_hypoglycemia_questionnaire_age_618_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$questionnaire_filled_out.factor)=c("Yes","No")
levels(data$home_hypo_symptoms_yn.factor)=c("Yes","No")
levels(data$i_feel___0.factor)=c("Unchecked","Checked")
levels(data$i_feel___1.factor)=c("Unchecked","Checked")
levels(data$i_feel___2.factor)=c("Unchecked","Checked")
levels(data$i_feel___3.factor)=c("Unchecked","Checked")
levels(data$i_feel___4.factor)=c("Unchecked","Checked")
levels(data$i_feel___5.factor)=c("Unchecked","Checked")
levels(data$i_feel___6.factor)=c("Unchecked","Checked")
levels(data$i_feel___7.factor)=c("Unchecked","Checked")
levels(data$i_feel___8.factor)=c("Unchecked","Checked")
levels(data$i_feel___9.factor)=c("Unchecked","Checked")
levels(data$i_feel___10.factor)=c("Unchecked","Checked")
levels(data$i_feel___11.factor)=c("Unchecked","Checked")
levels(data$it_was_recognized_by.factor)=c("Self","Someone else")
levels(data$i_needed___0.factor)=c("Unchecked","Checked")
levels(data$i_needed___1.factor)=c("Unchecked","Checked")
levels(data$i_needed___2.factor)=c("Unchecked","Checked")
levels(data$juice_or_food.factor)=c("Yes","No","N/A")
levels(data$another_section_1.factor)=c("Yes","No")
levels(data$i_feel_2___0.factor)=c("Unchecked","Checked")
levels(data$i_feel_2___1.factor)=c("Unchecked","Checked")
levels(data$i_feel_2___2.factor)=c("Unchecked","Checked")
levels(data$i_feel_2___3.factor)=c("Unchecked","Checked")
levels(data$i_feel_2___4.factor)=c("Unchecked","Checked")
levels(data$i_feel_2___5.factor)=c("Unchecked","Checked")
levels(data$i_feel_2___6.factor)=c("Unchecked","Checked")
levels(data$i_feel_2___7.factor)=c("Unchecked","Checked")
levels(data$i_feel_2___8.factor)=c("Unchecked","Checked")
levels(data$i_feel_2___9.factor)=c("Unchecked","Checked")
levels(data$i_feel_2___10.factor)=c("Unchecked","Checked")
levels(data$i_feel_2___11.factor)=c("Unchecked","Checked")
levels(data$it_was_recognized_by_2.factor)=c("Self","Someone else")
levels(data$i_needed_2___0.factor)=c("Unchecked","Checked")
levels(data$i_needed_2___1.factor)=c("Unchecked","Checked")
levels(data$i_needed_2___2.factor)=c("Unchecked","Checked")
levels(data$juice_or_food_2.factor)=c("Yes","No","N/A")
levels(data$another_section_2.factor)=c("Yes","No")
levels(data$i_feel_3___0.factor)=c("Unchecked","Checked")
levels(data$i_feel_3___1.factor)=c("Unchecked","Checked")
levels(data$i_feel_3___2.factor)=c("Unchecked","Checked")
levels(data$i_feel_3___3.factor)=c("Unchecked","Checked")
levels(data$i_feel_3___4.factor)=c("Unchecked","Checked")
levels(data$i_feel_3___5.factor)=c("Unchecked","Checked")
levels(data$i_feel_3___6.factor)=c("Unchecked","Checked")
levels(data$i_feel_3___7.factor)=c("Unchecked","Checked")
levels(data$i_feel_3___8.factor)=c("Unchecked","Checked")
levels(data$i_feel_3___9.factor)=c("Unchecked","Checked")
levels(data$i_feel_3___10.factor)=c("Unchecked","Checked")
levels(data$i_feel_3___11.factor)=c("Unchecked","Checked")
levels(data$it_was_recognized_by_3.factor)=c("Self","Someone else")
levels(data$i_needed_3___0.factor)=c("Unchecked","Checked")
levels(data$i_needed_3___1.factor)=c("Unchecked","Checked")
levels(data$i_needed_3___2.factor)=c("Unchecked","Checked")
levels(data$juice_or_food_3.factor)=c("Yes","No","N/A")
levels(data$another_section_3.factor)=c("Yes","No")
levels(data$i_feel_4___0.factor)=c("Unchecked","Checked")
levels(data$i_feel_4___1.factor)=c("Unchecked","Checked")
levels(data$i_feel_4___2.factor)=c("Unchecked","Checked")
levels(data$i_feel_4___3.factor)=c("Unchecked","Checked")
levels(data$i_feel_4___4.factor)=c("Unchecked","Checked")
levels(data$i_feel_4___5.factor)=c("Unchecked","Checked")
levels(data$i_feel_4___6.factor)=c("Unchecked","Checked")
levels(data$i_feel_4___7.factor)=c("Unchecked","Checked")
levels(data$i_feel_4___8.factor)=c("Unchecked","Checked")
levels(data$i_feel_4___9.factor)=c("Unchecked","Checked")
levels(data$i_feel_4___10.factor)=c("Unchecked","Checked")
levels(data$i_feel_4___11.factor)=c("Unchecked","Checked")
levels(data$it_was_recognized_by_4.factor)=c("Self","Someone else")
levels(data$i_needed_4___0.factor)=c("Unchecked","Checked")
levels(data$i_needed_4___1.factor)=c("Unchecked","Checked")
levels(data$i_needed_4___2.factor)=c("Unchecked","Checked")
levels(data$juice_or_food_4.factor)=c("Yes","No","N/A")
levels(data$another_section_4.factor)=c("Yes","No")
levels(data$i_feel_5___0.factor)=c("Unchecked","Checked")
levels(data$i_feel_5___1.factor)=c("Unchecked","Checked")
levels(data$i_feel_5___2.factor)=c("Unchecked","Checked")
levels(data$i_feel_5___3.factor)=c("Unchecked","Checked")
levels(data$i_feel_5___4.factor)=c("Unchecked","Checked")
levels(data$i_feel_5___5.factor)=c("Unchecked","Checked")
levels(data$i_feel_5___6.factor)=c("Unchecked","Checked")
levels(data$i_feel_5___7.factor)=c("Unchecked","Checked")
levels(data$i_feel_5___8.factor)=c("Unchecked","Checked")
levels(data$i_feel_5___9.factor)=c("Unchecked","Checked")
levels(data$i_feel_5___10.factor)=c("Unchecked","Checked")
levels(data$i_feel_5___11.factor)=c("Unchecked","Checked")
levels(data$it_was_recognized_by_5.factor)=c("Self","Someone else")
levels(data$i_needed_5___0.factor)=c("Unchecked","Checked")
levels(data$i_needed_5___1.factor)=c("Unchecked","Checked")
levels(data$i_needed_5___2.factor)=c("Unchecked","Checked")
levels(data$juice_or_food_5.factor)=c("Yes","No","N/A")
levels(data$another_section_5.factor)=c("Yes","No")
levels(data$i_feel_6___0.factor)=c("Unchecked","Checked")
levels(data$i_feel_6___1.factor)=c("Unchecked","Checked")
levels(data$i_feel_6___2.factor)=c("Unchecked","Checked")
levels(data$i_feel_6___3.factor)=c("Unchecked","Checked")
levels(data$i_feel_6___4.factor)=c("Unchecked","Checked")
levels(data$i_feel_6___5.factor)=c("Unchecked","Checked")
levels(data$i_feel_6___6.factor)=c("Unchecked","Checked")
levels(data$i_feel_6___7.factor)=c("Unchecked","Checked")
levels(data$i_feel_6___8.factor)=c("Unchecked","Checked")
levels(data$i_feel_6___9.factor)=c("Unchecked","Checked")
levels(data$i_feel_6___10.factor)=c("Unchecked","Checked")
levels(data$i_feel_6___11.factor)=c("Unchecked","Checked")
levels(data$it_was_recognized_by_6.factor)=c("Self","Someone else")
levels(data$i_needed_6___0.factor)=c("Unchecked","Checked")
levels(data$i_needed_6___1.factor)=c("Unchecked","Checked")
levels(data$i_needed_6___2.factor)=c("Unchecked","Checked")
levels(data$juice_or_food_6.factor)=c("Yes","No","N/A")
levels(data$another_section_6.factor)=c("Yes","No")
levels(data$i_feel_7___0.factor)=c("Unchecked","Checked")
levels(data$i_feel_7___1.factor)=c("Unchecked","Checked")
levels(data$i_feel_7___2.factor)=c("Unchecked","Checked")
levels(data$i_feel_7___3.factor)=c("Unchecked","Checked")
levels(data$i_feel_7___4.factor)=c("Unchecked","Checked")
levels(data$i_feel_7___5.factor)=c("Unchecked","Checked")
levels(data$i_feel_7___6.factor)=c("Unchecked","Checked")
levels(data$i_feel_7___7.factor)=c("Unchecked","Checked")
levels(data$i_feel_7___8.factor)=c("Unchecked","Checked")
levels(data$i_feel_7___9.factor)=c("Unchecked","Checked")
levels(data$i_feel_7___10.factor)=c("Unchecked","Checked")
levels(data$i_feel_7___11.factor)=c("Unchecked","Checked")
levels(data$it_was_recognized_by_7.factor)=c("Self","Someone else")
levels(data$i_needed_7___0.factor)=c("Unchecked","Checked")
levels(data$i_needed_7___1.factor)=c("Unchecked","Checked")
levels(data$i_needed_7___2.factor)=c("Unchecked","Checked")
levels(data$juice_or_food_7.factor)=c("Yes","No","N/A")
levels(data$another_section_7.factor)=c("Yes","No")
levels(data$i_feel_8___0.factor)=c("Unchecked","Checked")
levels(data$i_feel_8___1.factor)=c("Unchecked","Checked")
levels(data$i_feel_8___2.factor)=c("Unchecked","Checked")
levels(data$i_feel_8___3.factor)=c("Unchecked","Checked")
levels(data$i_feel_8___4.factor)=c("Unchecked","Checked")
levels(data$i_feel_8___5.factor)=c("Unchecked","Checked")
levels(data$i_feel_8___6.factor)=c("Unchecked","Checked")
levels(data$i_feel_8___7.factor)=c("Unchecked","Checked")
levels(data$i_feel_8___8.factor)=c("Unchecked","Checked")
levels(data$i_feel_8___9.factor)=c("Unchecked","Checked")
levels(data$i_feel_8___10.factor)=c("Unchecked","Checked")
levels(data$i_feel_8___11.factor)=c("Unchecked","Checked")
levels(data$it_was_recognized_by_8.factor)=c("Self","Someone else")
levels(data$i_needed_8___0.factor)=c("Unchecked","Checked")
levels(data$i_needed_8___1.factor)=c("Unchecked","Checked")
levels(data$i_needed_8___2.factor)=c("Unchecked","Checked")
levels(data$juice_or_food_8.factor)=c("Yes","No","N/A")
levels(data$athome_hypoglycemia_questionnaire_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$child_home_completed.factor)=c("Yes","No")
levels(data$child_home_hypo_symptoms.factor)=c("Yes","No")
levels(data$symptoms_child_hypo___0.factor)=c("Unchecked","Checked")
levels(data$symptoms_child_hypo___1.factor)=c("Unchecked","Checked")
levels(data$symptoms_child_hypo___2.factor)=c("Unchecked","Checked")
levels(data$symptoms_child_hypo___3.factor)=c("Unchecked","Checked")
levels(data$symptoms_child_hypo___4.factor)=c("Unchecked","Checked")
levels(data$symptoms_child_hypo___5.factor)=c("Unchecked","Checked")
levels(data$another_section_filled.factor)=c("Yes","No")
levels(data$symptoms_child_hypo_2___0.factor)=c("Unchecked","Checked")
levels(data$symptoms_child_hypo_2___1.factor)=c("Unchecked","Checked")
levels(data$symptoms_child_hypo_2___2.factor)=c("Unchecked","Checked")
levels(data$symptoms_child_hypo_2___3.factor)=c("Unchecked","Checked")
levels(data$symptoms_child_hypo_2___4.factor)=c("Unchecked","Checked")
levels(data$symptoms_child_hypo_2___5.factor)=c("Unchecked","Checked")
levels(data$third_section_filled_out.factor)=c("Yes","No")
levels(data$symptoms_child_hypo_3___0.factor)=c("Unchecked","Checked")
levels(data$symptoms_child_hypo_3___1.factor)=c("Unchecked","Checked")
levels(data$symptoms_child_hypo_3___2.factor)=c("Unchecked","Checked")
levels(data$symptoms_child_hypo_3___3.factor)=c("Unchecked","Checked")
levels(data$symptoms_child_hypo_3___4.factor)=c("Unchecked","Checked")
levels(data$symptoms_child_hypo_3___5.factor)=c("Unchecked","Checked")
levels(data$fourth_section_filled.factor)=c("Yes","No")
levels(data$symptoms_child_hypo_4___0.factor)=c("Unchecked","Checked")
levels(data$symptoms_child_hypo_4___1.factor)=c("Unchecked","Checked")
levels(data$symptoms_child_hypo_4___2.factor)=c("Unchecked","Checked")
levels(data$symptoms_child_hypo_4___3.factor)=c("Unchecked","Checked")
levels(data$symptoms_child_hypo_4___4.factor)=c("Unchecked","Checked")
levels(data$symptoms_child_hypo_4___5.factor)=c("Unchecked","Checked")
levels(data$fifth_section_filled.factor)=c("Yes","No")
levels(data$symptoms_child_hypo_5___0.factor)=c("Unchecked","Checked")
levels(data$symptoms_child_hypo_5___1.factor)=c("Unchecked","Checked")
levels(data$symptoms_child_hypo_5___2.factor)=c("Unchecked","Checked")
levels(data$symptoms_child_hypo_5___3.factor)=c("Unchecked","Checked")
levels(data$symptoms_child_hypo_5___4.factor)=c("Unchecked","Checked")
levels(data$symptoms_child_hypo_5___5.factor)=c("Unchecked","Checked")
levels(data$sixth_section_filled.factor)=c("Yes","No")
levels(data$symptoms_child_hypo_6___0.factor)=c("Unchecked","Checked")
levels(data$symptoms_child_hypo_6___1.factor)=c("Unchecked","Checked")
levels(data$symptoms_child_hypo_6___2.factor)=c("Unchecked","Checked")
levels(data$symptoms_child_hypo_6___3.factor)=c("Unchecked","Checked")
levels(data$symptoms_child_hypo_6___4.factor)=c("Unchecked","Checked")
levels(data$symptoms_child_hypo_6___5.factor)=c("Unchecked","Checked")
levels(data$seventh_section_filled.factor)=c("Yes","No")
levels(data$symptoms_child_hypo_7___0.factor)=c("Unchecked","Checked")
levels(data$symptoms_child_hypo_7___1.factor)=c("Unchecked","Checked")
levels(data$symptoms_child_hypo_7___2.factor)=c("Unchecked","Checked")
levels(data$symptoms_child_hypo_7___3.factor)=c("Unchecked","Checked")
levels(data$symptoms_child_hypo_7___4.factor)=c("Unchecked","Checked")
levels(data$symptoms_child_hypo_7___5.factor)=c("Unchecked","Checked")
levels(data$eighth_section_filled.factor)=c("Yes","No")
levels(data$symptoms_child_hypo_8___0.factor)=c("Unchecked","Checked")
levels(data$symptoms_child_hypo_8___1.factor)=c("Unchecked","Checked")
levels(data$symptoms_child_hypo_8___2.factor)=c("Unchecked","Checked")
levels(data$symptoms_child_hypo_8___3.factor)=c("Unchecked","Checked")
levels(data$symptoms_child_hypo_8___4.factor)=c("Unchecked","Checked")
levels(data$symptoms_child_hypo_8___5.factor)=c("Unchecked","Checked")
levels(data$athome_child_hypoglycemia_questionnaire_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$pft_yes_no.factor)=c("Yes","No")
levels(data$home_pft_yn.factor)=c("Yes","No")
levels(data$pulmonary_function_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$ae_occur.factor)=c("Yes","No")
levels(data$ae_severity.factor)=c("mild","moderate","severe")
levels(data$action_taken.factor)=c("none","discontinued","interrupted")
levels(data$ae_outcome.factor)=c("recovered w/o sequelae","recovered with sequelae","ongoing","fatal","unknown")
levels(data$ae_relation_to_study.factor)=c("Definite","Probable","Possible","not likely","unrelated")
levels(data$ae_serious.factor)=c("yes","no")
levels(data$adverse_event_log_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$y_n_protocol_dev.factor)=c("Yes","No")
levels(data$deviation_type.factor)=c("Inclusion/Exclusion","Informed consent/assent issues","Out-of-window procedure/test","Sample collection missed/collected in error/lost","Use of prohibited medications","Glucola administration","Hypoglycemia monitoring","Tanner staging not completed","Pregnancy test not completed","Missed hypoglycemia questionnaire(s)","Other")
levels(data$timing_of_deviation.factor)=c("Deviation occurred prior treatment","Deviation occurred during treatment","Deviation occurred after treatment")
levels(data$dev_id_by.factor)=c("Principal Investigator","Study Coordinator","Study Staff","Nursing staff","Coordinating Center","Other")
levels(data$deviation_result_ae.factor)=c("Yes","No")
levels(data$second_protocol_dev.factor)=c("Yes","No")
levels(data$deviation_type_2.factor)=c("Inclusion/Exclusion","No Informed Consent/Assent","Out-of-window procedure/test","Sample collection missed/collected in error/lost","Use of prohibited medications","Glucola administration","Hypoglycemia monitoring","Tanner staging not completed","Pregnancy test not completed","Missed hypoglycemia questionnaire(s)","Other")
levels(data$timing_of_deviation_2.factor)=c("Deviation occurred prior treatment","Deviation occurred during treatment","Deviation occurred after treatment")
levels(data$dev_id_by_2.factor)=c("Principal Investigator","Study Coordinator","Study Staff","Nursing staff","Other")
levels(data$deviation_result_ae_2.factor)=c("Yes","No")
levels(data$third_protocol_dev.factor)=c("Yes","No")
levels(data$deviation_type_3.factor)=c("Inclusion/Exclusion","No Informed Consent/Assent","Out-of-window procedure/test","Sample collection missed/collected in error/lost","Use of prohibited medications","Glucola administration","Hypoglycemia monitoring","Tanner staging not completed","Pregnancy test not completed","Missed hypoglycemia questionnaire(s)","Other")
levels(data$timing_of_deviation_3.factor)=c("Deviation occurred prior treatment","Deviation occurred during treatment","Deviation occurred after treatment")
levels(data$dev_id_by_3.factor)=c("Principal Investigator","Study Coordinator","Study Staff","Nursing staff","Other")
levels(data$deviation_result_ae_3.factor)=c("Yes","No")
levels(data$fourth_protocol_dev.factor)=c("Yes","No")
levels(data$deviation_type_4.factor)=c("Inclusion/Exclusion","No Informed Consent/Assent","Out-of-window procedure/test","Sample collection missed/collected in error/lost","Use of prohibited medications","Glucola administration","Hypoglycemia monitoring","Tanner staging not completed","Pregnancy test not completed","Missed hypoglycemia questionnaire(s)","Other")
levels(data$timing_of_deviation_4.factor)=c("Deviation occurred prior treatment","Deviation occurred during treatment","Deviation occurred after treatment")
levels(data$dev_id_by_4.factor)=c("Principal Investigator","Study Coordinator","Study Staff","Nursing staff","Other")
levels(data$deviation_result_ae_4.factor)=c("Yes","No")
levels(data$protocol_deviation_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$agreed_to_cgm.factor)=c("Yes","No")
levels(data$cgm_placement_site.factor)=c("right arm","left arm")
levels(data$cgm_instructions___1.factor)=c("Unchecked","Checked")
levels(data$cgm_instructions___2.factor)=c("Unchecked","Checked")
levels(data$cgm_instructions___3.factor)=c("Unchecked","Checked")
levels(data$replace_cgm.factor)=c("Yes","No")
levels(data$cgm_data_success_failure.factor)=c("Success","Failure")
levels(data$cgm_gaps_filled_in.factor)=c("Yes","No")
levels(data$cgm_data_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$patient_undergo_dexa.factor)=c("Yes","No")
levels(data$make_of_dxa_machine.factor)=c("hologic","Lunar")
levels(data$dxa_data_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$dxa_zscore_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$glucose_ran_lab.factor)=c("YSI","Yalings Lab")
levels(data$sample_issues.factor)=c("Yes","No")
levels(data$sample_obtained_0_min.factor)=c("Yes","No")
levels(data$sample_obtained_10_min.factor)=c("Yes","No")
levels(data$sample_obtained_30_min.factor)=c("Yes","No")
levels(data$sample_obtained_60_min.factor)=c("Yes","No")
levels(data$sample_obtained_90_min.factor)=c("Yes","No")
levels(data$sample_obtained_120_min.factor)=c("Yes","No")
levels(data$sample_obtained_150_min.factor)=c("Yes","No")
levels(data$sample_obtained_180_min.factor)=c("Yes","No")
levels(data$ogtt_patient_results_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$did_the_participant_redo_t.factor)=c("Yes","No")
levels(data$participant_withdrawn_v0.factor)=c("Yes- permanently from the study","Yes- Temporarily from the study","No")
levels(data$sex_v0.factor)=c("Male","Female")
levels(data$ethnicity_v0.factor)=c("Hispanic/Latino","Not Hispanic/Latino","N/A")
levels(data$origin_race_v0.factor)=c("White (Europe, Middle East, North Africa)","Black or African American (Africa)","American Indian or Alaska Native (N. S. & Central America)","Asian (Far East, Southeast Asia, Indian)","Native Hawaiian or Other Pacific Islander (Hawaii, Guam, Samoa, Pacific Islands)","Declined")
levels(data$cftr_genotype_available_in_v0.factor)=c("Yes both chromosomes","only one gene is known, other is unknown, but listed as true CF","Been completed and noted as diagnostic but the actual genotype is not available in medical record","no genotype avaliable in any form")
levels(data$cftr_mutation_1_v0.factor)=c("F508del","Other")
levels(data$type_of_mutation_1_v0.factor)=c("Minimal Function (class 1 & 2)","Residual Function (class 3, 4, 5)")
levels(data$cftr_mutation_2_v0.factor)=c("F508del","Other","Unknown")
levels(data$type_of_mutation_2_v0.factor)=c("Minimal (class 1 & 2)","Residual (class 3, 4, 5)")
levels(data$mutation_category_v0.factor)=c("Severe (minimal & minimal)","Residual (minimal & residual)")
levels(data$new_born_screen_v0.factor)=c("Yes","No","Unavaliable")
levels(data$sweat_chloride_test_v0.factor)=c("Yes","No")
levels(data$pancreatic_status_v0.factor)=c("Sufficient","Insufficient","Unknown")
levels(data$most_recent_sputum_culture_v0___1.factor)=c("Unchecked","Checked")
levels(data$most_recent_sputum_culture_v0___2.factor)=c("Unchecked","Checked")
levels(data$most_recent_sputum_culture_v0___3.factor)=c("Unchecked","Checked")
levels(data$most_recent_sputum_culture_v0___4.factor)=c("Unchecked","Checked")
levels(data$most_recent_sputum_culture_v0___5.factor)=c("Unchecked","Checked")
levels(data$most_recent_sputum_culture_v0___6.factor)=c("Unchecked","Checked")
levels(data$most_recent_sputum_culture_v0___7.factor)=c("Unchecked","Checked")
levels(data$most_recent_sputum_culture_v0___8.factor)=c("Unchecked","Checked")
levels(data$sputum_culture_year_v0___1.factor)=c("Unchecked","Checked")
levels(data$sputum_culture_year_v0___2.factor)=c("Unchecked","Checked")
levels(data$sputum_culture_year_v0___3.factor)=c("Unchecked","Checked")
levels(data$sputum_culture_year_v0___4.factor)=c("Unchecked","Checked")
levels(data$sputum_culture_year_v0___5.factor)=c("Unchecked","Checked")
levels(data$sputum_culture_year_v0___6.factor)=c("Unchecked","Checked")
levels(data$sputum_culture_year_v0___7.factor)=c("Unchecked","Checked")
levels(data$sputum_culture_year_v0___8.factor)=c("Unchecked","Checked")
levels(data$liver_disease_v0.factor)=c("Yes","No")
levels(data$corrector_yes_no_v0.factor)=c("Yes","No")
levels(data$corrector_v0___1.factor)=c("Unchecked","Checked")
levels(data$corrector_v0___2.factor)=c("Unchecked","Checked")
levels(data$corrector_v0___3.factor)=c("Unchecked","Checked")
levels(data$corrector_v0___4.factor)=c("Unchecked","Checked")
levels(data$corrector_v0___5.factor)=c("Unchecked","Checked")
levels(data$family_history_diabetes_v0.factor)=c("Yes","No")
levels(data$relative_with_diabetes_v0___1.factor)=c("Unchecked","Checked")
levels(data$relative_with_diabetes_v0___2.factor)=c("Unchecked","Checked")
levels(data$relative_with_diabetes_v0___3.factor)=c("Unchecked","Checked")
levels(data$relative_with_diabetes_v0___4.factor)=c("Unchecked","Checked")
levels(data$diabetes_hisotry_type_v0___1.factor)=c("Unchecked","Checked")
levels(data$diabetes_hisotry_type_v0___2.factor)=c("Unchecked","Checked")
levels(data$diabetes_hisotry_type_v0___3.factor)=c("Unchecked","Checked")
levels(data$diabetes_hisotry_type_v0___4.factor)=c("Unchecked","Checked")
levels(data$demographics_and_cf_history_repeat_visit_1_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$antibiotics_v0___1.factor)=c("Unchecked","Checked")
levels(data$antibiotics_v0___2.factor)=c("Unchecked","Checked")
levels(data$antibiotics_v0___3.factor)=c("Unchecked","Checked")
levels(data$antibiotics_v0___4.factor)=c("Unchecked","Checked")
levels(data$antibiotics_v0___5.factor)=c("Unchecked","Checked")
levels(data$inhaled_steroids_v0.factor)=c("Yes","No")
levels(data$patient_using_flonase_v0.factor)=c("Yes","No")
levels(data$inhaled_beta_agonist_v0.factor)=c("Yes","No")
levels(data$pancreatic_enzyme_therapy_v0.factor)=c("Yes","No","Suppose to be, but doesnt take")
levels(data$systemic_steroid_therapy_v0___1.factor)=c("Unchecked","Checked")
levels(data$systemic_steroid_therapy_v0___2.factor)=c("Unchecked","Checked")
levels(data$systemic_steroid_therapy_v0___3.factor)=c("Unchecked","Checked")
levels(data$systemic_steroid_therapy_v0___4.factor)=c("Unchecked","Checked")
levels(data$systemic_steroid_therapy_v0___5.factor)=c("Unchecked","Checked")
levels(data$systemic_steroid_therapy_v0___6.factor)=c("Unchecked","Checked")
levels(data$cf_multivitamins_aquadeks_v0.factor)=c("Yes","No")
levels(data$vitamin_d_in_addition_to_m_v0.factor)=c("Yes","No","Only in multivitamin")
levels(data$high_dose_ibuprofen_v0.factor)=c("Daily","As needed","None")
levels(data$inhaled_antibiotics_v0.factor)=c("Yes","more than 1","No")
levels(data$ursodiol_v0.factor)=c("Yes","No")
levels(data$gen_1_atyp_antipsych_v0___0.factor)=c("Unchecked","Checked")
levels(data$gen_1_atyp_antipsych_v0___1.factor)=c("Unchecked","Checked")
levels(data$gen_1_atyp_antipsych_v0___2.factor)=c("Unchecked","Checked")
levels(data$gen_1_atyp_antipsych_v0___3.factor)=c("Unchecked","Checked")
levels(data$gen_1_atyp_antipsych_v0___4.factor)=c("Unchecked","Checked")
levels(data$gen_1_atyp_antipsych_v0___5.factor)=c("Unchecked","Checked")
levels(data$gen_1_atyp_antipsych_v0___6.factor)=c("Unchecked","Checked")
levels(data$gen_1_atyp_antipsych_v0___7.factor)=c("Unchecked","Checked")
levels(data$gen_1_atyp_antipsych_v0___8.factor)=c("Unchecked","Checked")
levels(data$gen_1_atyp_antipsych_v0___9.factor)=c("Unchecked","Checked")
levels(data$gen_2_atyp_antipsych_v0___0.factor)=c("Unchecked","Checked")
levels(data$gen_2_atyp_antipsych_v0___1.factor)=c("Unchecked","Checked")
levels(data$gen_2_atyp_antipsych_v0___2.factor)=c("Unchecked","Checked")
levels(data$gen_2_atyp_antipsych_v0___3.factor)=c("Unchecked","Checked")
levels(data$gen_2_atyp_antipsych_v0___4.factor)=c("Unchecked","Checked")
levels(data$gen_2_atyp_antipsych_v0___5.factor)=c("Unchecked","Checked")
levels(data$gen_2_atyp_antipsych_v0___6.factor)=c("Unchecked","Checked")
levels(data$gen_2_atyp_antipsych_v0___7.factor)=c("Unchecked","Checked")
levels(data$gen_2_atyp_antipsych_v0___8.factor)=c("Unchecked","Checked")
levels(data$gen_2_atyp_antipsych_v0___9.factor)=c("Unchecked","Checked")
levels(data$gen_2_atyp_antipsych_v0___10.factor)=c("Unchecked","Checked")
levels(data$gen_2_atyp_antipsych_v0___11.factor)=c("Unchecked","Checked")
levels(data$gen_2_atyp_antipsych_v0___12.factor)=c("Unchecked","Checked")
levels(data$gen_2_atyp_antipsych_v0___13.factor)=c("Unchecked","Checked")
levels(data$current_medications_repeat_visit_1_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$cf_yes_no_inclusion_v0.factor)=c("Yes","No")
levels(data$age_6_yes_no_inclusion_v0.factor)=c("Yes","No")
levels(data$clin_stable_yes_no_inclusion_v0.factor)=c("Yes","No")
levels(data$other_diabetes_yes_no_v0.factor)=c("Yes","No")
levels(data$organ_tx_yes_no_v0.factor)=c("Yes","No")
levels(data$cfrd_diabetes_med_yes_no_v0.factor)=c("Yes","No")
levels(data$pulm_ex_last3months_v0.factor)=c("Yes","No")
levels(data$corrector_yes_no_exclusion_v0.factor)=c("Yes","No")
levels(data$consent_completed_v0.factor)=c("Yes","No")
levels(data$upt_v0.factor)=c("subject is not female","subject is pre-pubertal","subject is post-menopausal","pregnancy test is negative","pregnancy test is positive")
levels(data$inclusionexclusion_repeat_visit_1_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$fast_hours_v0.factor)=c("Yes","No")
levels(data$tanner_stage_v0.factor)=c("tanner 1 (no puberty/prepubertal)","tanner 2","tanner 3","tanner 4","tanner 5 (normal adult/fully mature)","subject refused","unknown","in puberty but not fully mature (pick this if staging uncertain, but clearly pubertal)")
levels(data$tanner_female_pubic_v0.factor)=c("Tanner 1 (no puberty/pre-pubertal)","Tanner 2","Tanner 3","Tanner 4","Tanner 5 (normal adult/fully mature)","Unknown/declined")
levels(data$tanner_breast_dev_v0.factor)=c("Tanner 1 (no puberty/pre-pubertal)","Tanner 2","Tanner 3","Tanner 4","Tanner 5 (normal adult/fully mature)","Unknown/declined")
levels(data$tanner_male_pubic_v0.factor)=c("Tanner 1 (no puberty/pre-pubertal)","Tanner 2","Tanner 3","Tanner 4","Tanner 5 (normal adult/fully mature)","Unknown/declined")
levels(data$tanner_testicular_vol_v0.factor)=c("Tanner 1 (1-3mL)","Tanner 2 (4-6 mL)","Tanner 3 (8-10 mL)","Tanner 4 (12-15mL)","Tanner 5 (20-25 mL)","Unknown/declined")
levels(data$type_of_temperature_v0.factor)=c("Tympanic","Oral","Temporal")
levels(data$numbing_cream_v0___1.factor)=c("Unchecked","Checked")
levels(data$numbing_cream_v0___2.factor)=c("Unchecked","Checked")
levels(data$hypoglycemia_symptoms_yesno_v0.factor)=c("Yes","No")
levels(data$protocol_continued_70_50_v0___1.factor)=c("Unchecked","Checked")
levels(data$protocol_continued_70_50_v0___2.factor)=c("Unchecked","Checked")
levels(data$protocol_continued_70_52_sym_v0___1.factor)=c("Unchecked","Checked")
levels(data$protocol_continued_70_52_sym_v0___2.factor)=c("Unchecked","Checked")
levels(data$pocgluocse50andsymptoms_1_v0___1.factor)=c("Unchecked","Checked")
levels(data$pocgluocse50andsymptoms_1_v0___2.factor)=c("Unchecked","Checked")
levels(data$pocgluocse50andsymptoms_1_v0___3.factor)=c("Unchecked","Checked")
levels(data$pocgluocse50andsymptoms_1_v0___4.factor)=c("Unchecked","Checked")
levels(data$pocgluocse50andsymptoms_1_v0___5.factor)=c("Unchecked","Checked")
levels(data$pocglucose12050nosyx_v0___1.factor)=c("Unchecked","Checked")
levels(data$pocglucose12050nosyx_v0___2.factor)=c("Unchecked","Checked")
levels(data$hypoglycemia_symptoms_yesno_2_v0.factor)=c("Yes","No")
levels(data$protocol_continued_70_51_v0___1.factor)=c("Unchecked","Checked")
levels(data$protocol_continued_70_51_v0___2.factor)=c("Unchecked","Checked")
levels(data$protocol_continued_70_52_sym_2_v0___1.factor)=c("Unchecked","Checked")
levels(data$protocol_continued_70_52_sym_2_v0___2.factor)=c("Unchecked","Checked")
levels(data$pocglucose12050nosyx_2_v0___1.factor)=c("Unchecked","Checked")
levels(data$pocglucose12050nosyx_2_v0___2.factor)=c("Unchecked","Checked")
levels(data$pocgluocse50andsymptoms_2_v0___1.factor)=c("Unchecked","Checked")
levels(data$pocgluocse50andsymptoms_2_v0___2.factor)=c("Unchecked","Checked")
levels(data$pocgluocse50andsymptoms_2_v0___3.factor)=c("Unchecked","Checked")
levels(data$pocgluocse50andsymptoms_2_v0___4.factor)=c("Unchecked","Checked")
levels(data$pocgluocse50andsymptoms_2_v0___5.factor)=c("Unchecked","Checked")
levels(data$hypoglycemia_symptoms_yesno_3_v0.factor)=c("Yes","No")
levels(data$protocol_continued_70_52_v0___1.factor)=c("Unchecked","Checked")
levels(data$protocol_continued_70_52_v0___2.factor)=c("Unchecked","Checked")
levels(data$protocol_continued_70_52_sym_3_v0___1.factor)=c("Unchecked","Checked")
levels(data$protocol_continued_70_52_sym_3_v0___2.factor)=c("Unchecked","Checked")
levels(data$pocglucose12050nosyx_3_v0___1.factor)=c("Unchecked","Checked")
levels(data$pocglucose12050nosyx_3_v0___2.factor)=c("Unchecked","Checked")
levels(data$pocgluocse50andsymptoms_3_v0___1.factor)=c("Unchecked","Checked")
levels(data$pocgluocse50andsymptoms_3_v0___2.factor)=c("Unchecked","Checked")
levels(data$pocgluocse50andsymptoms_3_v0___3.factor)=c("Unchecked","Checked")
levels(data$pocgluocse50andsymptoms_3_v0___4.factor)=c("Unchecked","Checked")
levels(data$pocgluocse50andsymptoms_3_v0___5.factor)=c("Unchecked","Checked")
levels(data$random_hypoglycemia_ogtt_v0.factor)=c("Yes","No")
levels(data$random_hypoglycemia_ogtt_2_v0.factor)=c("Yes","No")
levels(data$random_hypoglycemia_ogtt_3_v0.factor)=c("Yes","No")
levels(data$random_hypoglycemia_ogtt_4_v0.factor)=c("Yes","No")
levels(data$random_hypoglycemia_ogtt_5_v0.factor)=c("Yes","No")
levels(data$dischargepoc70_v0.factor)=c("IV removed","subject discharged")
levels(data$dischargepocless70_v0.factor)=c("give 15 grams carbohydrate (4 oz juice)","remove IV","discharge subject")
levels(data$ogtt_documentation_repeat_visit_1_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$heart_pounding_baseline_v0.factor)=c("0 (No Symptoms)","1","2","3","4","5","6 (Severe symptoms)")
levels(data$shaky_tremulous_baseline_v0.factor)=c("0 (No Symptoms)","1","2","3","4","5","6 (Severe symptoms)")
levels(data$nervous_anxious_baseline_v0.factor)=c("0 (No Symptoms)","1","2","3","4","5","6 (Severe symptoms)")
levels(data$sweaty_baseline_v0.factor)=c("0 (No Symptoms)","1","2","3","4","5","6 (Severe symptoms)")
levels(data$hungry_baseline_v0.factor)=c("0 (No Symptoms)","1","2","3","4","5","6 (Severe symptoms)")
levels(data$tingling_baseline_v0.factor)=c("0 (No Symptoms)","1","2","3","4","5","6 (Severe symptoms)")
levels(data$diff_thinking_baseline_v0.factor)=c("0 (No Symptoms)","1","2","3","4","5","6 (Severe symptoms)")
levels(data$tired_drowsy_baseline_v0.factor)=c("0 (No Symptoms)","1","2","3","4","5","6 (Severe symptoms)")
levels(data$weak_baseline_v0.factor)=c("0 (No Symptoms)","1","2","3","4","5","6 (Severe symptoms)")
levels(data$warm_baseline_v0.factor)=c("0 (No Symptoms)","1","2","3","4","5","6 (Severe symptoms)")
levels(data$faint_baseline_v0.factor)=c("0 (No Symptoms)","1","2","3","4","5","6 (Severe symptoms)")
levels(data$dizzy_baseline_v0.factor)=c("0 (No Symptoms)","1","2","3","4","5","6 (Severe symptoms)")
levels(data$heart_pounding_120_v0.factor)=c("0 (No Symptoms)","1","2","3","4","5","6 (Severe symptoms)")
levels(data$shaky_tremulous_120_v0.factor)=c("0 (No Symptoms)","1","2","3","4","5","6 (Severe symptoms)")
levels(data$nervous_anxious_120_v0.factor)=c("0 (No Symptoms)","1","2","3","4","5","6 (Severe symptoms)")
levels(data$sweaty_120_v0.factor)=c("0 (No Symptoms)","1","2","3","4","5","6 (Severe symptoms)")
levels(data$hungry_120_v0.factor)=c("0 (No Symptoms)","1","2","3","4","5","6 (Severe symptoms)")
levels(data$tingling_120_v0.factor)=c("0 (No Symptoms)","1","2","3","4","5","6 (Severe symptoms)")
levels(data$diff_thinking_120_v0.factor)=c("0 (No Symptoms)","1","2","3","4","5","6 (Severe symptoms)")
levels(data$tired_drowsy_120_v0.factor)=c("0 (No Symptoms)","1","2","3","4","5","6 (Severe symptoms)")
levels(data$weak_120_v0.factor)=c("0 (No Symptoms)","1","2","3","4","5","6 (Severe symptoms)")
levels(data$warm_120_v0.factor)=c("0 (No Symptoms)","1","2","3","4","5","6 (Severe symptoms)")
levels(data$faint_120_v0.factor)=c("0 (No Symptoms)","1","2","3","4","5","6 (Severe symptoms)")
levels(data$dizzy_120_v0.factor)=c("0 (No Symptoms)","1","2","3","4","5","6 (Severe symptoms)")
levels(data$heart_pounding_150_v0.factor)=c("0 (No Symptoms)","1","2","3","4","5","6 (Severe symptoms)")
levels(data$shaky_tremulous_150_v0.factor)=c("0 (No Symptoms)","1","2","3","4","5","6 (Severe symptoms)")
levels(data$nervous_anxious_150_v0.factor)=c("0 (No Symptoms)","1","2","3","4","5","6 (Severe symptoms)")
levels(data$sweaty_150_v0.factor)=c("0 (No Symptoms)","1","2","3","4","5","6 (Severe symptoms)")
levels(data$hungry_150_v0.factor)=c("0 (No Symptoms)","1","2","3","4","5","6 (Severe symptoms)")
levels(data$tingling_150_v0.factor)=c("0 (No Symptoms)","1","2","3","4","5","6 (Severe symptoms)")
levels(data$diff_thinking_150_v0.factor)=c("0 (No Symptoms)","1","2","3","4","5","6 (Severe symptoms)")
levels(data$tired_drowsy_150_v0.factor)=c("0 (No Symptoms)","1","2","3","4","5","6 (Severe symptoms)")
levels(data$weak_150_v0.factor)=c("0 (No Symptoms)","1","2","3","4","5","6 (Severe symptoms)")
levels(data$warm_150_v0.factor)=c("0 (No Symptoms)","1","2","3","4","5","6 (Severe symptoms)")
levels(data$faint_150_v0.factor)=c("0 (No Symptoms)","1","2","3","4","5","6 (Severe symptoms)")
levels(data$dizzy_150_v0.factor)=c("0 (No Symptoms)","1","2","3","4","5","6 (Severe symptoms)")
levels(data$heart_pounding_180_v0.factor)=c("0 (No Symptoms)","1","2","3","4","5","6 (Severe symptoms)")
levels(data$shaky_tremulous_180_v0.factor)=c("0 (No Symptoms)","1","2","3","4","5","6 (Severe symptoms)")
levels(data$nervous_anxious_180_v0.factor)=c("0 (No Symptoms)","1","2","3","4","5","6 (Severe symptoms)")
levels(data$sweaty_180_v0.factor)=c("0 (No Symptoms)","1","2","3","4","5","6 (Severe symptoms)")
levels(data$hungry_180_v0.factor)=c("0 (No Symptoms)","1","2","3","4","5","6 (Severe symptoms)")
levels(data$tingling_180_v0.factor)=c("0 (No Symptoms)","1","2","3","4","5","6 (Severe symptoms)")
levels(data$diff_thinking_180_v0.factor)=c("0 (No Symptoms)","1","2","3","4","5","6 (Severe symptoms)")
levels(data$tired_drowsy_180_v0.factor)=c("0 (No Symptoms)","1","2","3","4","5","6 (Severe symptoms)")
levels(data$weak_180_v0.factor)=c("0 (No Symptoms)","1","2","3","4","5","6 (Severe symptoms)")
levels(data$warm_180_v0.factor)=c("0 (No Symptoms)","1","2","3","4","5","6 (Severe symptoms)")
levels(data$faint_180_v0.factor)=c("0 (No Symptoms)","1","2","3","4","5","6 (Severe symptoms)")
levels(data$dizzy_180_v0.factor)=c("0 (No Symptoms)","1","2","3","4","5","6 (Severe symptoms)")
levels(data$ogtt_hypoglycemia_questionnaires_repeat_visit_1_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$shaking_peds_base_v0.factor)=c("Yes","No")
levels(data$fast_heart_peds_base_v0.factor)=c("Yes","No")
levels(data$sweating_peds_base_v0.factor)=c("Yes","No")
levels(data$weak_peds_base_v0.factor)=c("Yes","No")
levels(data$hunger_peds_base_v0.factor)=c("Yes","No")
levels(data$irritable_peds_base_v0.factor)=c("Yes","No")
levels(data$shaking_peds_120_v0.factor)=c("Yes","No")
levels(data$fast_heart_peds_120_v0.factor)=c("Yes","No")
levels(data$sweating_peds_120_v0.factor)=c("Yes","No")
levels(data$weak_peds_120_v0.factor)=c("Yes","No")
levels(data$hunger_peds_120_v0.factor)=c("Yes","No")
levels(data$irritable_peds_120_v0.factor)=c("Yes","No")
levels(data$shaking_peds_150_v0.factor)=c("Yes","No")
levels(data$fast_heart_peds_150_v0.factor)=c("Yes","No")
levels(data$sweating_peds_150_v0.factor)=c("Yes","No")
levels(data$weak_peds_150_v0.factor)=c("Yes","No")
levels(data$hunger_peds_150_v0.factor)=c("Yes","No")
levels(data$irritable_peds_150_v0.factor)=c("Yes","No")
levels(data$shaking_peds_180_v0.factor)=c("Yes","No")
levels(data$fast_heart_peds_180_v0.factor)=c("Yes","No")
levels(data$sweating_peds_180_v0.factor)=c("Yes","No")
levels(data$weak_peds_180_v0.factor)=c("Yes","No")
levels(data$hunger_peds_180_v0.factor)=c("Yes","No")
levels(data$irritable_peds_180_v0.factor)=c("Yes","No")
levels(data$ogtt_hypoglycemia_questionnaire_age_618_repeat_vis_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$questionnaire_filled_out_v0.factor)=c("Yes","No")
levels(data$rv_home_hypo.factor)=c("Yes","No")
levels(data$i_feel_v0___0.factor)=c("Unchecked","Checked")
levels(data$i_feel_v0___1.factor)=c("Unchecked","Checked")
levels(data$i_feel_v0___2.factor)=c("Unchecked","Checked")
levels(data$i_feel_v0___3.factor)=c("Unchecked","Checked")
levels(data$i_feel_v0___4.factor)=c("Unchecked","Checked")
levels(data$i_feel_v0___5.factor)=c("Unchecked","Checked")
levels(data$i_feel_v0___6.factor)=c("Unchecked","Checked")
levels(data$i_feel_v0___7.factor)=c("Unchecked","Checked")
levels(data$i_feel_v0___8.factor)=c("Unchecked","Checked")
levels(data$i_feel_v0___9.factor)=c("Unchecked","Checked")
levels(data$i_feel_v0___10.factor)=c("Unchecked","Checked")
levels(data$i_feel_v0___11.factor)=c("Unchecked","Checked")
levels(data$it_was_recognized_by_v0.factor)=c("Self","Someone else")
levels(data$i_needed_v0___0.factor)=c("Unchecked","Checked")
levels(data$i_needed_v0___1.factor)=c("Unchecked","Checked")
levels(data$i_needed_v0___2.factor)=c("Unchecked","Checked")
levels(data$juice_or_food_v0.factor)=c("Yes","No","N/A")
levels(data$another_section_1_v0.factor)=c("Yes","No")
levels(data$i_feel_2_v0___0.factor)=c("Unchecked","Checked")
levels(data$i_feel_2_v0___1.factor)=c("Unchecked","Checked")
levels(data$i_feel_2_v0___2.factor)=c("Unchecked","Checked")
levels(data$i_feel_2_v0___3.factor)=c("Unchecked","Checked")
levels(data$i_feel_2_v0___4.factor)=c("Unchecked","Checked")
levels(data$i_feel_2_v0___5.factor)=c("Unchecked","Checked")
levels(data$i_feel_2_v0___6.factor)=c("Unchecked","Checked")
levels(data$i_feel_2_v0___7.factor)=c("Unchecked","Checked")
levels(data$i_feel_2_v0___8.factor)=c("Unchecked","Checked")
levels(data$i_feel_2_v0___9.factor)=c("Unchecked","Checked")
levels(data$i_feel_2_v0___10.factor)=c("Unchecked","Checked")
levels(data$i_feel_2_v0___11.factor)=c("Unchecked","Checked")
levels(data$it_was_recognized_by_2_v0.factor)=c("Self","Someone else")
levels(data$i_needed_2_v0___0.factor)=c("Unchecked","Checked")
levels(data$i_needed_2_v0___1.factor)=c("Unchecked","Checked")
levels(data$i_needed_2_v0___2.factor)=c("Unchecked","Checked")
levels(data$juice_or_food_2_v0.factor)=c("Yes","No","N/A")
levels(data$another_section_2_v0.factor)=c("Yes","No")
levels(data$i_feel_3_v0___0.factor)=c("Unchecked","Checked")
levels(data$i_feel_3_v0___1.factor)=c("Unchecked","Checked")
levels(data$i_feel_3_v0___2.factor)=c("Unchecked","Checked")
levels(data$i_feel_3_v0___3.factor)=c("Unchecked","Checked")
levels(data$i_feel_3_v0___4.factor)=c("Unchecked","Checked")
levels(data$i_feel_3_v0___5.factor)=c("Unchecked","Checked")
levels(data$i_feel_3_v0___6.factor)=c("Unchecked","Checked")
levels(data$i_feel_3_v0___7.factor)=c("Unchecked","Checked")
levels(data$i_feel_3_v0___8.factor)=c("Unchecked","Checked")
levels(data$i_feel_3_v0___9.factor)=c("Unchecked","Checked")
levels(data$i_feel_3_v0___10.factor)=c("Unchecked","Checked")
levels(data$i_feel_3_v0___11.factor)=c("Unchecked","Checked")
levels(data$it_was_recognized_by_3_v0.factor)=c("Self","Someone else")
levels(data$i_needed_3_v0___0.factor)=c("Unchecked","Checked")
levels(data$i_needed_3_v0___1.factor)=c("Unchecked","Checked")
levels(data$i_needed_3_v0___2.factor)=c("Unchecked","Checked")
levels(data$juice_or_food_3_v0.factor)=c("Yes","No","N/A")
levels(data$another_section_3_v0.factor)=c("Yes","No")
levels(data$i_feel_4_v0___0.factor)=c("Unchecked","Checked")
levels(data$i_feel_4_v0___1.factor)=c("Unchecked","Checked")
levels(data$i_feel_4_v0___2.factor)=c("Unchecked","Checked")
levels(data$i_feel_4_v0___3.factor)=c("Unchecked","Checked")
levels(data$i_feel_4_v0___4.factor)=c("Unchecked","Checked")
levels(data$i_feel_4_v0___5.factor)=c("Unchecked","Checked")
levels(data$i_feel_4_v0___6.factor)=c("Unchecked","Checked")
levels(data$i_feel_4_v0___7.factor)=c("Unchecked","Checked")
levels(data$i_feel_4_v0___8.factor)=c("Unchecked","Checked")
levels(data$i_feel_4_v0___9.factor)=c("Unchecked","Checked")
levels(data$i_feel_4_v0___10.factor)=c("Unchecked","Checked")
levels(data$i_feel_4_v0___11.factor)=c("Unchecked","Checked")
levels(data$it_was_recognized_by_4_v0.factor)=c("Self","Someone else")
levels(data$i_needed_4_v0___0.factor)=c("Unchecked","Checked")
levels(data$i_needed_4_v0___1.factor)=c("Unchecked","Checked")
levels(data$i_needed_4_v0___2.factor)=c("Unchecked","Checked")
levels(data$juice_or_food_4_v0.factor)=c("Yes","No","N/A")
levels(data$another_section_4_v0.factor)=c("Yes","No")
levels(data$i_feel_5_v0___0.factor)=c("Unchecked","Checked")
levels(data$i_feel_5_v0___1.factor)=c("Unchecked","Checked")
levels(data$i_feel_5_v0___2.factor)=c("Unchecked","Checked")
levels(data$i_feel_5_v0___3.factor)=c("Unchecked","Checked")
levels(data$i_feel_5_v0___4.factor)=c("Unchecked","Checked")
levels(data$i_feel_5_v0___5.factor)=c("Unchecked","Checked")
levels(data$i_feel_5_v0___6.factor)=c("Unchecked","Checked")
levels(data$i_feel_5_v0___7.factor)=c("Unchecked","Checked")
levels(data$i_feel_5_v0___8.factor)=c("Unchecked","Checked")
levels(data$i_feel_5_v0___9.factor)=c("Unchecked","Checked")
levels(data$i_feel_5_v0___10.factor)=c("Unchecked","Checked")
levels(data$i_feel_5_v0___11.factor)=c("Unchecked","Checked")
levels(data$it_was_recognized_by_5_v0.factor)=c("Self","Someone else")
levels(data$i_needed_5_v0___0.factor)=c("Unchecked","Checked")
levels(data$i_needed_5_v0___1.factor)=c("Unchecked","Checked")
levels(data$i_needed_5_v0___2.factor)=c("Unchecked","Checked")
levels(data$juice_or_food_5_v0.factor)=c("Yes","No","N/A")
levels(data$another_section_5_v0.factor)=c("Yes","No")
levels(data$i_feel_6_v0___0.factor)=c("Unchecked","Checked")
levels(data$i_feel_6_v0___1.factor)=c("Unchecked","Checked")
levels(data$i_feel_6_v0___2.factor)=c("Unchecked","Checked")
levels(data$i_feel_6_v0___3.factor)=c("Unchecked","Checked")
levels(data$i_feel_6_v0___4.factor)=c("Unchecked","Checked")
levels(data$i_feel_6_v0___5.factor)=c("Unchecked","Checked")
levels(data$i_feel_6_v0___6.factor)=c("Unchecked","Checked")
levels(data$i_feel_6_v0___7.factor)=c("Unchecked","Checked")
levels(data$i_feel_6_v0___8.factor)=c("Unchecked","Checked")
levels(data$i_feel_6_v0___9.factor)=c("Unchecked","Checked")
levels(data$i_feel_6_v0___10.factor)=c("Unchecked","Checked")
levels(data$i_feel_6_v0___11.factor)=c("Unchecked","Checked")
levels(data$it_was_recognized_by_6_v0.factor)=c("Self","Someone else")
levels(data$i_needed_6_v0___0.factor)=c("Unchecked","Checked")
levels(data$i_needed_6_v0___1.factor)=c("Unchecked","Checked")
levels(data$i_needed_6_v0___2.factor)=c("Unchecked","Checked")
levels(data$juice_or_food_6_v0.factor)=c("Yes","No","N/A")
levels(data$another_section_6_v0.factor)=c("Yes","No")
levels(data$i_feel_7_v0___0.factor)=c("Unchecked","Checked")
levels(data$i_feel_7_v0___1.factor)=c("Unchecked","Checked")
levels(data$i_feel_7_v0___2.factor)=c("Unchecked","Checked")
levels(data$i_feel_7_v0___3.factor)=c("Unchecked","Checked")
levels(data$i_feel_7_v0___4.factor)=c("Unchecked","Checked")
levels(data$i_feel_7_v0___5.factor)=c("Unchecked","Checked")
levels(data$i_feel_7_v0___6.factor)=c("Unchecked","Checked")
levels(data$i_feel_7_v0___7.factor)=c("Unchecked","Checked")
levels(data$i_feel_7_v0___8.factor)=c("Unchecked","Checked")
levels(data$i_feel_7_v0___9.factor)=c("Unchecked","Checked")
levels(data$i_feel_7_v0___10.factor)=c("Unchecked","Checked")
levels(data$i_feel_7_v0___11.factor)=c("Unchecked","Checked")
levels(data$it_was_recognized_by_7_v0.factor)=c("Self","Someone else")
levels(data$i_needed_7_v0___0.factor)=c("Unchecked","Checked")
levels(data$i_needed_7_v0___1.factor)=c("Unchecked","Checked")
levels(data$i_needed_7_v0___2.factor)=c("Unchecked","Checked")
levels(data$juice_or_food_7_v0.factor)=c("Yes","No","N/A")
levels(data$another_section_7_v0.factor)=c("Yes","No")
levels(data$i_feel_8_v0___0.factor)=c("Unchecked","Checked")
levels(data$i_feel_8_v0___1.factor)=c("Unchecked","Checked")
levels(data$i_feel_8_v0___2.factor)=c("Unchecked","Checked")
levels(data$i_feel_8_v0___3.factor)=c("Unchecked","Checked")
levels(data$i_feel_8_v0___4.factor)=c("Unchecked","Checked")
levels(data$i_feel_8_v0___5.factor)=c("Unchecked","Checked")
levels(data$i_feel_8_v0___6.factor)=c("Unchecked","Checked")
levels(data$i_feel_8_v0___7.factor)=c("Unchecked","Checked")
levels(data$i_feel_8_v0___8.factor)=c("Unchecked","Checked")
levels(data$i_feel_8_v0___9.factor)=c("Unchecked","Checked")
levels(data$i_feel_8_v0___10.factor)=c("Unchecked","Checked")
levels(data$i_feel_8_v0___11.factor)=c("Unchecked","Checked")
levels(data$it_was_recognized_by_8_v0.factor)=c("Self","Someone else")
levels(data$i_needed_8_v0___0.factor)=c("Unchecked","Checked")
levels(data$i_needed_8_v0___1.factor)=c("Unchecked","Checked")
levels(data$i_needed_8_v0___2.factor)=c("Unchecked","Checked")
levels(data$juice_or_food_8_v0.factor)=c("Yes","No","N/A")
levels(data$athome_adult_hypoglycemia_questionnaire_repeat_vis_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$child_home_completed_v0.factor)=c("Yes","No")
levels(data$rv_child_hypo_home.factor)=c("Yes","No")
levels(data$symptoms_child_hypo_v0___0.factor)=c("Unchecked","Checked")
levels(data$symptoms_child_hypo_v0___1.factor)=c("Unchecked","Checked")
levels(data$symptoms_child_hypo_v0___2.factor)=c("Unchecked","Checked")
levels(data$symptoms_child_hypo_v0___3.factor)=c("Unchecked","Checked")
levels(data$symptoms_child_hypo_v0___4.factor)=c("Unchecked","Checked")
levels(data$symptoms_child_hypo_v0___5.factor)=c("Unchecked","Checked")
levels(data$another_section_filled_v0.factor)=c("Yes","No")
levels(data$symptoms_child_hypo_2_v0___0.factor)=c("Unchecked","Checked")
levels(data$symptoms_child_hypo_2_v0___1.factor)=c("Unchecked","Checked")
levels(data$symptoms_child_hypo_2_v0___2.factor)=c("Unchecked","Checked")
levels(data$symptoms_child_hypo_2_v0___3.factor)=c("Unchecked","Checked")
levels(data$symptoms_child_hypo_2_v0___4.factor)=c("Unchecked","Checked")
levels(data$symptoms_child_hypo_2_v0___5.factor)=c("Unchecked","Checked")
levels(data$third_section_filled_out_v0.factor)=c("Yes","No")
levels(data$symptoms_child_hypo_3_v0___0.factor)=c("Unchecked","Checked")
levels(data$symptoms_child_hypo_3_v0___1.factor)=c("Unchecked","Checked")
levels(data$symptoms_child_hypo_3_v0___2.factor)=c("Unchecked","Checked")
levels(data$symptoms_child_hypo_3_v0___3.factor)=c("Unchecked","Checked")
levels(data$symptoms_child_hypo_3_v0___4.factor)=c("Unchecked","Checked")
levels(data$symptoms_child_hypo_3_v0___5.factor)=c("Unchecked","Checked")
levels(data$fourth_section_filled_v0.factor)=c("Yes","No")
levels(data$symptoms_child_hypo_4_v0___0.factor)=c("Unchecked","Checked")
levels(data$symptoms_child_hypo_4_v0___1.factor)=c("Unchecked","Checked")
levels(data$symptoms_child_hypo_4_v0___2.factor)=c("Unchecked","Checked")
levels(data$symptoms_child_hypo_4_v0___3.factor)=c("Unchecked","Checked")
levels(data$symptoms_child_hypo_4_v0___4.factor)=c("Unchecked","Checked")
levels(data$symptoms_child_hypo_4_v0___5.factor)=c("Unchecked","Checked")
levels(data$fifth_section_filled_v0.factor)=c("Yes","No")
levels(data$symptoms_child_hypo_5_v0___0.factor)=c("Unchecked","Checked")
levels(data$symptoms_child_hypo_5_v0___1.factor)=c("Unchecked","Checked")
levels(data$symptoms_child_hypo_5_v0___2.factor)=c("Unchecked","Checked")
levels(data$symptoms_child_hypo_5_v0___3.factor)=c("Unchecked","Checked")
levels(data$symptoms_child_hypo_5_v0___4.factor)=c("Unchecked","Checked")
levels(data$symptoms_child_hypo_5_v0___5.factor)=c("Unchecked","Checked")
levels(data$sixth_section_filled_v0.factor)=c("Yes","No")
levels(data$symptoms_child_hypo_6_v0___0.factor)=c("Unchecked","Checked")
levels(data$symptoms_child_hypo_6_v0___1.factor)=c("Unchecked","Checked")
levels(data$symptoms_child_hypo_6_v0___2.factor)=c("Unchecked","Checked")
levels(data$symptoms_child_hypo_6_v0___3.factor)=c("Unchecked","Checked")
levels(data$symptoms_child_hypo_6_v0___4.factor)=c("Unchecked","Checked")
levels(data$symptoms_child_hypo_6_v0___5.factor)=c("Unchecked","Checked")
levels(data$seventh_section_filled_v0.factor)=c("Yes","No")
levels(data$symptoms_child_hypo_7_v0___0.factor)=c("Unchecked","Checked")
levels(data$symptoms_child_hypo_7_v0___1.factor)=c("Unchecked","Checked")
levels(data$symptoms_child_hypo_7_v0___2.factor)=c("Unchecked","Checked")
levels(data$symptoms_child_hypo_7_v0___3.factor)=c("Unchecked","Checked")
levels(data$symptoms_child_hypo_7_v0___4.factor)=c("Unchecked","Checked")
levels(data$symptoms_child_hypo_7_v0___5.factor)=c("Unchecked","Checked")
levels(data$eighth_section_filled_v0.factor)=c("Yes","No")
levels(data$symptoms_child_hypo_8_v0___0.factor)=c("Unchecked","Checked")
levels(data$symptoms_child_hypo_8_v0___1.factor)=c("Unchecked","Checked")
levels(data$symptoms_child_hypo_8_v0___2.factor)=c("Unchecked","Checked")
levels(data$symptoms_child_hypo_8_v0___3.factor)=c("Unchecked","Checked")
levels(data$symptoms_child_hypo_8_v0___4.factor)=c("Unchecked","Checked")
levels(data$symptoms_child_hypo_8_v0___5.factor)=c("Unchecked","Checked")
levels(data$athome_child_618_hypoglycemia_questionnaire_repeat_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$pft_yes_no_v0.factor)=c("Yes","No")
levels(data$pulmonary_function_repeat_visit_1_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$ae_occur_v0.factor)=c("Yes","No")
levels(data$ae_severity_v0.factor)=c("mild","moderate","severe")
levels(data$action_taken_v0.factor)=c("none","discontinued","interrupted")
levels(data$ae_outcome_v0.factor)=c("recovered w/o sequelae","recovered with sequelae","ongoing","fatal","unknown")
levels(data$ae_relation_to_study_v0.factor)=c("Definite","Probable","Possible","not likely","unrelated")
levels(data$ae_serious_v0.factor)=c("yes","no")
levels(data$adverse_event_log_repeat_visit_1_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$y_n_protocol_dev_v0.factor)=c("Yes","No")
levels(data$deviation_type_v0.factor)=c("Inclusion/Exclusion","No Informed Consent/Assent","Out-of-window procedure/test","Sample collection missed/collected in error/lost","Use of prohibited medications","Glucola administration","Hypoglycemia monitoring","Tanner staging not completed","Pregnancy test not completed","Missed hypoglycemia questionnaire(s)","Other")
levels(data$timing_of_deviation_v0.factor)=c("Deviation occurred prior treatment","Deviation occurred during treatment","Deviation occurred after treatment")
levels(data$dev_id_by_v0.factor)=c("Principal Investigator","Study Coordinator","Study Staff","Nursing staff","Other")
levels(data$deviation_result_ae_v0.factor)=c("Yes","No")
levels(data$second_protocol_dev_v0.factor)=c("Yes","No")
levels(data$deviation_type_2_v0.factor)=c("Inclusion/Exclusion","No Informed Consent/Assent","Out-of-window procedure/test","Sample collection missed/collected in error/lost","Use of prohibited medications","Glucola administration","Hypoglycemia monitoring","Tanner staging not completed","Pregnancy test not completed","Missed hypoglycemia questionnaire(s)","Other")
levels(data$timing_of_deviation_2_v0.factor)=c("Deviation occurred prior treatment","Deviation occurred during treatment","Deviation occurred after treatment")
levels(data$dev_id_by_2_v0.factor)=c("Principal Investigator","Study Coordinator","Study Staff","Nursing staff","Other")
levels(data$deviation_result_ae_2_v0.factor)=c("Yes","No")
levels(data$third_protocol_dev_v0.factor)=c("Yes","No")
levels(data$deviation_type_3_v0.factor)=c("Inclusion/Exclusion","No Informed Consent/Assent","Out-of-window procedure/test","Sample collection missed/collected in error/lost","Use of prohibited medications","Glucola administration","Hypoglycemia monitoring","Tanner staging not completed","Pregnancy test not completed","Missed hypoglycemia questionnaire(s)","Other")
levels(data$timing_of_deviation_3_v0.factor)=c("Deviation occurred prior treatment","Deviation occurred during treatment","Deviation occurred after treatment")
levels(data$dev_id_by_3_v0.factor)=c("Principal Investigator","Study Coordinator","Study Staff","Nursing staff","Other")
levels(data$deviation_result_ae_3_v0.factor)=c("Yes","No")
levels(data$fourth_protocol_dev_v0.factor)=c("Yes","No")
levels(data$deviation_type_4_v0.factor)=c("Inclusion/Exclusion","No Informed Consent/Assent","Out-of-window procedure/test","Sample collection missed/collected in error/lost","Use of prohibited medications","Glucola administration","Hypoglycemia monitoring","Tanner staging not completed","Pregnancy test not completed","Missed hypoglycemia questionnaire(s)","Other")
levels(data$timing_of_deviation_4_v0.factor)=c("Deviation occurred prior treatment","Deviation occurred during treatment","Deviation occurred after treatment")
levels(data$dev_id_by_4_v0.factor)=c("Principal Investigator","Study Coordinator","Study Staff","Nursing staff","Other")
levels(data$deviation_result_ae_4_v0.factor)=c("Yes","No")
levels(data$protocol_deviation_repeat_visit_1_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$agreed_to_cgm_v0.factor)=c("Yes","No")
levels(data$cgm_instructions_v0___1.factor)=c("Unchecked","Checked")
levels(data$cgm_instructions_v0___2.factor)=c("Unchecked","Checked")
levels(data$cgm_instructions_v0___3.factor)=c("Unchecked","Checked")
levels(data$cgm_placement_site_v0.factor)=c("right arm","left arm")
levels(data$cgm_data_success_failure_v0.factor)=c("Success","Failure")
levels(data$cgm_gaps_filled_in_v0.factor)=c("Yes","No")
levels(data$num_hours_good_data_v0.factor)=c("24 hours","48 hours","72 hours","96 hours","120 hours","144 hours","168 hours")
levels(data$total_sensor_readings_v0.factor)=c("288","576","864","1152","1440","1728","2016")
levels(data$cgm_data_repeat_visit_1_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$patient_undergo_dexa_v0.factor)=c("Yes","No")
levels(data$make_of_dxa_machine_v0.factor)=c("hologic","Lunar")
levels(data$dxa_data_repeat_visit_1_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$participant_withdrawn_v2.factor)=c("Yes- permanently from the study","Yes- Temporarily from the study","No")
levels(data$sex_v2.factor)=c("Male","Female")
levels(data$ethnicity_v2.factor)=c("Hispanic/Latino","Not Hispanic/Latino","N/A")
levels(data$origin_race_v2.factor)=c("White (Europe, Middle East, North Africa)","Black or African American (Africa)","American Indian or Alaska Native (N. S. & Central America)","Asian (Far East, Southeast Asia, Indian)","Native Hawaiian or Other Pacific Islander (Hawaii, Guam, Samoa, Pacific Islands)","Declined")
levels(data$cftr_genotype_available_in_v2.factor)=c("Yes both chromosomes","only one gene is known, other is unknown, but listed as true CF","Been completed and noted as diagnostic but the actual genotype is not available in medical record","no genotype avaliable in any form")
levels(data$cftr_mutation_1_v2.factor)=c("F508del","Other")
levels(data$type_of_mutation_1_v2.factor)=c("Minimal Function (class 1 & 2)","Residual Function (class 3, 4, 5)")
levels(data$cftr_mutation_2_v2.factor)=c("F508del","Other","Unknown")
levels(data$type_of_mutation_2_v2.factor)=c("Minimal (class 1 & 2)","Residual (class 3, 4, 5)")
levels(data$mutation_category_v2.factor)=c("Severe (minimal & minimal)","Residual (minimal & residual)")
levels(data$new_born_screen_v2.factor)=c("Yes","No","Unavaliable")
levels(data$sweat_chloride_test_v2.factor)=c("Yes","No")
levels(data$pancreatic_status_v2.factor)=c("Sufficient","Insufficient","Unknown")
levels(data$most_recent_sputum_culture_v2___1.factor)=c("Unchecked","Checked")
levels(data$most_recent_sputum_culture_v2___2.factor)=c("Unchecked","Checked")
levels(data$most_recent_sputum_culture_v2___3.factor)=c("Unchecked","Checked")
levels(data$most_recent_sputum_culture_v2___4.factor)=c("Unchecked","Checked")
levels(data$most_recent_sputum_culture_v2___5.factor)=c("Unchecked","Checked")
levels(data$most_recent_sputum_culture_v2___6.factor)=c("Unchecked","Checked")
levels(data$most_recent_sputum_culture_v2___7.factor)=c("Unchecked","Checked")
levels(data$most_recent_sputum_culture_v2___8.factor)=c("Unchecked","Checked")
levels(data$sputum_culture_year_v2___1.factor)=c("Unchecked","Checked")
levels(data$sputum_culture_year_v2___2.factor)=c("Unchecked","Checked")
levels(data$sputum_culture_year_v2___3.factor)=c("Unchecked","Checked")
levels(data$sputum_culture_year_v2___4.factor)=c("Unchecked","Checked")
levels(data$sputum_culture_year_v2___5.factor)=c("Unchecked","Checked")
levels(data$sputum_culture_year_v2___6.factor)=c("Unchecked","Checked")
levels(data$sputum_culture_year_v2___7.factor)=c("Unchecked","Checked")
levels(data$sputum_culture_year_v2___8.factor)=c("Unchecked","Checked")
levels(data$liver_disease_v2.factor)=c("Yes","No")
levels(data$corrector_yes_no_v2.factor)=c("Yes","No")
levels(data$corrector_v2___1.factor)=c("Unchecked","Checked")
levels(data$corrector_v2___2.factor)=c("Unchecked","Checked")
levels(data$corrector_v2___3.factor)=c("Unchecked","Checked")
levels(data$corrector_v2___4.factor)=c("Unchecked","Checked")
levels(data$corrector_v2___5.factor)=c("Unchecked","Checked")
levels(data$family_history_diabetes_v2.factor)=c("Yes","No")
levels(data$relative_with_diabetes_v2___1.factor)=c("Unchecked","Checked")
levels(data$relative_with_diabetes_v2___2.factor)=c("Unchecked","Checked")
levels(data$relative_with_diabetes_v2___3.factor)=c("Unchecked","Checked")
levels(data$relative_with_diabetes_v2___4.factor)=c("Unchecked","Checked")
levels(data$diabetes_hisotry_type_v2___1.factor)=c("Unchecked","Checked")
levels(data$diabetes_hisotry_type_v2___2.factor)=c("Unchecked","Checked")
levels(data$diabetes_hisotry_type_v2___3.factor)=c("Unchecked","Checked")
levels(data$diabetes_hisotry_type_v2___4.factor)=c("Unchecked","Checked")
levels(data$demographics_and_cf_historysecond_visit_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$antibiotics_v2___1.factor)=c("Unchecked","Checked")
levels(data$antibiotics_v2___2.factor)=c("Unchecked","Checked")
levels(data$antibiotics_v2___3.factor)=c("Unchecked","Checked")
levels(data$antibiotics_v2___4.factor)=c("Unchecked","Checked")
levels(data$antibiotics_v2___5.factor)=c("Unchecked","Checked")
levels(data$inhaled_steroids_v2.factor)=c("Yes","No")
levels(data$patient_using_flonase_v2.factor)=c("Yes","No")
levels(data$inhaled_beta_agonist_v2.factor)=c("Yes","No")
levels(data$pancreatic_enzyme_therapy_v2.factor)=c("Yes","No","Suppose to be, but doesnt take")
levels(data$systemic_steroid_therapy_v2___1.factor)=c("Unchecked","Checked")
levels(data$systemic_steroid_therapy_v2___2.factor)=c("Unchecked","Checked")
levels(data$systemic_steroid_therapy_v2___3.factor)=c("Unchecked","Checked")
levels(data$systemic_steroid_therapy_v2___4.factor)=c("Unchecked","Checked")
levels(data$systemic_steroid_therapy_v2___5.factor)=c("Unchecked","Checked")
levels(data$systemic_steroid_therapy_v2___6.factor)=c("Unchecked","Checked")
levels(data$cf_multivitamins_aquadeks_v2.factor)=c("Yes","No")
levels(data$vitamin_d_in_addition_to_m_v2.factor)=c("Yes","No","Only in multivitamin")
levels(data$high_dose_ibuprofen_v2.factor)=c("Daily","As needed","None")
levels(data$inhaled_antibiotics_v2.factor)=c("Yes","more than 1","No")
levels(data$ursodiol_v2.factor)=c("Yes","No")
levels(data$gen_1_atyp_antipsych_v2___0.factor)=c("Unchecked","Checked")
levels(data$gen_1_atyp_antipsych_v2___1.factor)=c("Unchecked","Checked")
levels(data$gen_1_atyp_antipsych_v2___2.factor)=c("Unchecked","Checked")
levels(data$gen_1_atyp_antipsych_v2___3.factor)=c("Unchecked","Checked")
levels(data$gen_1_atyp_antipsych_v2___4.factor)=c("Unchecked","Checked")
levels(data$gen_1_atyp_antipsych_v2___5.factor)=c("Unchecked","Checked")
levels(data$gen_1_atyp_antipsych_v2___6.factor)=c("Unchecked","Checked")
levels(data$gen_1_atyp_antipsych_v2___7.factor)=c("Unchecked","Checked")
levels(data$gen_1_atyp_antipsych_v2___8.factor)=c("Unchecked","Checked")
levels(data$gen_1_atyp_antipsych_v2___9.factor)=c("Unchecked","Checked")
levels(data$gen_2_atyp_antipsych_v2___0.factor)=c("Unchecked","Checked")
levels(data$gen_2_atyp_antipsych_v2___1.factor)=c("Unchecked","Checked")
levels(data$gen_2_atyp_antipsych_v2___2.factor)=c("Unchecked","Checked")
levels(data$gen_2_atyp_antipsych_v2___3.factor)=c("Unchecked","Checked")
levels(data$gen_2_atyp_antipsych_v2___4.factor)=c("Unchecked","Checked")
levels(data$gen_2_atyp_antipsych_v2___5.factor)=c("Unchecked","Checked")
levels(data$gen_2_atyp_antipsych_v2___6.factor)=c("Unchecked","Checked")
levels(data$gen_2_atyp_antipsych_v2___7.factor)=c("Unchecked","Checked")
levels(data$gen_2_atyp_antipsych_v2___8.factor)=c("Unchecked","Checked")
levels(data$gen_2_atyp_antipsych_v2___9.factor)=c("Unchecked","Checked")
levels(data$gen_2_atyp_antipsych_v2___10.factor)=c("Unchecked","Checked")
levels(data$gen_2_atyp_antipsych_v2___11.factor)=c("Unchecked","Checked")
levels(data$gen_2_atyp_antipsych_v2___12.factor)=c("Unchecked","Checked")
levels(data$gen_2_atyp_antipsych_v2___13.factor)=c("Unchecked","Checked")
levels(data$current_medications_second_visit_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$cf_yes_no_inclusion_v2.factor)=c("Yes","No")
levels(data$age_6_yes_no_inclusion_v2.factor)=c("Yes","No")
levels(data$clin_stable_yes_no_inclusion_v2.factor)=c("Yes","No")
levels(data$other_diabetes_yes_no_v2.factor)=c("Yes","No")
levels(data$organ_tx_yes_no_v2.factor)=c("Yes","No")
levels(data$cfrd_diabetes_med_yes_no_v2.factor)=c("Yes","No")
levels(data$pulm_ex_last3months_v2.factor)=c("Yes","No")
levels(data$corrector_yes_no_exclusion_v2.factor)=c("Yes","No")
levels(data$consent_completed_v2.factor)=c("Yes","No")
levels(data$upt_v2.factor)=c("subject is not female","subject is pre-pubertal","subject is post-menopausal","pregnancy test is negative","pregnancy test is positive")
levels(data$inclusionexclusion_second_visit_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$fast_hours_v2.factor)=c("Yes","No")
levels(data$tanner_stage_v2.factor)=c("tanner 1 (no puberty/prepubertal)","tanner 2","tanner 3","tanner 4","tanner 5 (normal adult/fully mature)","subject refused","unknown","in puberty but not fully mature (pick this if staging uncertain, but clearly pubertal)")
levels(data$tanner_female_pubic_v2.factor)=c("Tanner 1 (no puberty/pre-pubertal)","Tanner 2","Tanner 3","Tanner 4","Tanner 5 (normal adult/fully mature)","Unknown/declined")
levels(data$tanner_breast_dev_v2.factor)=c("Tanner 1 (no puberty/pre-pubertal)","Tanner 2","Tanner 3","Tanner 4","Tanner 5 (normal adult/fully mature)","Unknown/declined")
levels(data$tanner_male_pubic_v2.factor)=c("Tanner 1 (no puberty/pre-pubertal)","Tanner 2","Tanner 3","Tanner 4","Tanner 5 (normal adult/fully mature)","Unknown/declined")
levels(data$tanner_testicular_vol_v2.factor)=c("Tanner 1 (1-3mL)","Tanner 2 (4-6 mL)","Tanner 3 (8-10 mL)","Tanner 4 (12-15mL)","Tanner 5 (20-25 mL)","Unknown/declined")
levels(data$type_of_temperature_v2.factor)=c("Tympanic","Oral","Temporal")
levels(data$numbing_cream_v2___1.factor)=c("Unchecked","Checked")
levels(data$numbing_cream_v2___2.factor)=c("Unchecked","Checked")
levels(data$hypoglycemia_symptoms_yesno_v2.factor)=c("Yes","No")
levels(data$protocol_continued_70_50_v2___1.factor)=c("Unchecked","Checked")
levels(data$protocol_continued_70_50_v2___2.factor)=c("Unchecked","Checked")
levels(data$protocol_continued_70_52_sym_v2___1.factor)=c("Unchecked","Checked")
levels(data$protocol_continued_70_52_sym_v2___2.factor)=c("Unchecked","Checked")
levels(data$pocgluocse50andsymptoms_1_v2___1.factor)=c("Unchecked","Checked")
levels(data$pocgluocse50andsymptoms_1_v2___2.factor)=c("Unchecked","Checked")
levels(data$pocgluocse50andsymptoms_1_v2___3.factor)=c("Unchecked","Checked")
levels(data$pocgluocse50andsymptoms_1_v2___4.factor)=c("Unchecked","Checked")
levels(data$pocgluocse50andsymptoms_1_v2___5.factor)=c("Unchecked","Checked")
levels(data$pocglucose12050nosyx_v2___1.factor)=c("Unchecked","Checked")
levels(data$pocglucose12050nosyx_v2___2.factor)=c("Unchecked","Checked")
levels(data$hypoglycemia_symptoms_yesno_2_v2.factor)=c("Yes","No")
levels(data$protocol_continued_70_51_v2___1.factor)=c("Unchecked","Checked")
levels(data$protocol_continued_70_51_v2___2.factor)=c("Unchecked","Checked")
levels(data$protocol_continued_70_52_sym_2_v2___1.factor)=c("Unchecked","Checked")
levels(data$protocol_continued_70_52_sym_2_v2___2.factor)=c("Unchecked","Checked")
levels(data$pocglucose12050nosyx_2_v2___1.factor)=c("Unchecked","Checked")
levels(data$pocglucose12050nosyx_2_v2___2.factor)=c("Unchecked","Checked")
levels(data$pocgluocse50andsymptoms_2_v2___1.factor)=c("Unchecked","Checked")
levels(data$pocgluocse50andsymptoms_2_v2___2.factor)=c("Unchecked","Checked")
levels(data$pocgluocse50andsymptoms_2_v2___3.factor)=c("Unchecked","Checked")
levels(data$pocgluocse50andsymptoms_2_v2___4.factor)=c("Unchecked","Checked")
levels(data$pocgluocse50andsymptoms_2_v2___5.factor)=c("Unchecked","Checked")
levels(data$hypoglycemia_symptoms_yesno_3_v2.factor)=c("Yes","No")
levels(data$protocol_continued_70_52_v2___1.factor)=c("Unchecked","Checked")
levels(data$protocol_continued_70_52_v2___2.factor)=c("Unchecked","Checked")
levels(data$protocol_continued_70_52_sym_3_v2___1.factor)=c("Unchecked","Checked")
levels(data$protocol_continued_70_52_sym_3_v2___2.factor)=c("Unchecked","Checked")
levels(data$pocglucose12050nosyx_3_v2___1.factor)=c("Unchecked","Checked")
levels(data$pocglucose12050nosyx_3_v2___2.factor)=c("Unchecked","Checked")
levels(data$pocgluocse50andsymptoms_3_v2___1.factor)=c("Unchecked","Checked")
levels(data$pocgluocse50andsymptoms_3_v2___2.factor)=c("Unchecked","Checked")
levels(data$pocgluocse50andsymptoms_3_v2___3.factor)=c("Unchecked","Checked")
levels(data$pocgluocse50andsymptoms_3_v2___4.factor)=c("Unchecked","Checked")
levels(data$pocgluocse50andsymptoms_3_v2___5.factor)=c("Unchecked","Checked")
levels(data$random_hypoglycemia_ogtt_v2.factor)=c("Yes","No")
levels(data$random_hypoglycemia_ogtt_2_v2.factor)=c("Yes","No")
levels(data$random_hypoglycemia_ogtt_3_v2.factor)=c("Yes","No")
levels(data$random_hypoglycemia_ogtt_4_v2.factor)=c("Yes","No")
levels(data$random_hypoglycemia_ogtt_5_v2.factor)=c("Yes","No")
levels(data$dischargepoc70_v2.factor)=c("IV removed","subject discharged")
levels(data$dischargepocless70_v2.factor)=c("give 15 grams carbohydrate (4 oz juice)","remove IV","discharge subject")
levels(data$ogtt_documentation_second_visit_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$heart_pounding_baseline_v2.factor)=c("0 (No Symptoms)","1","2","3","4","5","6 (Severe symptoms)")
levels(data$shaky_tremulous_baseline_v2.factor)=c("0 (No Symptoms)","1","2","3","4","5","6 (Severe symptoms)")
levels(data$nervous_anxious_baseline_v2.factor)=c("0 (No Symptoms)","1","2","3","4","5","6 (Severe symptoms)")
levels(data$sweaty_baseline_v2.factor)=c("0 (No Symptoms)","1","2","3","4","5","6 (Severe symptoms)")
levels(data$hungry_baseline_v2.factor)=c("0 (No Symptoms)","1","2","3","4","5","6 (Severe symptoms)")
levels(data$tingling_baseline_v2.factor)=c("0 (No Symptoms)","1","2","3","4","5","6 (Severe symptoms)")
levels(data$diff_thinking_baseline_v2.factor)=c("0 (No Symptoms)","1","2","3","4","5","6 (Severe symptoms)")
levels(data$tired_drowsy_baseline_v2.factor)=c("0 (No Symptoms)","1","2","3","4","5","6 (Severe symptoms)")
levels(data$weak_baseline_v2.factor)=c("0 (No Symptoms)","1","2","3","4","5","6 (Severe symptoms)")
levels(data$warm_baseline_v2.factor)=c("0 (No Symptoms)","1","2","3","4","5","6 (Severe symptoms)")
levels(data$faint_baseline_v2.factor)=c("0 (No Symptoms)","1","2","3","4","5","6 (Severe symptoms)")
levels(data$dizzy_baseline_v2.factor)=c("0 (No Symptoms)","1","2","3","4","5","6 (Severe symptoms)")
levels(data$heart_pounding_120_v2.factor)=c("0 (No Symptoms)","1","2","3","4","5","6 (Severe symptoms)")
levels(data$shaky_tremulous_120_v2.factor)=c("0 (No Symptoms)","1","2","3","4","5","6 (Severe symptoms)")
levels(data$nervous_anxious_120_v2.factor)=c("0 (No Symptoms)","1","2","3","4","5","6 (Severe symptoms)")
levels(data$sweaty_120_v2.factor)=c("0 (No Symptoms)","1","2","3","4","5","6 (Severe symptoms)")
levels(data$hungry_120_v2.factor)=c("0 (No Symptoms)","1","2","3","4","5","6 (Severe symptoms)")
levels(data$tingling_120_v2.factor)=c("0 (No Symptoms)","1","2","3","4","5","6 (Severe symptoms)")
levels(data$diff_thinking_120_v2.factor)=c("0 (No Symptoms)","1","2","3","4","5","6 (Severe symptoms)")
levels(data$tired_drowsy_120_v2.factor)=c("0 (No Symptoms)","1","2","3","4","5","6 (Severe symptoms)")
levels(data$weak_120_v2.factor)=c("0 (No Symptoms)","1","2","3","4","5","6 (Severe symptoms)")
levels(data$warm_120_v2.factor)=c("0 (No Symptoms)","1","2","3","4","5","6 (Severe symptoms)")
levels(data$faint_120_v2.factor)=c("0 (No Symptoms)","1","2","3","4","5","6 (Severe symptoms)")
levels(data$dizzy_120_v2.factor)=c("0 (No Symptoms)","1","2","3","4","5","6 (Severe symptoms)")
levels(data$heart_pounding_150_v2.factor)=c("0 (No Symptoms)","1","2","3","4","5","6 (Severe symptoms)")
levels(data$shaky_tremulous_150_v2.factor)=c("0 (No Symptoms)","1","2","3","4","5","6 (Severe symptoms)")
levels(data$nervous_anxious_150_v2.factor)=c("0 (No Symptoms)","1","2","3","4","5","6 (Severe symptoms)")
levels(data$sweaty_150_v2.factor)=c("0 (No Symptoms)","1","2","3","4","5","6 (Severe symptoms)")
levels(data$hungry_150_v2.factor)=c("0 (No Symptoms)","1","2","3","4","5","6 (Severe symptoms)")
levels(data$tingling_150_v2.factor)=c("0 (No Symptoms)","1","2","3","4","5","6 (Severe symptoms)")
levels(data$diff_thinking_150_v2.factor)=c("0 (No Symptoms)","1","2","3","4","5","6 (Severe symptoms)")
levels(data$tired_drowsy_150_v2.factor)=c("0 (No Symptoms)","1","2","3","4","5","6 (Severe symptoms)")
levels(data$weak_150_v2.factor)=c("0 (No Symptoms)","1","2","3","4","5","6 (Severe symptoms)")
levels(data$warm_150_v2.factor)=c("0 (No Symptoms)","1","2","3","4","5","6 (Severe symptoms)")
levels(data$faint_150_v2.factor)=c("0 (No Symptoms)","1","2","3","4","5","6 (Severe symptoms)")
levels(data$dizzy_150_v2.factor)=c("0 (No Symptoms)","1","2","3","4","5","6 (Severe symptoms)")
levels(data$heart_pounding_180_v2.factor)=c("0 (No Symptoms)","1","2","3","4","5","6 (Severe symptoms)")
levels(data$shaky_tremulous_180_v2.factor)=c("0 (No Symptoms)","1","2","3","4","5","6 (Severe symptoms)")
levels(data$nervous_anxious_180_v2.factor)=c("0 (No Symptoms)","1","2","3","4","5","6 (Severe symptoms)")
levels(data$sweaty_180_v2.factor)=c("0 (No Symptoms)","1","2","3","4","5","6 (Severe symptoms)")
levels(data$hungry_180_v2.factor)=c("0 (No Symptoms)","1","2","3","4","5","6 (Severe symptoms)")
levels(data$tingling_180_v2.factor)=c("0 (No Symptoms)","1","2","3","4","5","6 (Severe symptoms)")
levels(data$diff_thinking_180_v2.factor)=c("0 (No Symptoms)","1","2","3","4","5","6 (Severe symptoms)")
levels(data$tired_drowsy_180_v2.factor)=c("0 (No Symptoms)","1","2","3","4","5","6 (Severe symptoms)")
levels(data$weak_180_v2.factor)=c("0 (No Symptoms)","1","2","3","4","5","6 (Severe symptoms)")
levels(data$warm_180_v2.factor)=c("0 (No Symptoms)","1","2","3","4","5","6 (Severe symptoms)")
levels(data$faint_180_v2.factor)=c("0 (No Symptoms)","1","2","3","4","5","6 (Severe symptoms)")
levels(data$dizzy_180_v2.factor)=c("0 (No Symptoms)","1","2","3","4","5","6 (Severe symptoms)")
levels(data$ogtt_hypoglycemia_questionnairessecond_visit_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$shaking_peds_base_v2.factor)=c("Yes","No")
levels(data$fast_heart_peds_base_v2.factor)=c("Yes","No")
levels(data$sweating_peds_base_v2.factor)=c("Yes","No")
levels(data$weak_peds_base_v2.factor)=c("Yes","No")
levels(data$hunger_peds_base_v2.factor)=c("Yes","No")
levels(data$irritable_peds_base_v2.factor)=c("Yes","No")
levels(data$shaking_peds_120_v2.factor)=c("Yes","No")
levels(data$fast_heart_peds_120_v2.factor)=c("Yes","No")
levels(data$sweating_peds_120_v2.factor)=c("Yes","No")
levels(data$weak_peds_120_v2.factor)=c("Yes","No")
levels(data$hunger_peds_120_v2.factor)=c("Yes","No")
levels(data$irritable_peds_120_v2.factor)=c("Yes","No")
levels(data$shaking_peds_150_v2.factor)=c("Yes","No")
levels(data$fast_heart_peds_150_v2.factor)=c("Yes","No")
levels(data$sweating_peds_150_v2.factor)=c("Yes","No")
levels(data$weak_peds_150_v2.factor)=c("Yes","No")
levels(data$hunger_peds_150_v2.factor)=c("Yes","No")
levels(data$irritable_peds_150_v2.factor)=c("Yes","No")
levels(data$shaking_peds_180_v2.factor)=c("Yes","No")
levels(data$fast_heart_peds_180_v2.factor)=c("Yes","No")
levels(data$sweating_peds_180_v2.factor)=c("Yes","No")
levels(data$weak_peds_180_v2.factor)=c("Yes","No")
levels(data$hunger_peds_180_v2.factor)=c("Yes","No")
levels(data$irritable_peds_180_v2.factor)=c("Yes","No")
levels(data$ogtt_hypoglycemia_questionnaire_age_618_second_vis_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$questionnaire_filled_out_v2.factor)=c("Yes","No")
levels(data$v2_home_hypo.factor)=c("Yes","No")
levels(data$i_feel_v2___0.factor)=c("Unchecked","Checked")
levels(data$i_feel_v2___1.factor)=c("Unchecked","Checked")
levels(data$i_feel_v2___2.factor)=c("Unchecked","Checked")
levels(data$i_feel_v2___3.factor)=c("Unchecked","Checked")
levels(data$i_feel_v2___4.factor)=c("Unchecked","Checked")
levels(data$i_feel_v2___5.factor)=c("Unchecked","Checked")
levels(data$i_feel_v2___6.factor)=c("Unchecked","Checked")
levels(data$i_feel_v2___7.factor)=c("Unchecked","Checked")
levels(data$i_feel_v2___8.factor)=c("Unchecked","Checked")
levels(data$i_feel_v2___9.factor)=c("Unchecked","Checked")
levels(data$i_feel_v2___10.factor)=c("Unchecked","Checked")
levels(data$i_feel_v2___11.factor)=c("Unchecked","Checked")
levels(data$it_was_recognized_by_v2.factor)=c("Self","Someone else")
levels(data$i_needed_v2___0.factor)=c("Unchecked","Checked")
levels(data$i_needed_v2___1.factor)=c("Unchecked","Checked")
levels(data$i_needed_v2___2.factor)=c("Unchecked","Checked")
levels(data$juice_or_food_v2.factor)=c("Yes","No","N/A")
levels(data$another_section_1_v2.factor)=c("Yes","No")
levels(data$i_feel_2_v2___0.factor)=c("Unchecked","Checked")
levels(data$i_feel_2_v2___1.factor)=c("Unchecked","Checked")
levels(data$i_feel_2_v2___2.factor)=c("Unchecked","Checked")
levels(data$i_feel_2_v2___3.factor)=c("Unchecked","Checked")
levels(data$i_feel_2_v2___4.factor)=c("Unchecked","Checked")
levels(data$i_feel_2_v2___5.factor)=c("Unchecked","Checked")
levels(data$i_feel_2_v2___6.factor)=c("Unchecked","Checked")
levels(data$i_feel_2_v2___7.factor)=c("Unchecked","Checked")
levels(data$i_feel_2_v2___8.factor)=c("Unchecked","Checked")
levels(data$i_feel_2_v2___9.factor)=c("Unchecked","Checked")
levels(data$i_feel_2_v2___10.factor)=c("Unchecked","Checked")
levels(data$i_feel_2_v2___11.factor)=c("Unchecked","Checked")
levels(data$it_was_recognized_by_2_v2.factor)=c("Self","Someone else")
levels(data$i_needed_2_v2___0.factor)=c("Unchecked","Checked")
levels(data$i_needed_2_v2___1.factor)=c("Unchecked","Checked")
levels(data$i_needed_2_v2___2.factor)=c("Unchecked","Checked")
levels(data$juice_or_food_2_v2.factor)=c("Yes","No","N/A")
levels(data$another_section_2_v2.factor)=c("Yes","No")
levels(data$i_feel_3_v2___0.factor)=c("Unchecked","Checked")
levels(data$i_feel_3_v2___1.factor)=c("Unchecked","Checked")
levels(data$i_feel_3_v2___2.factor)=c("Unchecked","Checked")
levels(data$i_feel_3_v2___3.factor)=c("Unchecked","Checked")
levels(data$i_feel_3_v2___4.factor)=c("Unchecked","Checked")
levels(data$i_feel_3_v2___5.factor)=c("Unchecked","Checked")
levels(data$i_feel_3_v2___6.factor)=c("Unchecked","Checked")
levels(data$i_feel_3_v2___7.factor)=c("Unchecked","Checked")
levels(data$i_feel_3_v2___8.factor)=c("Unchecked","Checked")
levels(data$i_feel_3_v2___9.factor)=c("Unchecked","Checked")
levels(data$i_feel_3_v2___10.factor)=c("Unchecked","Checked")
levels(data$i_feel_3_v2___11.factor)=c("Unchecked","Checked")
levels(data$it_was_recognized_by_3_v2.factor)=c("Self","Someone else")
levels(data$i_needed_3_v2___0.factor)=c("Unchecked","Checked")
levels(data$i_needed_3_v2___1.factor)=c("Unchecked","Checked")
levels(data$i_needed_3_v2___2.factor)=c("Unchecked","Checked")
levels(data$juice_or_food_3_v2.factor)=c("Yes","No","N/A")
levels(data$another_section_3_v2.factor)=c("Yes","No")
levels(data$i_feel_4_v2___0.factor)=c("Unchecked","Checked")
levels(data$i_feel_4_v2___1.factor)=c("Unchecked","Checked")
levels(data$i_feel_4_v2___2.factor)=c("Unchecked","Checked")
levels(data$i_feel_4_v2___3.factor)=c("Unchecked","Checked")
levels(data$i_feel_4_v2___4.factor)=c("Unchecked","Checked")
levels(data$i_feel_4_v2___5.factor)=c("Unchecked","Checked")
levels(data$i_feel_4_v2___6.factor)=c("Unchecked","Checked")
levels(data$i_feel_4_v2___7.factor)=c("Unchecked","Checked")
levels(data$i_feel_4_v2___8.factor)=c("Unchecked","Checked")
levels(data$i_feel_4_v2___9.factor)=c("Unchecked","Checked")
levels(data$i_feel_4_v2___10.factor)=c("Unchecked","Checked")
levels(data$i_feel_4_v2___11.factor)=c("Unchecked","Checked")
levels(data$it_was_recognized_by_4_v2.factor)=c("Self","Someone else")
levels(data$i_needed_4_v2___0.factor)=c("Unchecked","Checked")
levels(data$i_needed_4_v2___1.factor)=c("Unchecked","Checked")
levels(data$i_needed_4_v2___2.factor)=c("Unchecked","Checked")
levels(data$juice_or_food_4_v2.factor)=c("Yes","No","N/A")
levels(data$another_section_4_v2.factor)=c("Yes","No")
levels(data$i_feel_5_v2___0.factor)=c("Unchecked","Checked")
levels(data$i_feel_5_v2___1.factor)=c("Unchecked","Checked")
levels(data$i_feel_5_v2___2.factor)=c("Unchecked","Checked")
levels(data$i_feel_5_v2___3.factor)=c("Unchecked","Checked")
levels(data$i_feel_5_v2___4.factor)=c("Unchecked","Checked")
levels(data$i_feel_5_v2___5.factor)=c("Unchecked","Checked")
levels(data$i_feel_5_v2___6.factor)=c("Unchecked","Checked")
levels(data$i_feel_5_v2___7.factor)=c("Unchecked","Checked")
levels(data$i_feel_5_v2___8.factor)=c("Unchecked","Checked")
levels(data$i_feel_5_v2___9.factor)=c("Unchecked","Checked")
levels(data$i_feel_5_v2___10.factor)=c("Unchecked","Checked")
levels(data$i_feel_5_v2___11.factor)=c("Unchecked","Checked")
levels(data$it_was_recognized_by_5_v2.factor)=c("Self","Someone else")
levels(data$i_needed_5_v2___0.factor)=c("Unchecked","Checked")
levels(data$i_needed_5_v2___1.factor)=c("Unchecked","Checked")
levels(data$i_needed_5_v2___2.factor)=c("Unchecked","Checked")
levels(data$juice_or_food_5_v2.factor)=c("Yes","No","N/A")
levels(data$another_section_5_v2.factor)=c("Yes","No")
levels(data$i_feel_6_v2___0.factor)=c("Unchecked","Checked")
levels(data$i_feel_6_v2___1.factor)=c("Unchecked","Checked")
levels(data$i_feel_6_v2___2.factor)=c("Unchecked","Checked")
levels(data$i_feel_6_v2___3.factor)=c("Unchecked","Checked")
levels(data$i_feel_6_v2___4.factor)=c("Unchecked","Checked")
levels(data$i_feel_6_v2___5.factor)=c("Unchecked","Checked")
levels(data$i_feel_6_v2___6.factor)=c("Unchecked","Checked")
levels(data$i_feel_6_v2___7.factor)=c("Unchecked","Checked")
levels(data$i_feel_6_v2___8.factor)=c("Unchecked","Checked")
levels(data$i_feel_6_v2___9.factor)=c("Unchecked","Checked")
levels(data$i_feel_6_v2___10.factor)=c("Unchecked","Checked")
levels(data$i_feel_6_v2___11.factor)=c("Unchecked","Checked")
levels(data$it_was_recognized_by_6_v2.factor)=c("Self","Someone else")
levels(data$i_needed_6_v2___0.factor)=c("Unchecked","Checked")
levels(data$i_needed_6_v2___1.factor)=c("Unchecked","Checked")
levels(data$i_needed_6_v2___2.factor)=c("Unchecked","Checked")
levels(data$juice_or_food_6_v2.factor)=c("Yes","No","N/A")
levels(data$another_section_6_v2.factor)=c("Yes","No")
levels(data$i_feel_7_v2___0.factor)=c("Unchecked","Checked")
levels(data$i_feel_7_v2___1.factor)=c("Unchecked","Checked")
levels(data$i_feel_7_v2___2.factor)=c("Unchecked","Checked")
levels(data$i_feel_7_v2___3.factor)=c("Unchecked","Checked")
levels(data$i_feel_7_v2___4.factor)=c("Unchecked","Checked")
levels(data$i_feel_7_v2___5.factor)=c("Unchecked","Checked")
levels(data$i_feel_7_v2___6.factor)=c("Unchecked","Checked")
levels(data$i_feel_7_v2___7.factor)=c("Unchecked","Checked")
levels(data$i_feel_7_v2___8.factor)=c("Unchecked","Checked")
levels(data$i_feel_7_v2___9.factor)=c("Unchecked","Checked")
levels(data$i_feel_7_v2___10.factor)=c("Unchecked","Checked")
levels(data$i_feel_7_v2___11.factor)=c("Unchecked","Checked")
levels(data$it_was_recognized_by_7_v2.factor)=c("Self","Someone else")
levels(data$i_needed_7_v2___0.factor)=c("Unchecked","Checked")
levels(data$i_needed_7_v2___1.factor)=c("Unchecked","Checked")
levels(data$i_needed_7_v2___2.factor)=c("Unchecked","Checked")
levels(data$juice_or_food_7_v2.factor)=c("Yes","No","N/A")
levels(data$another_section_7_v2.factor)=c("Yes","No")
levels(data$i_feel_8_v2___0.factor)=c("Unchecked","Checked")
levels(data$i_feel_8_v2___1.factor)=c("Unchecked","Checked")
levels(data$i_feel_8_v2___2.factor)=c("Unchecked","Checked")
levels(data$i_feel_8_v2___3.factor)=c("Unchecked","Checked")
levels(data$i_feel_8_v2___4.factor)=c("Unchecked","Checked")
levels(data$i_feel_8_v2___5.factor)=c("Unchecked","Checked")
levels(data$i_feel_8_v2___6.factor)=c("Unchecked","Checked")
levels(data$i_feel_8_v2___7.factor)=c("Unchecked","Checked")
levels(data$i_feel_8_v2___8.factor)=c("Unchecked","Checked")
levels(data$i_feel_8_v2___9.factor)=c("Unchecked","Checked")
levels(data$i_feel_8_v2___10.factor)=c("Unchecked","Checked")
levels(data$i_feel_8_v2___11.factor)=c("Unchecked","Checked")
levels(data$it_was_recognized_by_8_v2.factor)=c("Self","Someone else")
levels(data$i_needed_8_v2___0.factor)=c("Unchecked","Checked")
levels(data$i_needed_8_v2___1.factor)=c("Unchecked","Checked")
levels(data$i_needed_8_v2___2.factor)=c("Unchecked","Checked")
levels(data$juice_or_food_8_v2.factor)=c("Yes","No","N/A")
levels(data$athome_adult_hypoglycemia_questionnairesecond_visi_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$child_home_completed_v2.factor)=c("Yes","No")
levels(data$v2_child_home_hypo.factor)=c("Yes","No")
levels(data$symptoms_child_hypo_v2___0.factor)=c("Unchecked","Checked")
levels(data$symptoms_child_hypo_v2___1.factor)=c("Unchecked","Checked")
levels(data$symptoms_child_hypo_v2___2.factor)=c("Unchecked","Checked")
levels(data$symptoms_child_hypo_v2___3.factor)=c("Unchecked","Checked")
levels(data$symptoms_child_hypo_v2___4.factor)=c("Unchecked","Checked")
levels(data$symptoms_child_hypo_v2___5.factor)=c("Unchecked","Checked")
levels(data$another_section_filled_v2.factor)=c("Yes","No")
levels(data$symptoms_child_hypo_2_v2___0.factor)=c("Unchecked","Checked")
levels(data$symptoms_child_hypo_2_v2___1.factor)=c("Unchecked","Checked")
levels(data$symptoms_child_hypo_2_v2___2.factor)=c("Unchecked","Checked")
levels(data$symptoms_child_hypo_2_v2___3.factor)=c("Unchecked","Checked")
levels(data$symptoms_child_hypo_2_v2___4.factor)=c("Unchecked","Checked")
levels(data$symptoms_child_hypo_2_v2___5.factor)=c("Unchecked","Checked")
levels(data$third_section_filled_out_v2.factor)=c("Yes","No")
levels(data$symptoms_child_hypo_3_v2___0.factor)=c("Unchecked","Checked")
levels(data$symptoms_child_hypo_3_v2___1.factor)=c("Unchecked","Checked")
levels(data$symptoms_child_hypo_3_v2___2.factor)=c("Unchecked","Checked")
levels(data$symptoms_child_hypo_3_v2___3.factor)=c("Unchecked","Checked")
levels(data$symptoms_child_hypo_3_v2___4.factor)=c("Unchecked","Checked")
levels(data$symptoms_child_hypo_3_v2___5.factor)=c("Unchecked","Checked")
levels(data$fourth_section_filled_v2.factor)=c("Yes","No")
levels(data$symptoms_child_hypo_4_v2___0.factor)=c("Unchecked","Checked")
levels(data$symptoms_child_hypo_4_v2___1.factor)=c("Unchecked","Checked")
levels(data$symptoms_child_hypo_4_v2___2.factor)=c("Unchecked","Checked")
levels(data$symptoms_child_hypo_4_v2___3.factor)=c("Unchecked","Checked")
levels(data$symptoms_child_hypo_4_v2___4.factor)=c("Unchecked","Checked")
levels(data$symptoms_child_hypo_4_v2___5.factor)=c("Unchecked","Checked")
levels(data$fifth_section_filled_v2.factor)=c("Yes","No")
levels(data$symptoms_child_hypo_5_v2___0.factor)=c("Unchecked","Checked")
levels(data$symptoms_child_hypo_5_v2___1.factor)=c("Unchecked","Checked")
levels(data$symptoms_child_hypo_5_v2___2.factor)=c("Unchecked","Checked")
levels(data$symptoms_child_hypo_5_v2___3.factor)=c("Unchecked","Checked")
levels(data$symptoms_child_hypo_5_v2___4.factor)=c("Unchecked","Checked")
levels(data$symptoms_child_hypo_5_v2___5.factor)=c("Unchecked","Checked")
levels(data$sixth_section_filled_v2.factor)=c("Yes","No")
levels(data$symptoms_child_hypo_6_v2___0.factor)=c("Unchecked","Checked")
levels(data$symptoms_child_hypo_6_v2___1.factor)=c("Unchecked","Checked")
levels(data$symptoms_child_hypo_6_v2___2.factor)=c("Unchecked","Checked")
levels(data$symptoms_child_hypo_6_v2___3.factor)=c("Unchecked","Checked")
levels(data$symptoms_child_hypo_6_v2___4.factor)=c("Unchecked","Checked")
levels(data$symptoms_child_hypo_6_v2___5.factor)=c("Unchecked","Checked")
levels(data$seventh_section_filled_v2.factor)=c("Yes","No")
levels(data$symptoms_child_hypo_7_v2___0.factor)=c("Unchecked","Checked")
levels(data$symptoms_child_hypo_7_v2___1.factor)=c("Unchecked","Checked")
levels(data$symptoms_child_hypo_7_v2___2.factor)=c("Unchecked","Checked")
levels(data$symptoms_child_hypo_7_v2___3.factor)=c("Unchecked","Checked")
levels(data$symptoms_child_hypo_7_v2___4.factor)=c("Unchecked","Checked")
levels(data$symptoms_child_hypo_7_v2___5.factor)=c("Unchecked","Checked")
levels(data$eighth_section_filled_v2.factor)=c("Yes","No")
levels(data$symptoms_child_hypo_8_v2___0.factor)=c("Unchecked","Checked")
levels(data$symptoms_child_hypo_8_v2___1.factor)=c("Unchecked","Checked")
levels(data$symptoms_child_hypo_8_v2___2.factor)=c("Unchecked","Checked")
levels(data$symptoms_child_hypo_8_v2___3.factor)=c("Unchecked","Checked")
levels(data$symptoms_child_hypo_8_v2___4.factor)=c("Unchecked","Checked")
levels(data$symptoms_child_hypo_8_v2___5.factor)=c("Unchecked","Checked")
levels(data$athome_child_618_hypoglycemia_questionnairesecond_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$pft_yes_no_v2.factor)=c("Yes","No")
levels(data$pulmonary_functionsecond_visit_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$ae_occur_v2.factor)=c("Yes","No")
levels(data$ae_severity_v2.factor)=c("mild","moderate","severe")
levels(data$action_taken_v2.factor)=c("none","discontinued","interrupted")
levels(data$ae_outcome_v2.factor)=c("recovered w/o sequelae","recovered with sequelae","ongoing","fatal","unknown")
levels(data$ae_relation_to_study_v2.factor)=c("Definite","Probable","Possible","not likely","unrelated")
levels(data$ae_serious_v2.factor)=c("yes","no")
levels(data$adverse_event_logsecond_visit_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$y_n_protocol_dev_v2.factor)=c("Yes","No")
levels(data$deviation_type_v2.factor)=c("Inclusion/Exclusion","No Informed Consent/Assent","Out-of-window procedure/test","Sample collection missed/collected in error/lost","Use of prohibited medications","Glucola administration","Hypoglycemia monitoring","Tanner staging not completed","Pregnancy test not completed","Missed hypoglycemia questionnaire(s)","Other")
levels(data$timing_of_deviation_v2.factor)=c("Deviation occurred prior treatment","Deviation occurred during treatment","Deviation occurred after treatment")
levels(data$dev_id_by_v2.factor)=c("Principal Investigator","Study Coordinator","Study Staff","Nursing staff","Other")
levels(data$deviation_result_ae_v2.factor)=c("Yes","No")
levels(data$second_protocol_dev_v2.factor)=c("Yes","No")
levels(data$deviation_type_2_v2.factor)=c("Inclusion/Exclusion","No Informed Consent/Assent","Out-of-window procedure/test","Sample collection missed/collected in error/lost","Use of prohibited medications","Glucola administration","Hypoglycemia monitoring","Tanner staging not completed","Pregnancy test not completed","Missed hypoglycemia questionnaire(s)","Other")
levels(data$timing_of_deviation_2_v2.factor)=c("Deviation occurred prior treatment","Deviation occurred during treatment","Deviation occurred after treatment")
levels(data$dev_id_by_2_v2.factor)=c("Principal Investigator","Study Coordinator","Study Staff","Nursing staff","Other")
levels(data$deviation_result_ae_2_v2.factor)=c("Yes","No")
levels(data$third_protocol_dev_v2.factor)=c("Yes","No")
levels(data$deviation_type_3_v2.factor)=c("Inclusion/Exclusion","No Informed Consent/Assent","Out-of-window procedure/test","Sample collection missed/collected in error/lost","Use of prohibited medications","Glucola administration","Hypoglycemia monitoring","Tanner staging not completed","Pregnancy test not completed","Missed hypoglycemia questionnaire(s)","Other")
levels(data$timing_of_deviation_3_v2.factor)=c("Deviation occurred prior treatment","Deviation occurred during treatment","Deviation occurred after treatment")
levels(data$dev_id_by_3_v2.factor)=c("Principal Investigator","Study Coordinator","Study Staff","Nursing staff","Other")
levels(data$deviation_result_ae_3_v2.factor)=c("Yes","No")
levels(data$fourth_protocol_dev_v2.factor)=c("Yes","No")
levels(data$deviation_type_4_v2.factor)=c("Inclusion/Exclusion","No Informed Consent/Assent","Out-of-window procedure/test","Sample collection missed/collected in error/lost","Use of prohibited medications","Glucola administration","Hypoglycemia monitoring","Tanner staging not completed","Pregnancy test not completed","Missed hypoglycemia questionnaire(s)","Other")
levels(data$timing_of_deviation_4_v2.factor)=c("Deviation occurred prior treatment","Deviation occurred during treatment","Deviation occurred after treatment")
levels(data$dev_id_by_4_v2.factor)=c("Principal Investigator","Study Coordinator","Study Staff","Nursing staff","Other")
levels(data$deviation_result_ae_4_v2.factor)=c("Yes","No")
levels(data$protocol_deviationsecond_visit_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$agreed_to_cgm_v2.factor)=c("Yes","No")
levels(data$cgm_instructions_v2___1.factor)=c("Unchecked","Checked")
levels(data$cgm_instructions_v2___2.factor)=c("Unchecked","Checked")
levels(data$cgm_instructions_v2___3.factor)=c("Unchecked","Checked")
levels(data$cgm_placement_site_v2.factor)=c("right arm","left arm")
levels(data$cgm_data_success_failure_v2.factor)=c("Success","Failure")
levels(data$cgm_gaps_filled_in_v2.factor)=c("Yes","No")
levels(data$num_hours_good_data_v2.factor)=c("24 hours","48 hours","72 hours","96 hours","120 hours","144 hours","168 hours")
levels(data$total_sensor_readings_v2.factor)=c("288","576","864","1152","1440","1728","2016")
levels(data$cgm_datasecond_visit_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$patient_undergo_dexa_v2.factor)=c("Yes","No")
levels(data$make_of_dxa_machine_v2.factor)=c("hologic","Lunar")
levels(data$dxa_datasecond_visit_complete.factor)=c("Incomplete","Unverified","Complete")
