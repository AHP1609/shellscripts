#!/bin/bash

num=$@
sum=0
for i in $num
do
	echo "$i"
	sum=`expr $sum + $i`
done
echo "$sum"

