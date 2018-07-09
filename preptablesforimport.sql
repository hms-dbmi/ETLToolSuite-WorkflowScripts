SPOOL indexes.sql

select '\' || dbms_metadata.get_ddl('INDEX', index_name, owner) || '\'
FROM all_indexes
WHERE owner IN ('I2B2DEMODATA') AND TABLE_NAME IN (
'OBSERVATION_FACT',
'CONCEPT_DIMENSION',
'CONCEPT_COUNTS',
'PATIENT_DIMENSION',
'OBJECT_MAPPING'
);

SPOOL OFF