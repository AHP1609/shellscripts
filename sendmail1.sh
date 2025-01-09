#!/bin/bash

while read line
do
        receiver=$(echo $line|awk '{print $1}')
        fname=$(echo $line|awk '{print $2}')
        lname=$(echo $line|awk '{print $3}')
        add=$(echo $line|awk '{print $4}')
        num=$(echo $line|awk '{print $5}')
        
        sed sed -e 's/<from-email>/anuharish67@gmail.com/g' \
    -e 's/<to-email>/$receiver/g' \
    -e 's/<name>/$fname/g' \
    -e 's/<surname>/$lname/g' \
    -e 's/<address>/$add/g' \
    -e 's/<phone number>/$num/g' subject | \
    (echo "From: anuharish67@gmail.com" 
         echo "To: $receiver"
         echo "Subject:$fname $lname, You are invited to shop opening"
         echo "$fname, Please come to the shop opening, I know you are from $add and your phone number is $num")| sendmail -v "$receiver"
 done <mailinput
