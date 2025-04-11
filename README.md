# demog_raw_data.sas
SAS code for transforming raw demographic data into CDISC SDTM DM dataset

# SDTM DM Dataset Creation from Raw Demographics

## Project Overview
This project demonstrates how to create a **CDISC SDTM-compliant DM (Demographics) dataset** from raw clinical trial data using **SAS**.

---

## Input

A small sample demographic dataset created using inline `datalines` in SAS:
- `STUDYID`, `SITEID`, `SUBJID`
- Date of birth (`DOB`)
- Gender (`SEX`)
- Race (`RACE`)
- Treatment arm (`ARM`)
- Reference start and end dates (`RFSTDTC`, `RFENDTC`)

---

## Transformation Highlights

The raw data is transformed into the SDTM-compliant **DM domain** with:
- `DOMAIN` and `USUBJID` generation
- Calculation of `AGE` and `AGEU`
- Date formatting (`BRTHDTC`, `RFSTDTC`, `RFENDTC`)
- Labeling of all key variables
- Underscore in `RACE` converted to spaces using `tranwrd()`

---

## Output Dataset: `DM`
| Variable | Label |
|----------|-------|
| STUDYID  | Study Identifier |
| DOMAIN   | Domain Abbreviation |
| USUBJID  | Unique Subject Identifier |
| SUBJID   | Subject ID |
| SITEID   | Site Identifier |
| BRTHDTC  | Birth Date |
| SEX      | Sex |
| RACE     | Race |
| AGE      | Age |
| AGEU     | Age Units |
| RFSTDTC  | Reference Start Date |
| RFENDTC  | Reference End Date |
| ARM      | Planned Arm |


