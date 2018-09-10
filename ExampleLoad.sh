#!/bin/bash

datafolder=$1
host=$2
usernamepassword=$3

/Users/tom/Downloads/instantclient_12_2/sqlldr $3@$2:1521/orclpdb1 control=scripts/oracle/ctl/I2B2TM_V18_1/TRUNCATE/TableAccess.ctl data=$1/TableAccess.csv ROWS=1000 BINDSIZE=999999999 &
echo $! > save_pid.txt
echo loading 'TableAccess'
wait `cat save_pid.txt` 

rm save_pid.txt
/Users/tom/Downloads/instantclient_12_2/sqlldr $3@$2:1521/orclpdb1 control=scripts/oracle/ctl/I2B2TM_V18_1/TRUNCATE/PatientTrial.ctl data=$1/PatientTrial.csv ROWS=1000 BINDSIZE=999999999 &
echo $! > save_pid.txt
echo loading 'PatientTrial'

wait `cat save_pid.txt` 

rm save_pid.txt
/Users/tom/Downloads/instantclient_12_2/sqlldr $3@$2:1521/orclpdb1 control=scripts/oracle/ctl/I2B2TM_V18_1/TRUNCATE/PatientMapping.ctl data=$1/PatientMapping.csv ROWS=1000 BINDSIZE=999999999 &
echo $! > save_pid.txt
echo loading 'PatientMapping'

wait `cat save_pid.txt` 

rm save_pid.txt
#/Users/tom/Downloads/instantclient_12_2/sqlldr $3@$2:1521/orclpdb1 control=scripts/oracle/ctl/I2B2TM_V18_1/TRUNCATE/ObjectMapping.ctl data=$1/ObjectMapping.csv ROWS=1000 BINDSIZE=999999999 &
#echo $! > save_pid.txt
#echo loading 'ObjectMapping'

#wait `cat save_pid.txt` 

rm save_pid.txt
/Users/tom/Downloads/instantclient_12_2/sqlldr $3@$2:1521/orclpdb1 control=scripts/oracle/ctl/I2B2TM_V18_1/TRUNCATE/ModifierDimension.ctl data=$1/ModifierDimension.csv ROWS=1000 BINDSIZE=999999999 &
echo $! > save_pid.txt
echo loading 'ModifierDimension'

wait `cat save_pid.txt` 

rm save_pid.txt
/Users/tom/Downloads/instantclient_12_2/sqlldr $3@$2:1521/orclpdb1 control=scripts/oracle/ctl/I2B2TM_V18_1/TRUNCATE/PatientDimension.ctl data=$1/PatientDimension.csv ROWS=1000 BINDSIZE=999999999 &
echo $! > save_pid.txt
echo loading 'PatientDimension'

wait `cat save_pid.txt` 

rm save_pid.txt
/Users/tom/Downloads/instantclient_12_2/sqlldr $3@$2:1521/orclpdb1 control=scripts/oracle/ctl/I2B2TM_V18_1/TRUNCATE/ConceptCounts.ctl data=$1/ConceptCounts.csv ROWS=1000 BINDSIZE=999999999 &
echo $! > save_pid.txt
echo loading 'ConceptCounts'

wait `cat save_pid.txt` 

rm save_pid.txt
/Users/tom/Downloads/instantclient_12_2/sqlldr $3@$2:1521/orclpdb1 control=scripts/oracle/ctl/I2B2TM_V18_1/TRUNCATE/ConceptDimension.ctl data=$1/ConceptDimension.csv ROWS=1000 BINDSIZE=999999999 &
echo $! > save_pid.txt
echo loading 'ConceptDimension'

wait `cat save_pid.txt` 

rm save_pid.txt
/Users/tom/Downloads/instantclient_12_2/sqlldr $3@$2:1521/orclpdb1 control=scripts/oracle/ctl/I2B2TM_V18_1/TRUNCATE/I2B2.ctl data=$1/I2B2.csv ROWS=1000 BINDSIZE=999999999 &
echo $! > save_pid.txt
echo loading 'I2B2'

wait `cat save_pid.txt` 

rm save_pid.txt
/Users/tom/Downloads/instantclient_12_2/sqlldr $3@$2:1521/orclpdb1 control=scripts/oracle/ctl/I2B2TM_V18_1/TRUNCATE/ObservationFact.ctl data=$1/ObservationFact.csv ROWS=1000 BINDSIZE=999999999 &
echo $! > save_pid.txt
echo loading 'ObservationFact'

wait `cat save_pid.txt` 

rm save_pid.txt


echo 'load completed'