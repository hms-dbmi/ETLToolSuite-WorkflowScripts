#!/bin/bash

#for f in $1*; do
	echo aws s3 cp $1 $2 --recursive
 	aws s3 cp $1 $2 --recursive
#done