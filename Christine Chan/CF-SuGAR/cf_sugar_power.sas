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

proc power;
   coxreg
      hazardratio = 1.01
      rsquare = 0.043
      stddev = 45
      power = 0.8 0.85 0.9
      alpha = 0.05
      sides = 2
      eventprob = 0.12 0.15 0.18
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
proc mixed 
	data=registry ratio;
	class eDWID a1c_group(ref='(5.9, Inf]');
	model bmi = a1c_group Age_YrEnd / solution influence DDFM=KENWARDROGER2 outpm=influence residual;
	repeated / subject=eDWID type=un;
/*	random intercept Age_YrEnd / type=un subject=eDWID;*/
run;
proc means data=influence;var Resid;run;
proc means data=influence;var StudentResid;run;

proc univariate plot normal data=influence;var Resid StudentResid;run;

/*FEV1 % predicted*/
proc mixed 
	data=registry ratio;
	class eDWID;
	model A_FEV1_pct_predicted = a1c_group Age_YrEnd / solution influence DDFM=KENWARDROGER2 outpm=influence residual;
	repeated / subject=eDWID type=un;
/*	random intercept Age_YrEnd / type=un subject=eDWID;*/
run;

proc means data=influence;var Resid;run;
proc means data=influence;var StudentResid;run;

/*Import encounter-level data data*/
PROC IMPORT OUT= WORK.ENCOUNTERS 
            DATAFILE= "C:\Users\vigerst\OneDrive - The University of Col
orado Denver\Vigers\CF\Christine Chan\CF-SuGAR\Background\Power Calculat
ions\Data\encounters.csv" 
            DBMS=CSV REPLACE;
     GETNAMES=YES;
     DATAROW=2; 
RUN;
/*FEV1 % predicted by modulator status*/
proc mixed 
	data=encounters ratio;
	class eDWID modulator;
	model GLI_FEV1_pct_predicted = visit*modulator / solution influence DDFM=KENWARDROGER2 outpm=influence residual;
	repeated / subject=eDWID type=un;
/*	random intercept Age_YrEnd / type=un subject=eDWID;*/
run;
