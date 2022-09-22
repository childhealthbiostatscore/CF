import pandas as pd
import numpy as np
from types import NoneType
wd = '/Users/timvigers/Documents/Work/Vigers/CF/Edith Zemanick/CF Nutrition/'
# Import
# Modulator dates
mods = pd.read_excel(
    wd+"Data_Raw/Report CFTR Modulators_throughDecember2021.xlsx")
mods.sort_values(by=["Patient ID", "Earliest Date in Registry"],
                 ascending=True, inplace=True)
mods = mods[mods['Earliest Date in Registry'] != mods['Last Date in Registry']]
# Vitamins
vit = pd.read_excel(
    wd+"Data_Raw/Report Vitamins_throughDecember2021_revised20220712.xlsx")
# Add FEV information
fev = pd.read_excel(wd+"Data_Raw/Report_PFTs_ThroughDecember2021.xlsx")
fev = fev.rename(columns={'PatientID': 'Patient ID'})
df = pd.merge(vit, fev, how="outer", on=["Patient ID", "Date"])
# Data cleaning
df.sort_values(by=["Patient ID", "Date"], ascending=True, inplace=True)
# Get modulator at each vitamin measure, pre-/post- information, and start date
m = []
p = []
s = []
f = []
for r in range(df.shape[0]):
    # Get ID
    id = df.iloc[r, 0]
    # If no mod information, return NA
    if id not in mods["Patient ID"].unique():
        m.append(np.nan)
        p.append(np.nan)
        s.append(np.nan)
        f.append(np.nan)
        continue
    # Get row date
    date = df.iloc[r, 2]
    # Get modulator dates by ID
    mod = mods.loc[mods["Patient ID"] == id, :]
    dates = mod.iloc[:, 3]
    # Check which dates the row is after
    after = np.where(date > dates)[0]
    # If not after any, return no modulator
    if after.shape[0] == 0:
        m.append("None")
    else:
        m.append(mod.iloc[max(after), 1])
    # Check if pre-/post-effective modulator
    eff_mod = mod[(mod["Modulator"] == "Kalydeco") |
                  (mod["Modulator"] == "Trikafta")]
    if eff_mod.shape[0] > 0:
        start = eff_mod.iloc[0, 3]
        s.append(start)
        f.append(eff_mod.iloc[0, 1])
        if date <= start:
            p.append("Pre")
        else:
            p.append("Post")
    else:
        p.append(np.nan)
        s.append(np.nan)
        f.append(np.nan)
df["Modulator"] = m
df["Pre-/Post-Effective Modulator"] = p
df["Effective Modulator Start"] = s
df["Days From Start"] = (df["Date"] - df["Effective Modulator Start"]).dt.days
df["First Modulator"] = f
# Replace missing ages with info from PFT visit
df["Age at Test (years)"].fillna(df["Age At PFT (years)"], inplace=True)
# Fill sex info
df["Sex"] = df.groupby(["Patient ID"], sort=False,group_keys=False)[
    'Sex'].apply(lambda x: x.ffill().bfill())
# Drop those without modulator info
df.dropna(subset="Modulator", inplace=True)
# Limit to three years prior
df = df[df["Days From Start"] >= -3*365]
# Remove values less than 3 months after start
df = df[(df["Days From Start"] < 0) | (df["Days From Start"] >= 90)]
# Write for checking
df.to_csv(wd+"Data_Cleaned/all.csv", index=False)
# Analysis dataset
# Convert to numeric
cols = ["VitaminA_Retinol", "25OH-Vitamin D", "Vitamin E Alpha",
        "Vitamin E Gamma", "FEV1 % pred", "BMI percentile (CDC)"]
df[cols] = df[cols].apply(pd.to_numeric, errors='coerce')
# For each person, average all their pre-effective mod values
# but only use the most recent vitamin measure.
# If they have FEV1 or BMI within a month of the vitamin measure,
# use that otherwise missing
# Place to store results
analysis = {"ID": [], "Timepoint": [], "Vitamin A": [], "Vitamin D": [], "Vitamin E Alpha": [], "Vitamin E Gamma": [], "ppFEV1": [], "BMI Percentile": [],
            "First Modulator": [], "Age Nearest Modulator Start": [], "Sex": []}
# Iterate through by ID
ids = df["Patient ID"].unique().tolist()
for id in ids:
    # Subset
    pre = df[(df["Patient ID"] == id) & (
        df["Pre-/Post-Effective Modulator"] == "Pre")]
    post = df[(df["Patient ID"] == id) & (
        df["Pre-/Post-Effective Modulator"] == "Post")]
    # Demographics (same for pre/post so append twice)
    # First modulator
    analysis["First Modulator"].append(
        df[df["Patient ID"] == id].iloc[0, df.shape[1]-1])
    analysis["First Modulator"].append(
        df[df["Patient ID"] == id].iloc[0, df.shape[1]-1])
    # Age at modulator start
    age = pre["Age at Test (years)"].last_valid_index()
    if (type(age) == NoneType):
        age_val = np.nan
    else:
        age_val = pre["Age at Test (years)"].loc[age]
    analysis["Age Nearest Modulator Start"].append(age_val)
    analysis["Age Nearest Modulator Start"].append(age_val)
    # Sex
    sex = df[df["Patient ID"] == id]
    analysis["Sex"].append(sex["Sex"].unique()[0])
    analysis["Sex"].append(sex["Sex"].unique()[0])
    # Pre
    analysis["ID"].append(id)
    analysis["Timepoint"].append("Pre")
    analysis["Vitamin A"].append(pre["VitaminA_Retinol"].mean(skipna=True))
    analysis["Vitamin D"].append(pre["25OH-Vitamin D"].mean(skipna=True))
    analysis["Vitamin E Alpha"].append(
        pre["Vitamin E Alpha"].mean(skipna=True))
    analysis["Vitamin E Gamma"].append(
        pre["Vitamin E Gamma"].mean(skipna=True))
    analysis["ppFEV1"].append(pre["FEV1 % pred"].mean(skipna=True))
    analysis["BMI Percentile"].append(
        pre["BMI percentile (CDC)"].mean(skipna=True))
    # Post
    analysis["ID"].append(id)
    analysis["Timepoint"].append("Post")
    # Most recent vitamin A
    vita = post["VitaminA_Retinol"].last_valid_index()
    if (type(vita) == NoneType):
        vita_value = np.nan
        vita_date = np.nan
    else:
        vita_value = post["VitaminA_Retinol"].loc[vita]
        vita_date = post["Date"].loc[vita]
    # Vitamin D
    vitd = post["25OH-Vitamin D"].last_valid_index()
    if (type(vitd) == NoneType):
        vitd_value = np.nan
        vitd_date = np.nan
    else:
        vitd_value = post["25OH-Vitamin D"].loc[vitd]
        vitd_date = post["Date"].loc[vitd]
    # Vitamin e
    # Alpha
    vitea = post["Vitamin E Alpha"].last_valid_index()
    if (type(vitea) == NoneType):
        vitea_value = np.nan
        vitea_date = np.nan
    else:
        vitea_value = post["Vitamin E Alpha"].loc[vitea]
        vitea_date = post["Date"].loc[vitea]
    # Gamma
    viteg = post["Vitamin E Gamma"].last_valid_index()
    if (type(viteg) == NoneType):
        viteg_value = np.nan
        viteg_date = np.nan
    else:
        viteg_value = post["Vitamin E Gamma"].loc[viteg]
        viteg_date = post["Date"].loc[viteg]
    # Check if there is a BMI and FEV1 value within 1 month of latest vitamin measure
    if all(pd.isnull([vita_date, vitd_date, vitea_date])):
        analysis["Vitamin A"].append(np.nan)
        analysis["Vitamin D"].append(np.nan)
        analysis["Vitamin E Alpha"].append(np.nan)
        analysis["Vitamin E Gamma"].append(np.nan)
        analysis["ppFEV1"].append(np.nan)
        analysis["BMI Percentile"].append(np.nan)
        continue
    else:
        vita_date = pd.to_datetime(vita_date, errors="coerce")
        vitd_date = pd.to_datetime(vitd_date, errors="coerce")
        vitea_date = pd.to_datetime(vitea_date, errors="coerce")
    # BMI
    bmi = post.dropna(subset="BMI percentile (CDC)")
    if bmi.shape[0] > 0:
        bmi = bmi[(abs((bmi["Date"] - vita_date).dt.days) <= 30) | (abs((bmi["Date"] -
                                                                         vitd_date).dt.days) <= 30) | (abs((bmi["Date"] - vitea_date).dt.days) <= 30)]
        if bmi.shape[0] > 0:
            bmi_ind = bmi["BMI percentile (CDC)"].last_valid_index()
            bmi_value = post["BMI percentile (CDC)"].loc[bmi_ind]
            bmi_date = post["Date"].loc[bmi_ind]
        else:
            bmi_value = np.nan
            bmi_date = np.nan
    else:
        bmi_value = np.nan
        bmi_date = np.nan
    # Check if there is a fev value within 1 month
    fev = post.dropna(subset='FEV1 % pred')
    if fev.shape[0] > 0:
        fev = fev[(abs((fev["Date"] - vita_date).dt.days) <= 30) | (abs((fev["Date"] -
                                                                         vitd_date).dt.days) <= 30) | (abs((fev["Date"] - vitea_date).dt.days) <= 30)]
        if fev.shape[0] > 0:
            fev_ind = fev['FEV1 % pred'].last_valid_index()
            fev_value = post['FEV1 % pred'].loc[fev_ind]
            fev_date = post["Date"].loc[fev_ind]
        else:
            fev_value = np.nan
            fev_date = np.nan
    else:
        fev_value = np.nan
        fev_date = np.nan
    # Add to results
    analysis["Vitamin A"].append(vita_value)
    analysis["Vitamin D"].append(vitd_value)
    analysis["Vitamin E Alpha"].append(vitea_value)
    analysis["Vitamin E Gamma"].append(viteg_value)
    analysis["ppFEV1"].append(fev_value)
    analysis["BMI Percentile"].append(bmi_value)
# Convert to DF
analysis = pd.DataFrame(analysis)
analysis.to_csv(wd+"Data_Cleaned/analysis.csv", index=False)
