#!/bin/bash

for f in `ls $1/*/*.jar`; do 
	
	unzip -l $f | grep $2

	statusCode=$?

	if [[ "$statusCode" == 0 ]] ; then
		echo "$f"
	fi

done
