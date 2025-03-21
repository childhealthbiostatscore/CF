/*Aim 1 Cox PH power (see R output for these parameters)*/ 

proc power;
   coxreg
      hazardratio = 1.009761 1.1 1.2
      rsquare = 0.04322659 
      stddev = 45.04611 22 90
      power = 0.8 0.85 0.9
      alpha = 0.05
      sides = 2
      eventprob = 0.15 0.3 0.4
      NTOTAL= .
      ;
run;

/*Aim 2 mixed models*/

PROC IMPORT 
	OUT= WORK.REGISTRY 
    DATAFILE= "C:\Users\timvigers\OneDrive - The University of Colorado Denver\Vigers\CF\Christine Chan\CF-SuGAR\Background\Power Calculations\Data\registry.csv" 
    DBMS=CSV REPLACE;
    GETNAMES=YES;
    DATAROW=2; 
RUN;
 
/*BMI*/

proc glimmix 
	data=registry;
	class eDWID;
	model bmi = Age_YrEnd / solution DDFM=KENWARDROGER2;
	random intercept / type=un subject=eDWID;
run;

proc glimmix 
	data=registry;
	class eDWID;
	model bmi = Age_YrEnd Age_YrEnd*Age_YrEnd / solution DDFM=KENWARDROGER2;
	random intercept / type=un subject=eDWID;
run;

proc glimmix 
	data=registry;
	class eDWID;
	model bmi = Age_YrEnd / solution DDFM=KENWARDROGER2;
	random intercept Age_YrEnd / type=un subject=eDWID;
run;

proc glimmix 
	data=registry;
	class eDWID;
	model bmi = Age_YrEnd Age_YrEnd*Age_YrEnd / solution DDFM=KENWARDROGER2;
	random intercept Age_YrEnd / type=un subject=eDWID;
run;

/*FEV1 % predicted*/

proc glimmix 
	data=registry;
	class eDWID;
	model A_FEV1_pct_predicted = Age_YrEnd / solution DDFM=KENWARDROGER2;
	random intercept / type=un subject=eDWID;
run;

proc glimmix 
	data=registry;
	class eDWID;
	model A_FEV1_pct_predicted = Age_YrEnd Age_YrEnd*Age_YrEnd / solution DDFM=KENWARDROGER2;
	random intercept / type=un subject=eDWID;
run;

proc glimmix 
	data=registry;
	class eDWID;
	model A_FEV1_pct_predicted = Age_YrEnd / solution DDFM=KENWARDROGER2;
	random intercept Age_YrEnd / type=un subject=eDWID;
run;

proc glimmix 
	data=registry;
	class eDWID;
	model A_FEV1_pct_predicted = Age_YrEnd Age_YrEnd*Age_YrEnd / solution DDFM=KENWARDROGER2;
	random intercept Age_YrEnd / type=un subject=eDWID;
run;
