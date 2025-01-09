#!/bin/bash
while read line
do
	
    echo $line|awk '{print $1}'
done <mailinput
