LOAD DATA 
INFILE 'PatientTrial.csv'
BADFILE 'PatientTrial.bad'
DISCARDFILE 'PatientTrial.dsc'
APPEND 
INTO TABLE i2b2demodata.Patient_trial
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY "`"
TRAILING NULLCOLS
( 
PATIENT_NUM,
TRIAL,
SECURE_OBJ_TOKEN
)