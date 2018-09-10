LOAD DATA 
INFILE 'ObjectMapping.csv'
BADFILE 'ObjectMapping.bad'
DISCARDFILE 'ObjectMapping.dsc'
APPEND 
INTO TABLE i2b2demodata.PATIENT_MAPPING
WHEN PATIENT_IDE LIKE 'ID%'
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY "`"
TRAILING NULLCOLS
( 
PATIENT_IDE,
PATIENT_IDE_SOURCE,
PATIENT_NUM,
PROJECT_ID CONSTANT "ID",
UPLOAD_DATE SYSDATE,
DOWNLOAD_DATE SYSDATE,
IMPORT_DATE SYSDATE
)