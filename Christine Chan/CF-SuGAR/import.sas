PROC IMPORT OUT= WORK.ENCOUNTERS 
            DATAFILE= "C:\Users\vigerst\OneDrive - The University of Col
orado Denver\Vigers\CF\Christine Chan\CF-SuGAR\Background\Power Calculat
ions\Data\encounters.csv" 
            DBMS=CSV REPLACE;
     GETNAMES=YES;
     DATAROW=2; 
RUN;
