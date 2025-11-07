library(tidyverse)
library(readxl)
library(labelled)
library(pracma)
library(childsds)
home_dir <- switch(
    Sys.info()["sysname"],
    "Darwin" = "/Users/tim/Library/CloudStorage/OneDrive-TheUniversityofColoradoDenver/Vigers/CF/Christine Chan/EnVision CF",
    "Linux" = "/home/timvigers/OneDrive/Vigers/CF/Christine Chan/EnVision CF"
)
github_dir <- switch(
    Sys.info()["sysname"],
    "Darwin" = "/Users/timvigers/Documents/GitHub",
    "Linux" = "/home/timvigers/Documents/GitHub"
)
setwd(home_dir)
# Import cleaned EnVision data
df <- read.csv("./Data_Clean/envision_analysis_dataset.csv", na.strings = "")
# Import GEM data
gem <- read.csv(
    "./Data_Raw/CGMInHealthyControls-FsOGTTDataForMonique_DATA_2025-04-10_0903.csv",
    na.strings = ""
)
# ID linking from Monique
ids <- read.csv(
    "./Data_Clean/TV_ETI logitudinal patient list.csv",
    na.strings = ""
)
ids <- ids %>%
    select(EnVision.ID, GEM.ID) %>%
    rename(`EnVision ID` = EnVision.ID, `GEM ID` = GEM.ID)
ids <- ids[!is.na(ids$`GEM ID`), ]
# Get pre-/post-ETI
df$eti_start <- ifelse(df$corrector___4 == 1, df$corrector_start_date, NA)
df <- df %>%
    group_by(study_id) %>%
    fill(eti_start, .direction = "downup")
# Manually correct a few per Monique
df$eti_start[df$study_id == "CC0001"] <- "2021-11-24"
df$eti_start[df$study_id == "CC0010"] <- "2023-01-16"
df$eti_start[df$study_id == "CC0022"] <- "2019-12-06"
df$eti_start[df$study_id == "CC0023"] <- "2020-01-09"
df$eti_start[df$study_id == "CC0026"] <- "2020-12-04"
df$eti_start[df$study_id == "CC0059"] <- "2021-06-23"
df$pre_post <-
    factor(df$Date >= df$eti_start, levels = c(F, T), labels = c("Pre", "Post"))
df$pre_post[df$study_id == "CC0012"] <- "Pre"
df$pre_post[df$study_id == "CC0017"] <- "Pre"
df$pre_post[df$study_id == "CC0028"] <- "Pre"
# Select columns for EnVision per Monique and combine race and ethnicity
df <- df %>%
    mutate(gem_id = NA, study = "EnVision CF") %>%
    select(
        study_id,
        gem_id,
        study,
        Date,
        age_visit,
        sex,
        origin_race,
        ethnicity,
        CFTR,
        pancreatic_status,
        corrector___4,
        eti_start,
        pre_post,
        bmi,
        fev1,
        Diagnosis,
        Glucose_0:Glucose_180,
        Insulin_0:Insulin_180,
        C.Peptide_0:C.Peptide_180
    ) %>%
    unite(race_ethnicity, c(origin_race, ethnicity)) %>%
    rename(ETI = corrector___4)
df$race_ethnicity <- factor(
    df$race_ethnicity,
    levels = c(
        "American Indian or Alaska Native (N. S. & Central America)_Hispanic/Latino",
        "American Indian or Alaska Native (N. S. & Central America)_Not Hispanic/Latino",
        "Black or African American (Africa)_N/A",
        "Black or African American (Africa)_Not Hispanic/Latino",
        "Declined_Hispanic/Latino",
        "Declined_Not Hispanic/Latino",
        "NA_NA",
        "Native Hawaiian or Other Pacific Islander (Hawaii, Guam, Samoa, Pacific Islands)_Not Hispanic/Latino",
        "White (Europe, Middle East, North Africa)_Hispanic/Latino",
        "White (Europe, Middle East, North Africa)_N/A",
        "White (Europe, Middle East, North Africa)_Not Hispanic/Latino"
    ),
    labels = c(
        "Hispanic",
        "Native American",
        "Black/African American",
        "Black/African American",
        "Hispanic",
        "Other/Multiple",
        "Other/Multiple",
        "Other/Multiple",
        "Hispanic",
        "White",
        "White"
    )
)
df$pancreatic_status <- factor(
    df$pancreatic_status,
    levels = 1:2,
    labels = c("Sufficient", "Insufficient")
)
df$ETI <- factor(df$ETI, levels = 0:1, labels = c("No", "Yes"))
# Convert C-peptide level from pmol/L to ng/mL (multiply by 0.003)
df[, grep("C.Peptide_.*", colnames(df))] <-
    lapply(df[, grep("C.Peptide_.*", colnames(df))], function(c) {
        c * 0.003
    })
# Select the same columns from GEM
gem$eti_start = NA
gem <- gem %>%
    mutate(ETI = 0, pre_post = "Pre", study_id = NA, study = "GEM-CF") %>%
    select(
        study_id,
        subject_id,
        study,
        date_of_visit,
        age_at_visit_1,
        gender,
        race_ethnicity,
        cf_genotype,
        cf_pancreatic,
        ETI,
        eti_start,
        pre_post,
        average_bmi,
        fev1_percent,
        group_category,
        lab_ogtt_fasting,
        min_10_glucose,
        min_30_glucose,
        lab_ogtt_1_hour_glucose,
        min_90_glucose,
        lab_ogtt_2_hour_glucose,
        min_150_glucose,
        min_180_glucose,
        min_0_insulin,
        min_10_insulin,
        min_30_insulin,
        min_60_insulin,
        min_90_insulin,
        min_120_insulin,
        min_150_insulin,
        min_180_insulin,
        min_0_c_peptide,
        min_10_c_peptide,
        min_30_c_peptide,
        min_60_c_peptide,
        min_90_c_peptide,
        min_120_c_peptide,
        min_150_c_peptide,
        min_180_c_peptide
    ) %>%
    rename(
        gem_id = subject_id,
        Date = date_of_visit,
        age_visit = age_at_visit_1,
        sex = gender,
        CFTR = cf_genotype,
        pancreatic_status = cf_pancreatic,
        bmi = average_bmi,
        fev1 = fev1_percent,
        Diagnosis = group_category,
        min_0_glucose = lab_ogtt_fasting,
        min_60_glucose = lab_ogtt_1_hour_glucose,
        min_120_glucose = lab_ogtt_2_hour_glucose
    ) %>%
    rename_with(
        ~ paste0("Glucose_", parse_number(.)),
        min_0_glucose:min_180_glucose
    ) %>%
    rename_with(
        ~ paste0("Insulin_", parse_number(.)),
        min_0_insulin:min_180_insulin
    ) %>%
    rename_with(
        ~ paste0("C.Peptide_", parse_number(.)),
        min_0_c_peptide:min_180_c_peptide
    )
# GEM factors
gem$sex <- factor(gem$sex, levels = 1:2, labels = c("Male", "Female"))
gem$race_ethnicity <- factor(
    gem$race_ethnicity,
    levels = 1:6,
    labels = c(
        "White",
        "Black/African American",
        "Asian",
        "Native American",
        "Hispanic",
        "Other/Multiple"
    )
)
gem$CFTR <- factor(
    gem$CFTR,
    levels = c(
        "2184delA/M1101K",
        "2585delT/G551D",
        "3849+10kb C>T/F508del",
        "508del/508del",
        "F508del/1078delA",
        "f508DEL/1154INStc",
        "F508del/1154insTC",
        "F508del/1811 + 1634A > G",
        "F508del/1811+1634>G",
        "F508del/2183delAA->G",
        "F508del/2183delAA>G",
        "F508del/2184insA",
        "F508del/2711delT",
        "F508del/2789+5G>A",
        "F508del/27895GA",
        "F508del/3659delC",
        "F508del/3849+10kbC>T",
        "F508del/394delTT",
        "F508del/5492F",
        "F508del/A561E",
        "F508del/E60X",
        "f508del/F508del",
        "F508del/F508del",
        "F508del/G542X",
        "F508del/G551D",
        "F508del/N1303K",
        "F508del/Q98R",
        "F508del/R1162X",
        "F508del/R117H 9T",
        "F508del/R117H 9T/5T",
        "F508del/R553X",
        "F508del/R709X",
        "F508del/S492F",
        "F508del/W1282X",
        "F5o8del/F508del",
        "G542X/1078delT",
        "G542X/W1089X",
        "G551D/W846X",
        "I507del/G551D",
        "N1303K/1154insTC",
        "N1303K/2789 + 5G > A",
        "N1303K/2789+5G>A",
        "R117H 5t/G576A and R668C on exon 13",
        "R117H5t/G576A and R668C on exon 13",
        "V520F/3791delC",
        "W1089X/S492F",
        "W1090X/S492F"
    ),
    labels = c(
        "Other/Other",
        "Other/Other",
        "Other/Other",
        "F508del homozygous",
        "F508del heterozygous",
        "F508del heterozygous",
        "F508del heterozygous",
        "F508del heterozygous",
        "F508del heterozygous",
        "F508del heterozygous",
        "F508del heterozygous",
        "F508del heterozygous",
        "F508del heterozygous",
        "F508del heterozygous",
        "F508del heterozygous",
        "F508del heterozygous",
        "F508del heterozygous",
        "F508del heterozygous",
        "F508del heterozygous",
        "F508del heterozygous",
        "F508del heterozygous",
        "F508del homozygous",
        "F508del homozygous",
        "F508del heterozygous",
        "F508del heterozygous",
        "F508del heterozygous",
        "F508del heterozygous",
        "F508del heterozygous",
        "F508del heterozygous",
        "F508del heterozygous",
        "F508del heterozygous",
        "F508del heterozygous",
        "F508del heterozygous",
        "F508del heterozygous",
        "F508del homozygous",
        "Other/Other",
        "Other/Other",
        "Other/Other",
        "Other/Other",
        "Other/Other",
        "Other/Other",
        "Other/Other",
        "Other/Other",
        "Other/Other",
        "Other/Other",
        "Other/Other",
        "Other/Other"
    )
)
gem$pancreatic_status <- factor(
    gem$pancreatic_status,
    levels = 1:2,
    labels = c("Sufficient", "Insufficient")
)
gem$ETI <- factor(gem$ETI, levels = 0:1, labels = c("No", "Yes"))
gem$Diagnosis <- factor(
    gem$Diagnosis,
    levels = 1:4,
    labels = c("Healthy Control", "NGT", "AGT", "CFRD")
)
df$Diagnosis <- factor(
    df$Diagnosis,
    levels = c("NGT", "IFG", "IGT", "INDET", "CFRD"),
    labels = c("NGT", "AGT", "AGT", "AGT", "CFRD")
)
# IDs
gem$study_id <- ids$`EnVision ID`[match(gem$gem_id, ids$`GEM ID`)]
df$gem_id <- ids$`GEM ID`[match(df$study_id, ids$`EnVision ID`)]
# Limit GEM per Monique's list
gem <- gem %>% filter(gem_id %in% ids$`GEM ID`)
# Merge, keep only pre/post, sort by ID and date
df <- rbind(df, gem) %>% filter(!is.na(pre_post))
df$pre_post <- factor(df$pre_post, levels = c("Pre", "Post"))
df <- df %>% arrange(study_id, Date)
# Columns
glucose <- paste0("Glucose_", c(0, 10, 30, 60, 90, 120, 150, 180))
insulin <- paste0("Insulin_", c(0, 10, 30, 60, 90, 120, 150, 180))
# iAUCs
df$iAUC30gluc <- apply(df, 1, function(r) {
    y <- as.numeric(r[glucose[1:3]]) - as.numeric(r[glucose[1]])
    if (is.na(first(y)) | is.na(last(y))) {
        return(NA)
    } else {
        x <- c(0, 10, 30)[!is.na(y)]
        y <- y[!is.na(y)]
        auc <- trapz(x, y)
        return(auc)
    }
})
var_label(df$iAUC30gluc) <- "iAUC 30 Minute Glucose"
df$iAUC60gluc <- apply(df, 1, function(r) {
    y <- as.numeric(r[glucose[1:4]]) - as.numeric(r[glucose[1]])
    if (is.na(first(y)) | is.na(last(y))) {
        return(NA)
    } else {
        x <- c(0, 10, 30, 60)[!is.na(y)]
        y <- y[!is.na(y)]
        auc <- trapz(x, y)
        return(auc)
    }
})
var_label(df$iAUC60gluc) <- "iAUC 60 Minute Glucose"
df$iAUC120gluc <- apply(df, 1, function(r) {
    y <- as.numeric(r[glucose[1:6]]) - as.numeric(r[glucose[1]])
    if (is.na(first(y)) | is.na(last(y))) {
        return(NA)
    } else {
        x <- c(0, 10, 30, 60, 90, 120)[!is.na(y)]
        y <- y[!is.na(y)]
        auc <- trapz(x, y)
        return(auc)
    }
})
var_label(df$iAUC120gluc) <- "iAUC 120 Minute Glucose"
df$iAUC180gluc <- apply(df, 1, function(r) {
    y <- as.numeric(r[glucose]) - as.numeric(r[glucose[1]])
    if (is.na(first(y)) | is.na(last(y))) {
        return(NA)
    } else {
        x <- c(0, 10, 30, 60, 90, 120, 150, 180)[!is.na(y)]
        y <- y[!is.na(y)]
        auc <- trapz(x, y)
        return(auc)
    }
})
var_label(df$iAUC180gluc) <- "iAUC 180 Minute Glucose"
df$iAUC30ins <- apply(df, 1, function(r) {
    y <- as.numeric(r[insulin[1:3]]) - as.numeric(r[insulin[1]])
    if (is.na(first(y)) | is.na(last(y))) {
        return(NA)
    } else {
        x <- c(0, 10, 30)[!is.na(y)]
        y <- y[!is.na(y)]
        auc <- trapz(x, y)
        return(auc)
    }
})
var_label(df$iAUC30ins) <- "iAUC 30 Minute Insulin"
df$iAUC60ins <- apply(df, 1, function(r) {
    y <- as.numeric(r[insulin[1:4]]) - as.numeric(r[insulin[1]])
    if (is.na(first(y)) | is.na(last(y))) {
        return(NA)
    } else {
        x <- c(0, 10, 30, 60)[!is.na(y)]
        y <- y[!is.na(y)]
        auc <- trapz(x, y)
        return(auc)
    }
})
var_label(df$iAUC60ins) <- "iAUC 60 Minute Insulin"
df$iAUC120ins <- apply(df, 1, function(r) {
    y <- as.numeric(r[insulin[1:6]]) - as.numeric(r[insulin[1]])
    if (is.na(first(y)) | is.na(last(y))) {
        return(NA)
    } else {
        x <- c(0, 10, 30, 60, 90, 120)[!is.na(y)]
        y <- y[!is.na(y)]
        auc <- trapz(x, y)
        return(auc)
    }
})
var_label(df$iAUC120ins) <- "iAUC 120 Minute Insulin"
df$iAUC180ins <- apply(df, 1, function(r) {
    y <- as.numeric(r[insulin]) - as.numeric(r[insulin[1]])
    if (is.na(first(y)) | is.na(last(y))) {
        return(NA)
    } else {
        x <- c(0, 10, 30, 60, 90, 120, 150, 180)[!is.na(y)]
        y <- y[!is.na(y)]
        auc <- trapz(x, y)
        return(auc)
    }
})
var_label(df$iAUC180ins) <- "iAUC 180 Minute Insulin"
# Calculate ODI, etc.
df$iAUC30ins_over_gluc <- df$iAUC30ins / df$iAUC30gluc
var_label(df$iAUC30ins_over_gluc) <- "iAUC30ins/iAUC30gluc"
df$iAUC120ins_over_gluc <- df$iAUC120ins / df$iAUC120gluc
var_label(df$iAUC120ins_over_gluc) <- "iAUC120ins/iAUC120gluc"
df$iAUC180ins_over_gluc <- df$iAUC180ins / df$iAUC180gluc
var_label(df$iAUC180ins_over_gluc) <- "iAUC180ins/iAUC180gluc"
df$igi = (df$Insulin_30 - df$Insulin_0) / (df$Glucose_30 - df$Glucose_0)
var_label(df$igi) <- "IGI (delta 30min insulin/delta 30min glucose)"
# HOMA IR
df$homa_ir <- (df$Glucose_0 * df$Insulin_0) / 405
var_label(df$homa_ir) <- "HOMA-IR"
# Matsuda
df$matsuda <- 10000 /
    sqrt(
        ((df$Glucose_0 / 18) * df$Insulin_0) *
            ((rowMeans(
                df[, paste0("Glucose_", c(0, 30, 60, 90, 120))],
                na.rm = T
            ) /
                18) *
                rowMeans(
                    df[, paste0("Insulin_", c(0, 30, 60, 90, 120))],
                    na.rm = T
                ))
    )
var_label(df$matsuda) <- "Matsuda Index"
# IGIxMatsuda
df$odi_igi = df$igi * df$matsuda
var_label(df$odi_igi) <- "ODI (IGI*Matsuda)"
# iAUCins30/iAUCglc30xMatsuda
df$odi_iauc = df$iAUC30ins_over_gluc * df$matsuda
var_label(df$odi_iauc) <- "ODI [(iAUC30ins/iAUC30gluc)*Matsuda]"
# Fill ETI start date
df <- df %>%
    group_by(study_id) %>%
    # Fill ETI start date
    fill(eti_start, .direction = "downup") %>%
    # Calculate time from ETI start and create spline variable for knot at 0
    mutate(
        years_from_eti_start = as.numeric(difftime(
            Date,
            eti_start,
            units = "days"
        )) /
            365.25,
        slope_change = (years_from_eti_start > 0) * years_from_eti_start
    )
df$years_from_eti_start_model = df$years_from_eti_start
var_label(df$years_from_eti_start) <- "Years From ETI Start"
var_label(
    df$years_from_eti_start_model
) <- "Slope (Average Change per Year) Pre-ETI"
var_label(df$slope_change) <- "Change in Slope Post-ETI"
# Calculate BMI percentiles
df$bmi_perc = sds(
    value = df$bmi,
    age = df$age_visit,
    sex = df$sex,
    item = "bmi",
    type = "perc",
    male = "Male",
    female = "Female",
    ref = cdc.ref
) *
    100
# Raw values for adults
df$bmi_adult = df$bmi
df$bmi_adult[df$age_visit <= 20] = NA
# More labels
var_label(df$age_visit) = "Age (years)"
var_label(df$bmi) = "BMI (all participants)"
var_label(df$bmi_perc) = "BMI percentile (age <= 20)"
var_label(df$bmi_adult) = "BMI value (age > 20)"
var_label(df$fev1) = "FEV1 % predicted"
var_label(df$pancreatic_status) = "Pancreatic"
# Other formatting
df$Diagnosis = droplevels(df$Diagnosis)
# Write for checking
save(
    df,
    file = "./Data_Clean/fsOGTT_pre_post_ETI.RData"
)
