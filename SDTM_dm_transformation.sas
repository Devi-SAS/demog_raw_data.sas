Data DM;
 Set Demog;

    DOMAIN = "DM";
    USUBJID = catx("-", STUDYID, SITEID, SUBJID);
    BRTHDTC = DOB;
    SEX = upcase(SEX);
    RACE = tranwrd(RACE, "_", " ");
    
  if not missing(DOB) and not missing(RFSTDTC) then do;
     AGE = intck('year', DOB, RFSTDTC);
     if month(DOB) > month(RFSTDTC) or 
        (month(DOB) = month(RFSTDTC) and day(DOB) > day(RFSTDTC)) then AGE = AGE - 1;
  end;

  if not missing(AGE) then AGEU = "YEARS";

    label
        STUDYID  = "Study Identifier"
        DOMAIN   = "Domain Abbreviation"
        USUBJID  = "Unique Subject Identifier"
        SUBJID   = "Subject ID"
        SITEID   = "Site Identifier"
        BRTHDTC  = "Birth Date"
        SEX      = "Sex"
        RACE     = "Race"
        AGE      = "Age"
        AGEU     = "Age Units"
        RFSTDTC  = "Reference Start Date"
        RFENDTC  = "Reference End Date"
        ARM      = "Planned Arm";

    format DOB RFSTDTC RFENDTC BRTHDTC yymmdd10.;
run;

Proc print data=dm noobs label;
run;
