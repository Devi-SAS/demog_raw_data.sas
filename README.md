# demog_raw_data.sas
SAS code for transforming raw demographic data into CDISC SDTM DM dataset

data Demog;
   input STUDYID $ 
         SITEID $ 
         SUBJID $ 
         DOB : yymmdd10. 
         SEX $ 
         RACE : $50.  
         ARM : $20. 
         RFSTDTC : yymmdd10. 
         RFENDTC : yymmdd10.;
   format DOB RFSTDTC RFENDTC yymmdd10.;
datalines;
STUDY01 001 101 1985-05-12 M "White"                       "Treatment" 2024-01-01 2024-06-30
STUDY01 001 102 1990-08-25 F "Black_or_African_American"   "Control"   2024-01-05 2024-06-30
STUDY01 002 201 1978-03-15 M "Asian"                       "Treatment" 2024-01-10 2024-06-30
STUDY01 002 202 1988-11-20 F "Hispanic_or_Latino"          "Control"   2024-01-12 2024-06-30
;
run;

proc print data=Demog;
run;

