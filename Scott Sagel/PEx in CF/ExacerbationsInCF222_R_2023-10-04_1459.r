#Clear existing data and graphics
rm(list=ls())
graphics.off()
#Load Hmisc library
library(Hmisc)
#Read Data
data=read.csv('~/Documents/Work/Vigers/CF/Scott Sagel/PEx in CF/Data_Raw/ExacerbationsInCF222_DATA_2023-10-04_1459.csv')
#Setting Labels

label(data$sid)="Subject ID"
label(data$redcap_event_name)="Event Name"
label(data$redcap_repeat_instrument)="Repeat Instrument"
label(data$redcap_repeat_instance)="Repeat Instance"
label(data$redcap_data_access_group)="Data Access Group"
label(data$site)="Site"
label(data$yob)="Year of birth"
label(data$sex)="Sex assigned at birth"
label(data$race)="Race"
label(data$mixed_race___1)="Specify races, if two or more (choice=White)"
label(data$mixed_race___2)="Specify races, if two or more (choice=Black or African-American)"
label(data$mixed_race___3)="Specify races, if two or more (choice=American Indian or Alaska Native)"
label(data$mixed_race___4)="Specify races, if two or more (choice=Asian)"
label(data$mixed_race___5)="Specify races, if two or more (choice=Native Hawaiian or Pacific Islander)"
label(data$ethnicity)="Ethnicity"
label(data$insurance___1)="Insurance (choice=Private insurance)"
label(data$insurance___2)="Insurance (choice=Medicare)"
label(data$insurance___3)="Insurance (choice=Medicaid)"
label(data$insurance___4)="Insurance (choice=State special needs program (e.g. CHP+))"
label(data$insurance___5)="Insurance (choice=Tricare/other military health plan)"
label(data$insurance___6)="Insurance (choice=Indian Health Service)"
label(data$insurance___7)="Insurance (choice=Other)"
label(data$insurance___8)="Insurance (choice=None)"
label(data$mutation1)="Mutation 1"
label(data$mutation1_spec)="Specify mutation 1, if Other"
label(data$mutation2)="Mutation 2"
label(data$mutation2_spec)="Specify mutation 2, if Other"
label(data$pancreatic_status)="Pancreatic status"
label(data$demographics_complete)="Complete?"
label(data$admit_year)="Year of admission"
label(data$days_admit)="# of days admitted"
label(data$age_at_admit)="Patients age at admission (in years)"
label(data$cfrd_status)="CFRD, IGT, or Type I DM"
label(data$abpa)="ABPA"
label(data$liver_disease)="CF-related Liver Disease"
label(data$cfrd_status_spec)="CFRD status at time of admission"
label(data$cftr_mod)="CFTR modulator (any)"
label(data$azithro)="Azithromycin (oral, chronic)"
label(data$inhaled_abx)="Inhaled antibiotics - inhaled aztreonam or any formulation of inhaled tobramycin"
label(data$cftr_mod_spec)="What CFTR modulator was patient taking at time of admission?"
label(data$height)="Height (in cm) at admission or within 30 days prior "
label(data$weight)="Weight (in kg) at admission or within 30 days prior "
label(data$bmi)="BMI at admit"
label(data$fev1_baseline_total)="Total number of clinical FEV1 measurements in the 6 months prior to admission (if none, enter 0)."
label(data$fev1_baseline1)="First Baseline FEV1"
label(data$height_baseline1)="Height (in cm) at time of first baseline FEV1"
label(data$fev1_baseline2)="Second Baseline FEV1"
label(data$fev1_baseline3)="Third Baseline FEV1"
label(data$fev1_baseline4)="Fourth Baseline FEV1"
label(data$fev1_baseline5)="Fifth Baseline FEV1"
label(data$fev1_baseline6)="Sixth Baseline FEV1"
label(data$fev1_admit)="Admission FEV1: Lowest FEV1 within 30 days before (or at) admission"
label(data$fev1_discharge)="Discharge FEV1: Inpatient FEV1 closest to the date of discharge or the earliest FEV1 measured up to 30 days after the admission."
label(data$admissions_complete)="Complete?"
label(data$bacteria_6months___1)="CF-related bacteria in respiratory cultures within 6 months of admission (choice=A. xylosoxidans)"
label(data$bacteria_6months___2)="CF-related bacteria in respiratory cultures within 6 months of admission (choice=B. cepacia complex)"
label(data$bacteria_6months___3)="CF-related bacteria in respiratory cultures within 6 months of admission (choice=H. influenzae)"
label(data$bacteria_6months___4)="CF-related bacteria in respiratory cultures within 6 months of admission (choice=MRSA)"
label(data$bacteria_6months___5)="CF-related bacteria in respiratory cultures within 6 months of admission (choice=Methicillin-susceptible Staph aureus)"
label(data$bacteria_6months___6)="CF-related bacteria in respiratory cultures within 6 months of admission (choice=P. aeruginosa)"
label(data$bacteria_6months___7)="CF-related bacteria in respiratory cultures within 6 months of admission (choice=S. maltophilia)"
label(data$bacteria_6months___8)="CF-related bacteria in respiratory cultures within 6 months of admission (choice=Other bacteria {bacteria_6months_other})"
label(data$bacteria_6months_other)="Specify other bacteria in the last 6 months: "
label(data$days_to_cx)="Days between admission date and date of culture:"
label(data$admit_cx_source)="Source of respiratory culture at admit or within 30 days prior to admission"
label(data$admit_cx_negative)="Negative culture"
label(data$results_semiorfull)="Are bacterial  results available as semi-quantitative or fully quantitative?"
label(data$admit_cx_results___1)="Admission culture results (choice=A. xylosoxidans)"
label(data$admit_cx_results___2)="Admission culture results (choice=B. cepacia complex)"
label(data$admit_cx_results___3)="Admission culture results (choice=H. influenzae)"
label(data$admit_cx_results___4)="Admission culture results (choice=MRSA)"
label(data$admit_cx_results___5)="Admission culture results (choice=Methicillin-susceptible Staph aureus)"
label(data$admit_cx_results___6)="Admission culture results (choice=P. aeruginosa)"
label(data$admit_cx_results___7)="Admission culture results (choice=P. aeruginosa mucoid)"
label(data$admit_cx_results___8)="Admission culture results (choice=S. maltophilia)"
label(data$admit_cx_results___9)="Admission culture results (choice=Other bacteria {bacteria_admit_other})"
label(data$bacteria_admit_other)="Specify other bacteria:"
label(data$axylos_number)="A. xylosoxidans number"
label(data$axylos_superscript)="A. xylosoxidans superscript"
label(data$axylos_throat)="A. xylosoxidans throat results"
label(data$bcepacia_number)="B. cepacia complex number"
label(data$bcepacia_superscript)="B. cepacia superscript"
label(data$bcepacia_throat)="B. cepacia throat results"
label(data$hflu_number)="H. influenzae number"
label(data$hflu_superscript)="H. influenzae superscript"
label(data$hflu_throat)="H. influenzae throat results"
label(data$mrsa_number)="MRSA number"
label(data$mrsa_superscript)="MRSA superscript"
label(data$mrsa_throat)="MRSA throat results"
label(data$mssa_number)="MSSA number"
label(data$mssa_superscript)="MSSA superscript"
label(data$mssa_throat)="MSSA throat results"
label(data$psa_number)="P. aeruginosa number"
label(data$psa_superscript)="P. aeruginosa superscript"
label(data$psa_throat)="P. aeruginosa throat results"
label(data$psa_mucoid_number)="P. aeruginosa (mucoid) number"
label(data$psa_mucoid_superscript)="P. aeruginosa (mucoid) superscript"
label(data$psa_mucoid_throat)="P. aeruginosa (mucoid) throat results"
label(data$smalto_number)="S. maltophilia number"
label(data$smalto_superscript)="S. maltophilia superscript"
label(data$smalto_throat)="S. maltophilia throat results"
label(data$abx_suscept)="Antibiotic susceptibility testing done for first Pseudomonas strain?"
label(data$suscept_aztreo)="Aztreonam"
label(data$suscept_ceftaz)="Ceftazidime"
label(data$suscept_cipro)="Ciprofloxacin"
label(data$suscept_imipen)="Imipenem"
label(data$suscept_levo)="Levofloxacin"
label(data$suscept_mero)="Meropenem"
label(data$suscept_piper_tazo)="Piperacillin-tazobactam"
label(data$suscept_tobra)="Tobramycin"
label(data$abx_suscept_2)="Antibiotic susceptibility testing done for a second Pseudomonas strain?"
label(data$suscept_aztreo2)="Aztreonam"
label(data$suscept_ceftaz2)="Ceftazidime"
label(data$suscept_cipro2)="Ciprofloxacin"
label(data$suscept_impen2)="Imipenem"
label(data$suscept_levo2)="Levofloxacin"
label(data$suscept_mero2)="Meropenem"
label(data$suscept_piper_tazo2)="Piperacillin-tazobactam"
label(data$suscept_tobra2)="Tobramycin"
label(data$fungal_test)="Fungal testing performed?"
label(data$fungal_test_results)="Fungal testing results"
label(data$fungi___1)="Fungus/i isolated: (choice=Aspergillus fumigatus)"
label(data$fungi___2)="Fungus/i isolated: (choice=Aspergillus (other species))"
label(data$fungi___3)="Fungus/i isolated: (choice=Scedosporium apiospermum)"
label(data$fungi___4)="Fungus/i isolated: (choice=Candidia (any species))"
label(data$fungi___5)="Fungus/i isolated: (choice=Other fungus {fungi_other})"
label(data$fungi_other)="Specify other fungus: "
label(data$ntm_test)="NTM testing performed?"
label(data$ntm_test_results)="NTM testing results"
label(data$ntm___1)="Non-tuberculous mycobacteria isolated: (choice=M. abscessus species)"
label(data$ntm___2)="Non-tuberculous mycobacteria isolated: (choice=M. avium complex species)"
label(data$ntm___3)="Non-tuberculous mycobacteria isolated: (choice=Other NTM species {ntm_other})"
label(data$ntm_other)="Specify other NTM isolated"
label(data$viral_test)="Viral testing performed"
label(data$viral_test_results)="Viral testing results"
label(data$viruses___1)="Viruses detected (choice=Influenza A or B)"
label(data$viruses___2)="Viruses detected (choice=Respiratory Syncytial Virus)"
label(data$viruses___3)="Viruses detected (choice=Rhinovirus/enterovirus)"
label(data$viruses___4)="Viruses detected (choice=SARS CoV-2)"
label(data$viruses___5)="Viruses detected (choice=Other virus {virus_other})"
label(data$virus_other)="Specify virus(es) not listed above: "
label(data$admit_cx_2)="Add a second culture for this admission?"
label(data$days_to_cx_2)="Days between admission date and date of culture:"
label(data$admit_cx_source2)="Source of respiratory culture at admit or within 30 days prior to admission"
label(data$admit_cx_negative2)="Negative culture"
label(data$results_semiorfull2)="Are bacterial  results available as semi-quantitative or fully quantitative?"
label(data$admit_cx_results2___1)="Admission second culture results (choice=A. xylosoxidans)"
label(data$admit_cx_results2___2)="Admission second culture results (choice=B. cepacia complex)"
label(data$admit_cx_results2___3)="Admission second culture results (choice=H. influenzae)"
label(data$admit_cx_results2___4)="Admission second culture results (choice=MRSA)"
label(data$admit_cx_results2___5)="Admission second culture results (choice=Methicillin-susceptible Staph aureus)"
label(data$admit_cx_results2___6)="Admission second culture results (choice=P. aeruginosa)"
label(data$admit_cx_results2___7)="Admission second culture results (choice=P. aeruginosa mucoid)"
label(data$admit_cx_results2___8)="Admission second culture results (choice=S. maltophilia)"
label(data$admit_cx_results2___9)="Admission second culture results (choice=Other bacteria {bacteria_admit_other_2})"
label(data$bacteria_admit_other_2)="Specify other bacteria:"
label(data$axylos_number2)="A. xylosoxidans number"
label(data$axylos_superscript2)="A. xylosoxidans superscript"
label(data$axylos_throat2)="A. xylosoxidans throat results"
label(data$bcepacia_number2)="B. cepacia complex number"
label(data$bcepacia_superscript2)="B. cepacia superscript"
label(data$bcepacia_throat2)="B. cepacia throat results"
label(data$hflu_number2)="H. influenzae number"
label(data$hflu_superscript2)="H. influenzae superscript"
label(data$hflu_throat2)="H. influenzae throat results"
label(data$mrsa_number2)="MRSA number"
label(data$mrsa_superscript2)="MRSA superscript"
label(data$mrsa_throat2)="MRSA throat results"
label(data$mssa_number2)="MSSA number"
label(data$mssa_superscript2)="MSSA superscript"
label(data$mssa_throat2)="MSSA throat results"
label(data$psa_number2)="P. aeruginosa number"
label(data$psa_superscript2)="P. aeruginosa superscript"
label(data$psa_throat2)="P. aeruginosa throat results"
label(data$psa_mucoid_number2)="P. aeruginosa (mucoid) number"
label(data$psa_mucoid_superscript2)="P. aeruginosa (mucoid) superscript"
label(data$psa_mucoid_throat2)="P. aeruginosa (mucoid) throat results"
label(data$smalto_number2)="S. maltophilia number"
label(data$smalto_superscript2)="S. maltophilia superscript"
label(data$smalto_throat2)="S. maltophilia throat results"
label(data$abx_suscept_2nd)="Antibiotic susceptibility testing done for first Pseudomonas strain?"
label(data$suscept_aztreo_2nd)="Aztreonam"
label(data$suscept_ceftaz_2nd)="Ceftazidime"
label(data$suscept_cipro_2nd)="Ciprofloxacin"
label(data$suscept_imipen_2nd)="Imipenem"
label(data$suscept_levo_2nd)="Levofloxacin"
label(data$suscept_mero_2nd)="Meropenem"
label(data$suscept_piper_tazo_2nd)="Piperacillin-tazobactam"
label(data$suscept_tobra_2nd)="Tobramycin"
label(data$abx_suscept_2nd_2)="Was antibiotic susceptibility testing done for a second Pseudomonas strain?"
label(data$suscept_aztreo_2nd_2)="Aztreonam"
label(data$suscept_ceftaz_2nd_2)="Ceftazidime"
label(data$suscept_cipro_2nd_2)="Ciprofloxacin"
label(data$suscept_imipen_2nd_2)="Imipenem"
label(data$suscept_levo_2nd_2)="Levofloxacin"
label(data$suscept_mero_2nd_2)="Meropenem"
label(data$suscept_piper_tazo_2nd_2)="Piperacillin-tazobactam"
label(data$suscept_tobra_2nd_2)="Tobramycin"
label(data$fungal_test2)="Fungal testing performed?"
label(data$fungal_test_results2)="Fungal testing results"
label(data$fungi2___1)="Fungus/i isolated: (choice=Aspergillus fumigatus)"
label(data$fungi2___2)="Fungus/i isolated: (choice=Aspergillus (other species))"
label(data$fungi2___3)="Fungus/i isolated: (choice=Scedosporium apiospermum)"
label(data$fungi2___4)="Fungus/i isolated: (choice=Candidia (any species))"
label(data$fungi2___5)="Fungus/i isolated: (choice=Other fungus {fungi_other2})"
label(data$fungi_other2)="Specify other fungus: "
label(data$ntm_test2)="NTM testing performed?"
label(data$ntm_test_results2)="NTM testing results"
label(data$ntm2___1)="Non-tuberculous mycobacteria isolated: (choice=M. abscessus species)"
label(data$ntm2___2)="Non-tuberculous mycobacteria isolated: (choice=M. avium complex species)"
label(data$ntm2___3)="Non-tuberculous mycobacteria isolated: (choice=Other NTM species {ntm_other2})"
label(data$ntm_other2)="Specify other NTM isolated"
label(data$microbiology_complete)="Complete?"
label(data$abx_iv___21)="Intravenous antibiotic(s) used  (choice=NONE)"
label(data$abx_iv___1)="Intravenous antibiotic(s) used  (choice=Amikacin)"
label(data$abx_iv___2)="Intravenous antibiotic(s) used  (choice=Ampicillin/subactam)"
label(data$abx_iv___3)="Intravenous antibiotic(s) used  (choice=Aztreonam)"
label(data$abx_iv___4)="Intravenous antibiotic(s) used  (choice=Cefazolin)"
label(data$abx_iv___5)="Intravenous antibiotic(s) used  (choice=Cefepime)"
label(data$abx_iv___6)="Intravenous antibiotic(s) used  (choice=Cefiderocol)"
label(data$abx_iv___7)="Intravenous antibiotic(s) used  (choice=Ceftaroline)"
label(data$abx_iv___8)="Intravenous antibiotic(s) used  (choice=Ceftazidime)"
label(data$abx_iv___9)="Intravenous antibiotic(s) used  (choice=Ceftazidime/avibactam)"
label(data$abx_iv___10)="Intravenous antibiotic(s) used  (choice=Ceftolozane/Tazobactam)"
label(data$abx_iv___11)="Intravenous antibiotic(s) used  (choice=Ceftriaxone)"
label(data$abx_iv___12)="Intravenous antibiotic(s) used  (choice=Ciprofloxacin)"
label(data$abx_iv___13)="Intravenous antibiotic(s) used  (choice=Colistimethate)"
label(data$abx_iv___15)="Intravenous antibiotic(s) used  (choice=Levofloxacin)"
label(data$abx_iv___16)="Intravenous antibiotic(s) used  (choice=Linezolid)"
label(data$abx_iv___17)="Intravenous antibiotic(s) used  (choice=Meropenem)"
label(data$abx_iv___18)="Intravenous antibiotic(s) used  (choice=Piperacillin/Tazobactam)"
label(data$abx_iv___19)="Intravenous antibiotic(s) used  (choice=Tobramycin)"
label(data$abx_iv___20)="Intravenous antibiotic(s) used  (choice=Vancomycin)"
label(data$abx_iv___14)="Intravenous antibiotic(s) used  (choice=Other {abx_iv_other})"
label(data$abx_iv_other)="Specify IV antibiotic, if Other"
label(data$abx_oral___9)="Oral antibiotic(s) used  (choice=NONE)"
label(data$abx_oral___1)="Oral antibiotic(s) used  (choice=Azithromycin)"
label(data$abx_oral___2)="Oral antibiotic(s) used  (choice=Ciprofloxacin)"
label(data$abx_oral___3)="Oral antibiotic(s) used  (choice=Clofazamine)"
label(data$abx_oral___4)="Oral antibiotic(s) used  (choice=Doxycycline)"
label(data$abx_oral___5)="Oral antibiotic(s) used  (choice=Levofloxacin)"
label(data$abx_oral___6)="Oral antibiotic(s) used  (choice=Linezolid)"
label(data$abx_oral___7)="Oral antibiotic(s) used  (choice=Sulfamethoxazole-trimethoprim (Bactrim))"
label(data$abx_oral___8)="Oral antibiotic(s) used  (choice=Other {abx_oral_other})"
label(data$abx_oral_other)="Specify oral antibiotic, if Other"
label(data$abx_inh___5)="Inhaled antibiotic(s) used  (choice=NONE)"
label(data$abx_inh___1)="Inhaled antibiotic(s) used  (choice=Aztreonam)"
label(data$abx_inh___2)="Inhaled antibiotic(s) used  (choice=Colistimethate)"
label(data$abx_inh___3)="Inhaled antibiotic(s) used  (choice=Tobramycin)"
label(data$abx_inh___4)="Inhaled antibiotic(s) used  (choice=Other {abx_inh_other})"
label(data$abx_inh_other)="Specify inhaled antibiotic, if Other"
label(data$steroids_system)="Systemic steroids used?"
label(data$steroids_oral)="Oral steroids used?"
label(data$steroids_iv)="IV steroids used?"
label(data$inpatient_medications_complete)="Complete?"
#Setting Units


#Setting Factors(will create new variable for factors)
data$redcap_event_name.factor = factor(data$redcap_event_name,levels=c("demographics_arm_1","admissions_arm_1"))
data$redcap_repeat_instrument.factor = factor(data$redcap_repeat_instrument,levels=c(""))
data$redcap_data_access_group.factor = factor(data$redcap_data_access_group,levels=c("chco","childrens_national","orange_county","rady","seattle"))
data$site.factor = factor(data$site,levels=c("1","2","3","4","5"))
data$sex.factor = factor(data$sex,levels=c("1","2"))
data$race.factor = factor(data$race,levels=c("1","2","3","4","5","6","7","8"))
data$mixed_race___1.factor = factor(data$mixed_race___1,levels=c("0","1"))
data$mixed_race___2.factor = factor(data$mixed_race___2,levels=c("0","1"))
data$mixed_race___3.factor = factor(data$mixed_race___3,levels=c("0","1"))
data$mixed_race___4.factor = factor(data$mixed_race___4,levels=c("0","1"))
data$mixed_race___5.factor = factor(data$mixed_race___5,levels=c("0","1"))
data$ethnicity.factor = factor(data$ethnicity,levels=c("1","2","3"))
data$insurance___1.factor = factor(data$insurance___1,levels=c("0","1"))
data$insurance___2.factor = factor(data$insurance___2,levels=c("0","1"))
data$insurance___3.factor = factor(data$insurance___3,levels=c("0","1"))
data$insurance___4.factor = factor(data$insurance___4,levels=c("0","1"))
data$insurance___5.factor = factor(data$insurance___5,levels=c("0","1"))
data$insurance___6.factor = factor(data$insurance___6,levels=c("0","1"))
data$insurance___7.factor = factor(data$insurance___7,levels=c("0","1"))
data$insurance___8.factor = factor(data$insurance___8,levels=c("0","1"))
data$mutation1.factor = factor(data$mutation1,levels=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15"))
data$mutation2.factor = factor(data$mutation2,levels=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15"))
data$pancreatic_status.factor = factor(data$pancreatic_status,levels=c("1","2"))
data$demographics_complete.factor = factor(data$demographics_complete,levels=c("0","1","2"))
data$cfrd_status.factor = factor(data$cfrd_status,levels=c("1","0"))
data$abpa.factor = factor(data$abpa,levels=c("1","0"))
data$liver_disease.factor = factor(data$liver_disease,levels=c("1","0"))
data$cfrd_status_spec.factor = factor(data$cfrd_status_spec,levels=c("1","2","3"))
data$cftr_mod.factor = factor(data$cftr_mod,levels=c("1","0"))
data$azithro.factor = factor(data$azithro,levels=c("1","0"))
data$inhaled_abx.factor = factor(data$inhaled_abx,levels=c("1","0"))
data$cftr_mod_spec.factor = factor(data$cftr_mod_spec,levels=c("1","2","3","4"))
data$admissions_complete.factor = factor(data$admissions_complete,levels=c("0","1","2"))
data$bacteria_6months___1.factor = factor(data$bacteria_6months___1,levels=c("0","1"))
data$bacteria_6months___2.factor = factor(data$bacteria_6months___2,levels=c("0","1"))
data$bacteria_6months___3.factor = factor(data$bacteria_6months___3,levels=c("0","1"))
data$bacteria_6months___4.factor = factor(data$bacteria_6months___4,levels=c("0","1"))
data$bacteria_6months___5.factor = factor(data$bacteria_6months___5,levels=c("0","1"))
data$bacteria_6months___6.factor = factor(data$bacteria_6months___6,levels=c("0","1"))
data$bacteria_6months___7.factor = factor(data$bacteria_6months___7,levels=c("0","1"))
data$bacteria_6months___8.factor = factor(data$bacteria_6months___8,levels=c("0","1"))
data$admit_cx_source.factor = factor(data$admit_cx_source,levels=c("1","2","3","4"))
data$admit_cx_negative.factor = factor(data$admit_cx_negative,levels=c("1","0"))
data$results_semiorfull.factor = factor(data$results_semiorfull,levels=c("1","2","3"))
data$admit_cx_results___1.factor = factor(data$admit_cx_results___1,levels=c("0","1"))
data$admit_cx_results___2.factor = factor(data$admit_cx_results___2,levels=c("0","1"))
data$admit_cx_results___3.factor = factor(data$admit_cx_results___3,levels=c("0","1"))
data$admit_cx_results___4.factor = factor(data$admit_cx_results___4,levels=c("0","1"))
data$admit_cx_results___5.factor = factor(data$admit_cx_results___5,levels=c("0","1"))
data$admit_cx_results___6.factor = factor(data$admit_cx_results___6,levels=c("0","1"))
data$admit_cx_results___7.factor = factor(data$admit_cx_results___7,levels=c("0","1"))
data$admit_cx_results___8.factor = factor(data$admit_cx_results___8,levels=c("0","1"))
data$admit_cx_results___9.factor = factor(data$admit_cx_results___9,levels=c("0","1"))
data$axylos_throat.factor = factor(data$axylos_throat,levels=c("1","2","3","4","5"))
data$bcepacia_throat.factor = factor(data$bcepacia_throat,levels=c("1","2","3","4","5"))
data$hflu_throat.factor = factor(data$hflu_throat,levels=c("1","2","3","4","5"))
data$mrsa_throat.factor = factor(data$mrsa_throat,levels=c("1","2","3","4","5"))
data$mssa_throat.factor = factor(data$mssa_throat,levels=c("1","2","3","4","5"))
data$psa_throat.factor = factor(data$psa_throat,levels=c("1","2","3","4","5"))
data$psa_mucoid_throat.factor = factor(data$psa_mucoid_throat,levels=c("1","2","3","4","5"))
data$smalto_throat.factor = factor(data$smalto_throat,levels=c("1","2","3","4","5"))
data$abx_suscept.factor = factor(data$abx_suscept,levels=c("1","0"))
data$suscept_aztreo.factor = factor(data$suscept_aztreo,levels=c("1","2","3","4"))
data$suscept_ceftaz.factor = factor(data$suscept_ceftaz,levels=c("1","2","3","4"))
data$suscept_cipro.factor = factor(data$suscept_cipro,levels=c("1","2","3","4"))
data$suscept_imipen.factor = factor(data$suscept_imipen,levels=c("1","2","3","4"))
data$suscept_levo.factor = factor(data$suscept_levo,levels=c("1","2","3","4"))
data$suscept_mero.factor = factor(data$suscept_mero,levels=c("1","2","3","4"))
data$suscept_piper_tazo.factor = factor(data$suscept_piper_tazo,levels=c("1","2","3","4"))
data$suscept_tobra.factor = factor(data$suscept_tobra,levels=c("1","2","3","4"))
data$abx_suscept_2.factor = factor(data$abx_suscept_2,levels=c("1","0"))
data$suscept_aztreo2.factor = factor(data$suscept_aztreo2,levels=c("1","2","3","4"))
data$suscept_ceftaz2.factor = factor(data$suscept_ceftaz2,levels=c("1","2","3","4"))
data$suscept_cipro2.factor = factor(data$suscept_cipro2,levels=c("1","2","3","4"))
data$suscept_impen2.factor = factor(data$suscept_impen2,levels=c("1","2","3","4"))
data$suscept_levo2.factor = factor(data$suscept_levo2,levels=c("1","2","3","4"))
data$suscept_mero2.factor = factor(data$suscept_mero2,levels=c("1","2","3","4"))
data$suscept_piper_tazo2.factor = factor(data$suscept_piper_tazo2,levels=c("1","2","3","4"))
data$suscept_tobra2.factor = factor(data$suscept_tobra2,levels=c("1","2","3","4"))
data$fungal_test.factor = factor(data$fungal_test,levels=c("1","0"))
data$fungal_test_results.factor = factor(data$fungal_test_results,levels=c("1","0"))
data$fungi___1.factor = factor(data$fungi___1,levels=c("0","1"))
data$fungi___2.factor = factor(data$fungi___2,levels=c("0","1"))
data$fungi___3.factor = factor(data$fungi___3,levels=c("0","1"))
data$fungi___4.factor = factor(data$fungi___4,levels=c("0","1"))
data$fungi___5.factor = factor(data$fungi___5,levels=c("0","1"))
data$ntm_test.factor = factor(data$ntm_test,levels=c("1","0"))
data$ntm_test_results.factor = factor(data$ntm_test_results,levels=c("1","0"))
data$ntm___1.factor = factor(data$ntm___1,levels=c("0","1"))
data$ntm___2.factor = factor(data$ntm___2,levels=c("0","1"))
data$ntm___3.factor = factor(data$ntm___3,levels=c("0","1"))
data$viral_test.factor = factor(data$viral_test,levels=c("1","0"))
data$viral_test_results.factor = factor(data$viral_test_results,levels=c("1","0"))
data$viruses___1.factor = factor(data$viruses___1,levels=c("0","1"))
data$viruses___2.factor = factor(data$viruses___2,levels=c("0","1"))
data$viruses___3.factor = factor(data$viruses___3,levels=c("0","1"))
data$viruses___4.factor = factor(data$viruses___4,levels=c("0","1"))
data$viruses___5.factor = factor(data$viruses___5,levels=c("0","1"))
data$admit_cx_2.factor = factor(data$admit_cx_2,levels=c("1","0"))
data$admit_cx_source2.factor = factor(data$admit_cx_source2,levels=c("1","2","3","4"))
data$admit_cx_negative2.factor = factor(data$admit_cx_negative2,levels=c("1","0"))
data$results_semiorfull2.factor = factor(data$results_semiorfull2,levels=c("1","2","3"))
data$admit_cx_results2___1.factor = factor(data$admit_cx_results2___1,levels=c("0","1"))
data$admit_cx_results2___2.factor = factor(data$admit_cx_results2___2,levels=c("0","1"))
data$admit_cx_results2___3.factor = factor(data$admit_cx_results2___3,levels=c("0","1"))
data$admit_cx_results2___4.factor = factor(data$admit_cx_results2___4,levels=c("0","1"))
data$admit_cx_results2___5.factor = factor(data$admit_cx_results2___5,levels=c("0","1"))
data$admit_cx_results2___6.factor = factor(data$admit_cx_results2___6,levels=c("0","1"))
data$admit_cx_results2___7.factor = factor(data$admit_cx_results2___7,levels=c("0","1"))
data$admit_cx_results2___8.factor = factor(data$admit_cx_results2___8,levels=c("0","1"))
data$admit_cx_results2___9.factor = factor(data$admit_cx_results2___9,levels=c("0","1"))
data$axylos_throat2.factor = factor(data$axylos_throat2,levels=c("1","2","3","4","5"))
data$bcepacia_throat2.factor = factor(data$bcepacia_throat2,levels=c("1","2","3","4","5"))
data$hflu_throat2.factor = factor(data$hflu_throat2,levels=c("1","2","3","4","5"))
data$mrsa_throat2.factor = factor(data$mrsa_throat2,levels=c("1","2","3","4","5"))
data$mssa_throat2.factor = factor(data$mssa_throat2,levels=c("1","2","3","4","5"))
data$psa_throat2.factor = factor(data$psa_throat2,levels=c("1","2","3","4","5"))
data$psa_mucoid_throat2.factor = factor(data$psa_mucoid_throat2,levels=c("1","2","3","4","5"))
data$smalto_throat2.factor = factor(data$smalto_throat2,levels=c("1","2","3","4","5"))
data$abx_suscept_2nd.factor = factor(data$abx_suscept_2nd,levels=c("1","0"))
data$suscept_aztreo_2nd.factor = factor(data$suscept_aztreo_2nd,levels=c("1","2","3","4"))
data$suscept_ceftaz_2nd.factor = factor(data$suscept_ceftaz_2nd,levels=c("1","2","3","4"))
data$suscept_cipro_2nd.factor = factor(data$suscept_cipro_2nd,levels=c("1","2","3","4"))
data$suscept_imipen_2nd.factor = factor(data$suscept_imipen_2nd,levels=c("1","2","3","4"))
data$suscept_levo_2nd.factor = factor(data$suscept_levo_2nd,levels=c("1","2","3","4"))
data$suscept_mero_2nd.factor = factor(data$suscept_mero_2nd,levels=c("1","2","3","4"))
data$suscept_piper_tazo_2nd.factor = factor(data$suscept_piper_tazo_2nd,levels=c("1","2","3","4"))
data$suscept_tobra_2nd.factor = factor(data$suscept_tobra_2nd,levels=c("1","2","3","4"))
data$abx_suscept_2nd_2.factor = factor(data$abx_suscept_2nd_2,levels=c("1","0"))
data$suscept_aztreo_2nd_2.factor = factor(data$suscept_aztreo_2nd_2,levels=c("1","2","3","4"))
data$suscept_ceftaz_2nd_2.factor = factor(data$suscept_ceftaz_2nd_2,levels=c("1","2","3","4"))
data$suscept_cipro_2nd_2.factor = factor(data$suscept_cipro_2nd_2,levels=c("1","2","3","4"))
data$suscept_imipen_2nd_2.factor = factor(data$suscept_imipen_2nd_2,levels=c("1","2","3","4"))
data$suscept_levo_2nd_2.factor = factor(data$suscept_levo_2nd_2,levels=c("1","2","3","4"))
data$suscept_mero_2nd_2.factor = factor(data$suscept_mero_2nd_2,levels=c("1","2","3","4"))
data$suscept_piper_tazo_2nd_2.factor = factor(data$suscept_piper_tazo_2nd_2,levels=c("1","2","3","4"))
data$suscept_tobra_2nd_2.factor = factor(data$suscept_tobra_2nd_2,levels=c("1","2","3","4"))
data$fungal_test2.factor = factor(data$fungal_test2,levels=c("1","0"))
data$fungal_test_results2.factor = factor(data$fungal_test_results2,levels=c("1","0"))
data$fungi2___1.factor = factor(data$fungi2___1,levels=c("0","1"))
data$fungi2___2.factor = factor(data$fungi2___2,levels=c("0","1"))
data$fungi2___3.factor = factor(data$fungi2___3,levels=c("0","1"))
data$fungi2___4.factor = factor(data$fungi2___4,levels=c("0","1"))
data$fungi2___5.factor = factor(data$fungi2___5,levels=c("0","1"))
data$ntm_test2.factor = factor(data$ntm_test2,levels=c("1","0"))
data$ntm_test_results2.factor = factor(data$ntm_test_results2,levels=c("1","0"))
data$ntm2___1.factor = factor(data$ntm2___1,levels=c("0","1"))
data$ntm2___2.factor = factor(data$ntm2___2,levels=c("0","1"))
data$ntm2___3.factor = factor(data$ntm2___3,levels=c("0","1"))
data$microbiology_complete.factor = factor(data$microbiology_complete,levels=c("0","1","2"))
data$abx_iv___21.factor = factor(data$abx_iv___21,levels=c("0","1"))
data$abx_iv___1.factor = factor(data$abx_iv___1,levels=c("0","1"))
data$abx_iv___2.factor = factor(data$abx_iv___2,levels=c("0","1"))
data$abx_iv___3.factor = factor(data$abx_iv___3,levels=c("0","1"))
data$abx_iv___4.factor = factor(data$abx_iv___4,levels=c("0","1"))
data$abx_iv___5.factor = factor(data$abx_iv___5,levels=c("0","1"))
data$abx_iv___6.factor = factor(data$abx_iv___6,levels=c("0","1"))
data$abx_iv___7.factor = factor(data$abx_iv___7,levels=c("0","1"))
data$abx_iv___8.factor = factor(data$abx_iv___8,levels=c("0","1"))
data$abx_iv___9.factor = factor(data$abx_iv___9,levels=c("0","1"))
data$abx_iv___10.factor = factor(data$abx_iv___10,levels=c("0","1"))
data$abx_iv___11.factor = factor(data$abx_iv___11,levels=c("0","1"))
data$abx_iv___12.factor = factor(data$abx_iv___12,levels=c("0","1"))
data$abx_iv___13.factor = factor(data$abx_iv___13,levels=c("0","1"))
data$abx_iv___15.factor = factor(data$abx_iv___15,levels=c("0","1"))
data$abx_iv___16.factor = factor(data$abx_iv___16,levels=c("0","1"))
data$abx_iv___17.factor = factor(data$abx_iv___17,levels=c("0","1"))
data$abx_iv___18.factor = factor(data$abx_iv___18,levels=c("0","1"))
data$abx_iv___19.factor = factor(data$abx_iv___19,levels=c("0","1"))
data$abx_iv___20.factor = factor(data$abx_iv___20,levels=c("0","1"))
data$abx_iv___14.factor = factor(data$abx_iv___14,levels=c("0","1"))
data$abx_oral___9.factor = factor(data$abx_oral___9,levels=c("0","1"))
data$abx_oral___1.factor = factor(data$abx_oral___1,levels=c("0","1"))
data$abx_oral___2.factor = factor(data$abx_oral___2,levels=c("0","1"))
data$abx_oral___3.factor = factor(data$abx_oral___3,levels=c("0","1"))
data$abx_oral___4.factor = factor(data$abx_oral___4,levels=c("0","1"))
data$abx_oral___5.factor = factor(data$abx_oral___5,levels=c("0","1"))
data$abx_oral___6.factor = factor(data$abx_oral___6,levels=c("0","1"))
data$abx_oral___7.factor = factor(data$abx_oral___7,levels=c("0","1"))
data$abx_oral___8.factor = factor(data$abx_oral___8,levels=c("0","1"))
data$abx_inh___5.factor = factor(data$abx_inh___5,levels=c("0","1"))
data$abx_inh___1.factor = factor(data$abx_inh___1,levels=c("0","1"))
data$abx_inh___2.factor = factor(data$abx_inh___2,levels=c("0","1"))
data$abx_inh___3.factor = factor(data$abx_inh___3,levels=c("0","1"))
data$abx_inh___4.factor = factor(data$abx_inh___4,levels=c("0","1"))
data$steroids_system.factor = factor(data$steroids_system,levels=c("1","0"))
data$steroids_oral.factor = factor(data$steroids_oral,levels=c("1","0"))
data$steroids_iv.factor = factor(data$steroids_iv,levels=c("1","0"))
data$inpatient_medications_complete.factor = factor(data$inpatient_medications_complete,levels=c("0","1","2"))

levels(data$redcap_event_name.factor)=c("Demographics","Admissions")
levels(data$redcap_repeat_instrument.factor)=c("")
levels(data$redcap_data_access_group.factor)=c("CHCO","Childrens National","Orange County","Rady","Seattle")
levels(data$site.factor)=c("Childrens Hospital Colorado","Childrens Hospital of Orange County","Childrens National Medical Center, D.C.","Rady Childrens, San Diego","Seattle Childrens Hospital")
levels(data$sex.factor)=c("Female","Male")
levels(data$race.factor)=c("White","Black or African-American","American Indian or Alaska Native","Asian","Native Hawaiian or Pacific Islander","Some other race","Two or more races","Unknown/not reported")
levels(data$mixed_race___1.factor)=c("Unchecked","Checked")
levels(data$mixed_race___2.factor)=c("Unchecked","Checked")
levels(data$mixed_race___3.factor)=c("Unchecked","Checked")
levels(data$mixed_race___4.factor)=c("Unchecked","Checked")
levels(data$mixed_race___5.factor)=c("Unchecked","Checked")
levels(data$ethnicity.factor)=c("Hispanic or Latino","Not Hispanic or Latino","Unknown or not reported")
levels(data$insurance___1.factor)=c("Unchecked","Checked")
levels(data$insurance___2.factor)=c("Unchecked","Checked")
levels(data$insurance___3.factor)=c("Unchecked","Checked")
levels(data$insurance___4.factor)=c("Unchecked","Checked")
levels(data$insurance___5.factor)=c("Unchecked","Checked")
levels(data$insurance___6.factor)=c("Unchecked","Checked")
levels(data$insurance___7.factor)=c("Unchecked","Checked")
levels(data$insurance___8.factor)=c("Unchecked","Checked")
levels(data$mutation1.factor)=c("F508del","D1152H","G542X","G551D","N1303K","R117H","R553X","W1282X","3849+10kbC-->T","621+1G-->T","1717-1G-->A","2789+1G-->A","3120+1G-->A","Other","Unknown")
levels(data$mutation2.factor)=c("F508del","D1152H","G542X","G551D","N1303K","R117H","R553X","W1282X","3849+10kbC-->T","621+1G-->T","1717-1G-->A","2789+1G-->A","3120+1G-->A","Other","Unknown")
levels(data$pancreatic_status.factor)=c("Insufficient","Sufficient")
levels(data$demographics_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$cfrd_status.factor)=c("Yes","No")
levels(data$abpa.factor)=c("Yes","No")
levels(data$liver_disease.factor)=c("Yes","No")
levels(data$cfrd_status_spec.factor)=c("Impaired glucose tolerance","CFRD with or without fasting hyperglycemia","Type I Diabetes")
levels(data$cftr_mod.factor)=c("Yes","No")
levels(data$azithro.factor)=c("Yes","No")
levels(data$inhaled_abx.factor)=c("Yes","No")
levels(data$cftr_mod_spec.factor)=c("IVA (Kalydeco)","LUM/IVA (Orkambi)","TEZ/IVA (Symdeko)","ELEXA/TEZ/IVA (Trikafta)")
levels(data$admissions_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$bacteria_6months___1.factor)=c("Unchecked","Checked")
levels(data$bacteria_6months___2.factor)=c("Unchecked","Checked")
levels(data$bacteria_6months___3.factor)=c("Unchecked","Checked")
levels(data$bacteria_6months___4.factor)=c("Unchecked","Checked")
levels(data$bacteria_6months___5.factor)=c("Unchecked","Checked")
levels(data$bacteria_6months___6.factor)=c("Unchecked","Checked")
levels(data$bacteria_6months___7.factor)=c("Unchecked","Checked")
levels(data$bacteria_6months___8.factor)=c("Unchecked","Checked")
levels(data$admit_cx_source.factor)=c("Bronchoscopy","Expectorated sputum","Induced sputum","Throat swab")
levels(data$admit_cx_negative.factor)=c("True","False")
levels(data$results_semiorfull.factor)=c("Fully quantitative (i.e. in CFU/mL)","Semi-quantitative (e.g. +2)","Quantitative results are not available")
levels(data$admit_cx_results___1.factor)=c("Unchecked","Checked")
levels(data$admit_cx_results___2.factor)=c("Unchecked","Checked")
levels(data$admit_cx_results___3.factor)=c("Unchecked","Checked")
levels(data$admit_cx_results___4.factor)=c("Unchecked","Checked")
levels(data$admit_cx_results___5.factor)=c("Unchecked","Checked")
levels(data$admit_cx_results___6.factor)=c("Unchecked","Checked")
levels(data$admit_cx_results___7.factor)=c("Unchecked","Checked")
levels(data$admit_cx_results___8.factor)=c("Unchecked","Checked")
levels(data$admit_cx_results___9.factor)=c("Unchecked","Checked")
levels(data$axylos_throat.factor)=c("1","2","3","4","5")
levels(data$bcepacia_throat.factor)=c("1","2","3","4","5")
levels(data$hflu_throat.factor)=c("1","2","3","4","5")
levels(data$mrsa_throat.factor)=c("1","2","3","4","5")
levels(data$mssa_throat.factor)=c("1","2","3","4","5")
levels(data$psa_throat.factor)=c("1","2","3","4","5")
levels(data$psa_mucoid_throat.factor)=c("1","2","3","4","5")
levels(data$smalto_throat.factor)=c("1","2","3","4","5")
levels(data$abx_suscept.factor)=c("Yes","No")
levels(data$suscept_aztreo.factor)=c("Susceptible (S)","Intermediate (I)","Resistant (R)","Not Tested")
levels(data$suscept_ceftaz.factor)=c("Susceptible (S)","Intermediate (I)","Resistant (R)","Not Tested")
levels(data$suscept_cipro.factor)=c("Susceptible (S)","Intermediate (I)","Resistant (R)","Not Tested")
levels(data$suscept_imipen.factor)=c("Susceptible (S)","Intermediate (I)","Resistant (R)","Not Tested")
levels(data$suscept_levo.factor)=c("Susceptible (S)","Intermediate (I)","Resistant (R)","Not Tested")
levels(data$suscept_mero.factor)=c("Susceptible (S)","Intermediate (I)","Resistant (R)","Not Tested")
levels(data$suscept_piper_tazo.factor)=c("Susceptible (S)","Intermediate (I)","Resistant (R)","Not Tested")
levels(data$suscept_tobra.factor)=c("Susceptible (S)","Intermediate (I)","Resistant (R)","Not Tested")
levels(data$abx_suscept_2.factor)=c("Yes","No")
levels(data$suscept_aztreo2.factor)=c("Susceptible (S)","Intermediate (I)","Resistant (R)","Not Tested")
levels(data$suscept_ceftaz2.factor)=c("Susceptible (S)","Intermediate (I)","Resistant (R)","Not Tested")
levels(data$suscept_cipro2.factor)=c("Susceptible (S)","Intermediate (I)","Resistant (R)","Not Tested")
levels(data$suscept_impen2.factor)=c("Susceptible (S)","Intermediate (I)","Resistant (R)","Not Tested")
levels(data$suscept_levo2.factor)=c("Susceptible (S)","Intermediate (I)","Resistant (R)","Not Tested")
levels(data$suscept_mero2.factor)=c("Susceptible (S)","Intermediate (I)","Resistant (R)","Not Tested")
levels(data$suscept_piper_tazo2.factor)=c("Susceptible (S)","Intermediate (I)","Resistant (R)","Not Tested")
levels(data$suscept_tobra2.factor)=c("Susceptible (S)","Intermediate (I)","Resistant (R)","Not Tested")
levels(data$fungal_test.factor)=c("Yes","No")
levels(data$fungal_test_results.factor)=c("Positive","Negative")
levels(data$fungi___1.factor)=c("Unchecked","Checked")
levels(data$fungi___2.factor)=c("Unchecked","Checked")
levels(data$fungi___3.factor)=c("Unchecked","Checked")
levels(data$fungi___4.factor)=c("Unchecked","Checked")
levels(data$fungi___5.factor)=c("Unchecked","Checked")
levels(data$ntm_test.factor)=c("Yes","No")
levels(data$ntm_test_results.factor)=c("Positive","Negative")
levels(data$ntm___1.factor)=c("Unchecked","Checked")
levels(data$ntm___2.factor)=c("Unchecked","Checked")
levels(data$ntm___3.factor)=c("Unchecked","Checked")
levels(data$viral_test.factor)=c("Yes","No")
levels(data$viral_test_results.factor)=c("Positive","Negative")
levels(data$viruses___1.factor)=c("Unchecked","Checked")
levels(data$viruses___2.factor)=c("Unchecked","Checked")
levels(data$viruses___3.factor)=c("Unchecked","Checked")
levels(data$viruses___4.factor)=c("Unchecked","Checked")
levels(data$viruses___5.factor)=c("Unchecked","Checked")
levels(data$admit_cx_2.factor)=c("Yes","No")
levels(data$admit_cx_source2.factor)=c("Bronchoscopy","Expectorated sputum","Induced sputum","Throat swab")
levels(data$admit_cx_negative2.factor)=c("True","False")
levels(data$results_semiorfull2.factor)=c("Fully quantitative (i.e. in CFU/mL)","Semi-quantitative (e.g. +2)","Quantitative results are not available")
levels(data$admit_cx_results2___1.factor)=c("Unchecked","Checked")
levels(data$admit_cx_results2___2.factor)=c("Unchecked","Checked")
levels(data$admit_cx_results2___3.factor)=c("Unchecked","Checked")
levels(data$admit_cx_results2___4.factor)=c("Unchecked","Checked")
levels(data$admit_cx_results2___5.factor)=c("Unchecked","Checked")
levels(data$admit_cx_results2___6.factor)=c("Unchecked","Checked")
levels(data$admit_cx_results2___7.factor)=c("Unchecked","Checked")
levels(data$admit_cx_results2___8.factor)=c("Unchecked","Checked")
levels(data$admit_cx_results2___9.factor)=c("Unchecked","Checked")
levels(data$axylos_throat2.factor)=c("1","2","3","4","5")
levels(data$bcepacia_throat2.factor)=c("1","2","3","4","5")
levels(data$hflu_throat2.factor)=c("1","2","3","4","5")
levels(data$mrsa_throat2.factor)=c("1","2","3","4","5")
levels(data$mssa_throat2.factor)=c("1","2","3","4","5")
levels(data$psa_throat2.factor)=c("1","2","3","4","5")
levels(data$psa_mucoid_throat2.factor)=c("1","2","3","4","5")
levels(data$smalto_throat2.factor)=c("1","2","3","4","5")
levels(data$abx_suscept_2nd.factor)=c("Yes","No")
levels(data$suscept_aztreo_2nd.factor)=c("Susceptible (S)","Intermediate (I)","Resistant (R)","Not Tested")
levels(data$suscept_ceftaz_2nd.factor)=c("Susceptible (S)","Intermediate (I)","Resistant (R)","Not Tested")
levels(data$suscept_cipro_2nd.factor)=c("Susceptible (S)","Intermediate (I)","Resistant (R)","Not Tested")
levels(data$suscept_imipen_2nd.factor)=c("Susceptible (S)","Intermediate (I)","Resistant (R)","Not Tested")
levels(data$suscept_levo_2nd.factor)=c("Susceptible (S)","Intermediate (I)","Resistant (R)","Not Tested")
levels(data$suscept_mero_2nd.factor)=c("Susceptible (S)","Intermediate (I)","Resistant (R)","Not Tested")
levels(data$suscept_piper_tazo_2nd.factor)=c("Susceptible (S)","Intermediate (I)","Resistant (R)","Not Tested")
levels(data$suscept_tobra_2nd.factor)=c("Susceptible (S)","Intermediate (I)","Resistant (R)","Not Tested")
levels(data$abx_suscept_2nd_2.factor)=c("Yes","No")
levels(data$suscept_aztreo_2nd_2.factor)=c("Susceptible (S)","Intermediate (I)","Resistant (R)","Not Tested")
levels(data$suscept_ceftaz_2nd_2.factor)=c("Susceptible (S)","Intermediate (I)","Resistant (R)","Not Tested")
levels(data$suscept_cipro_2nd_2.factor)=c("Susceptible (S)","Intermediate (I)","Resistant (R)","Not Tested")
levels(data$suscept_imipen_2nd_2.factor)=c("Susceptible (S)","Intermediate (I)","Resistant (R)","Not Tested")
levels(data$suscept_levo_2nd_2.factor)=c("Susceptible (S)","Intermediate (I)","Resistant (R)","Not Tested")
levels(data$suscept_mero_2nd_2.factor)=c("Susceptible (S)","Intermediate (I)","Resistant (R)","Not Tested")
levels(data$suscept_piper_tazo_2nd_2.factor)=c("Susceptible (S)","Intermediate (I)","Resistant (R)","Not Tested")
levels(data$suscept_tobra_2nd_2.factor)=c("Susceptible (S)","Intermediate (I)","Resistant (R)","Not Tested")
levels(data$fungal_test2.factor)=c("Yes","No")
levels(data$fungal_test_results2.factor)=c("Positive","Negative")
levels(data$fungi2___1.factor)=c("Unchecked","Checked")
levels(data$fungi2___2.factor)=c("Unchecked","Checked")
levels(data$fungi2___3.factor)=c("Unchecked","Checked")
levels(data$fungi2___4.factor)=c("Unchecked","Checked")
levels(data$fungi2___5.factor)=c("Unchecked","Checked")
levels(data$ntm_test2.factor)=c("Yes","No")
levels(data$ntm_test_results2.factor)=c("Positive","Negative")
levels(data$ntm2___1.factor)=c("Unchecked","Checked")
levels(data$ntm2___2.factor)=c("Unchecked","Checked")
levels(data$ntm2___3.factor)=c("Unchecked","Checked")
levels(data$microbiology_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$abx_iv___21.factor)=c("Unchecked","Checked")
levels(data$abx_iv___1.factor)=c("Unchecked","Checked")
levels(data$abx_iv___2.factor)=c("Unchecked","Checked")
levels(data$abx_iv___3.factor)=c("Unchecked","Checked")
levels(data$abx_iv___4.factor)=c("Unchecked","Checked")
levels(data$abx_iv___5.factor)=c("Unchecked","Checked")
levels(data$abx_iv___6.factor)=c("Unchecked","Checked")
levels(data$abx_iv___7.factor)=c("Unchecked","Checked")
levels(data$abx_iv___8.factor)=c("Unchecked","Checked")
levels(data$abx_iv___9.factor)=c("Unchecked","Checked")
levels(data$abx_iv___10.factor)=c("Unchecked","Checked")
levels(data$abx_iv___11.factor)=c("Unchecked","Checked")
levels(data$abx_iv___12.factor)=c("Unchecked","Checked")
levels(data$abx_iv___13.factor)=c("Unchecked","Checked")
levels(data$abx_iv___15.factor)=c("Unchecked","Checked")
levels(data$abx_iv___16.factor)=c("Unchecked","Checked")
levels(data$abx_iv___17.factor)=c("Unchecked","Checked")
levels(data$abx_iv___18.factor)=c("Unchecked","Checked")
levels(data$abx_iv___19.factor)=c("Unchecked","Checked")
levels(data$abx_iv___20.factor)=c("Unchecked","Checked")
levels(data$abx_iv___14.factor)=c("Unchecked","Checked")
levels(data$abx_oral___9.factor)=c("Unchecked","Checked")
levels(data$abx_oral___1.factor)=c("Unchecked","Checked")
levels(data$abx_oral___2.factor)=c("Unchecked","Checked")
levels(data$abx_oral___3.factor)=c("Unchecked","Checked")
levels(data$abx_oral___4.factor)=c("Unchecked","Checked")
levels(data$abx_oral___5.factor)=c("Unchecked","Checked")
levels(data$abx_oral___6.factor)=c("Unchecked","Checked")
levels(data$abx_oral___7.factor)=c("Unchecked","Checked")
levels(data$abx_oral___8.factor)=c("Unchecked","Checked")
levels(data$abx_inh___5.factor)=c("Unchecked","Checked")
levels(data$abx_inh___1.factor)=c("Unchecked","Checked")
levels(data$abx_inh___2.factor)=c("Unchecked","Checked")
levels(data$abx_inh___3.factor)=c("Unchecked","Checked")
levels(data$abx_inh___4.factor)=c("Unchecked","Checked")
levels(data$steroids_system.factor)=c("Yes","No")
levels(data$steroids_oral.factor)=c("Yes","No")
levels(data$steroids_iv.factor)=c("Yes","No")
levels(data$inpatient_medications_complete.factor)=c("Incomplete","Unverified","Complete")
