import pandas as pd
import numpy as np
import sweetviz as sv
wd = '/Volumes/PEDS/RI Biostatistics Core/Shared/Shared Projects/Vigers/CF/Edith Zemanick/CF Nutrition/'

# Import data, drop and rename columns
cftr_mods = pd.read_excel(wd + 'Data_Raw/Report CFTR Modulators_throughDecember2021.xlsx',\
    usecols=['Patient ID', 'Modulator','Age at Start (years)'])

cftr_mods.sort_values(by = ['Patient ID','Age at Start (years)'],inplace=True)
start_effective = cftr_mods[cftr_mods['Modulator'].isin(['Trikafta','Symdeko'])].groupby('Patient ID').first()

crp_sed = pd.read_excel(wd + 'Data_Raw/Report CRP and Sed Rate_ThroughDecember2021.xlsx')
cultures = pd.read_excel(wd + 'Data_Raw/Report Cultures_throughDecember2021.xlsx')
cultures.rename(columns = {'Culture Date':'Date','Age at Culture (years)':'Age at Test (Years)'},inplace=True)
cultures['Bacteria/Fungi'].replace('Postive','Positive',inplace=True)
# For those with negative test, set bacteria (not fungi) to 0
cultures.loc[cultures['Bacteria/Fungi']=="Negative",\
    ['PsANonMucoid','PsAMucoid','Burkholderia (any)','Stenotrophomonas','Pseudomonas not aeruginosa','S. aureus',\
        'MRSA','H. flu','E. coli','Klebsiella','A. xylosoxidans','Acinetobacter','Inquilinus']] = 0
electrolytes = pd.read_excel(wd + 'Data_Raw/Report Electrolytes_throughDecember2021.xlsx')
elastase = pd.read_excel(wd + 'Data_Raw/Report Fecal Elastase_throughDecember2021.xlsx')
elastase.drop(['Age at Test (weeks)'],axis=1,inplace=True)
elastase.rename(columns = {'Age at Test (years)':'Age at Test (Years)'},inplace=True)
inr_pt = pd.read_excel(wd + 'Data_Raw/Report INR and PT_throughDecember2021.xlsx')
inr_pt.drop(['Age at Test (years)'],axis=1,inplace=True)
ogtt = pd.read_excel(wd + 'Data_Raw/Report OGTTs_throughDecember2021.xlsx')
ogtt.rename(columns = {'Age at Test (years)':'Age at Test (Years)'},inplace=True)
albumin = pd.read_excel(wd + 'Data_Raw/Report Total Proten Albumin and Prealbumin_throughDecember2021.xlsx')
vitamins = pd.read_excel(wd + 'Data_Raw/Report Vitamins_throughDecember2021.xlsx')
vitamins.rename(columns = {'Age at Test (years)':'Age at Test (Years)'},inplace=True)
bun_creat = pd.read_excel(wd + 'Data_Raw/Report_BUNandCreatinine_throughDecember2021.xlsx')
bun_creat.loc[bun_creat['Creatinine']==129,'Creatinine'] = np.nan
lfts = pd.read_excel(wd + 'Data_Raw/Report_LFTs_ThroughDecember2021.xlsx')
pfts = pd.read_excel(wd + 'Data_Raw/Report_PFTs_ThroughDecember2021.xlsx')
pfts.rename(columns = {'PatientID':'Patient ID','Age At PFT (years)':'Age at Test (Years)'},inplace=True)
pfts.loc[pfts['FEV1'] == 98,'FEV1'] = np.nan
pfts.loc[pfts['FEV1 % pred'] == 222,'FEV1 % pred'] = np.nan
# Merge
df = pd.merge(crp_sed,cultures,how='outer',on=['Patient ID','Date','Age at Test (Years)'])
df = pd.merge(df,electrolytes,how='outer',on=['Patient ID','Date','Age at Test (Years)'])
df = pd.merge(df,elastase,how='outer',on=['Patient ID','Date','Age at Test (Years)'])
df = pd.merge(df,inr_pt,how='outer',on=['Patient ID','Date'])
df = pd.merge(df,ogtt,how='outer',on=['Patient ID','Date','Age at Test (Years)'])
df = pd.merge(df,albumin,how='outer',on=['Patient ID','Date','Age at Test (Years)'])
df = pd.merge(df,vitamins,how='outer',on=['Patient ID','Date','Age at Test (Years)'])
df = pd.merge(df,bun_creat,how='outer',on=['Patient ID','Date','Age at Test (Years)'])
df = pd.merge(df,lfts,how='outer',on=['Patient ID','Date','Age at Test (Years)'])
df = pd.merge(df,pfts,how='outer',on=['Patient ID','Date','Age at Test (Years)'])
df = pd.merge(df,start_effective,how='outer',on=['Patient ID'])
# Add CFTR modulator
df['Modulator'] = np.nan
for index, row in df.iterrows():
    # Determine modulator by age
    age = row['Age at Test (Years)']
    # Get dates by ID
    id = row['Patient ID']
    mods = cftr_mods[cftr_mods['Patient ID'] == id]
    # Drop duplicates and sort by age
    mods = mods.drop_duplicates('Age at Start (years)')
    mods = mods.sort_values('Age at Start (years)')
    # Cut based on age and modulator table
    m = pd.cut([age],bins=[-float('Inf')]+[m for m in mods['Age at Start (years)']]+[float('Inf')],labels = ['None'] + [m for m in mods['Modulator']],right=False,duplicates='drop')
    df.loc[index,'Modulator'] = m[0]
# Convert types
df['CRP'].replace({'LESS THAN 0.1':0.1,'LESS THAN 0.5':0.5,'LESS THAN 1.0':1,'less t':0},inplace=True)
df['NTM'].replace({'Positive':1,'Negative':0,'Not recorded':np.nan},inplace=True)
df['Fecal Elastase'].replace({'>500':500},inplace=True)
df['VitaminA_Retinol'].replace({'LESS THAN 5':5},inplace=True)
df['25OH-Vitamin D'].replace({'<13':13},inplace=True)
df['Vitamin E Gamma'].replace({'LESS THAN 0.4':0.4,'LESS THAN 1.0':1,'NONE DETECTED':np.nan},inplace=True)
df['Creatinine'].replace({'LESS THAN 0.15':0.15},inplace=True)
df['GGTP'].replace({'<10':10},inplace=True)
df['Total Bilirubin'].replace({'<0.1':0.1},inplace=True)
# Sort
df.sort_values(by=['Patient ID','Age at Test (Years)'],inplace=True)
# Write
df.to_csv(wd + 'Data_Cleaned/analysis_dataset.csv',index=False)
my_report = sv.analyze(df)
my_report.show_html(filepath=wd + 'Data_Cleaned/cf_nutrition_eda.html',open_browser=False,layout='vertical')