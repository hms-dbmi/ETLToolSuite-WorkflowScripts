#!/bin/bash

# variables set from passed parameters
URL=$1
SCRIPTS_DIR=$2*.ctl

for filename in $SCRIPTS_DIR; do
	datafile=completed/$(basename "$filename" .ctl).csv
	nohup sqlldr $URL control=$filename data=$datafile ROWS=1000 BINDSIZE=999999999 &
done

echo $! > save_pid.txt

wait `cat save_pid.txt` 

rm save_pid.txt


#echo "Loading PatientDimension"
#nohup sqlldr $URL control=PatientDimension.ctl ROWS=1000 BINDSIZE=99999999 &

#echo "Loading ConceptDimension"
#nohup sqlldr $URL control=ConceptDimension.ctl ROWS=1000 BINDSIZE=99999999 &

#echo "Loading ObservationFact"
#nohup sqlldr $URL control=ObservationFact.ctl ROWS=1000 BINDSIZE=99999999 &

#echo "Loading ObjectMapping"
#nohup sqlldr $URL control=PatientMapping.ctl ROWS=1000 BINDSIZE=99999999 &

#echo "Loading ModifierDimension"
#nohup sqlldr $URL control=ModifierDimension.ctl ROWS=1000 BINDSIZE=99999999 &

#echo "Loading I2B2"
#nohup sqlldr $URL control=I2B2.ctl ROWS=1000 BINDSIZE=99999999 &

#echo $! > save_pid.txt

#wait `cat save_pid.txt` 

#rm save_pid.txt

#echo "Loading TableAccess"
#nohup sqlldr $URL control=TableAccess.ctl ROWS=1000 BINDSIZE=99999999 &

#echo "Loading ConceptDimension"
#nohup sqlldr $URL control=PatientTrial.ctl ROWS=1000 BINDSIZE=99999999 &

#echo "Loading ConceptCounts"
#sqlldr $URL control=ConceptCounts.ctl ROWS=1000 BINDSIZE=99999999 &

