LOAD DATA 
INFILE 'ObjectMapping.csv'
BADFILE 'ObjectMapping.bad'
DISCARDFILE 'ObjectMapping.dsc'
TRUNCATE 
INTO TABLE i2b2demodata.PATIENT_MAPPING
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY "`"
TRAILING NULLCOLS
( 
PATIENT_IDE,
PATIENT_IDE_SOURCE,
PATIENT_NUM,
PROJECT_ID CONSTANT "COPD",
UPLOAD_DATE SYSDATE,
DOWNLOAD_DATE SYSDATE,
IMPORT_DATE SYSDATE
)