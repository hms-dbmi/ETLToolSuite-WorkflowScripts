LOAD DATA 
INFILE 'ObservationFact.csv'
BADFILE 'ObservationFact.bad'
DISCARDFILE 'ObservationFact.dsc'
TRUNCATE 
INTO TABLE i2b2demodata.observation_fact_y
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY "`"
TRAILING NULLCOLS
( 
ENCOUNTER_NUM CONSTANT 1,
x filler,
PATIENT_NUM,
CONCEPT_CD,
PROVIDER_ID "NVL(:PROVIDER_ID,1)",
START_DATE "NVL(:START_DATE,SYSDATE)",
MODIFIER_CD "NVL(:MODIFIER_CD,'@')",
INSTANCE_NUM constant 1,
VALTYPE_CD,
TVAL_CHAR,
NVAL_NUM,
VALUEFLAG_CD,
QUANTITY_NUM "NVL(:QUANTITY_NUM,1)",
UNITS_CD,
END_DATE,
LOCATION_CD,
OBSERVATION_BLOB char(1),
CONFIDENCE_NUM,
UPDATE_DATE "NVL(:UPDATE_DATE,sysdate)",
DOWNLOAD_DATE "NVL(:DOWNLOAD_DATE,sysdate)",
IMPORT_DATE "NVL(:IMPORT_DATE,sysdate)",
SOURCESYSTEM_CD,
UPLOAD_ID
)