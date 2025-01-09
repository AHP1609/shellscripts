#!/bin/bash

while read line
do
        receiver=$(echo $line|awk '{print $1}')
        fname=$(echo $line|awk '{print $2}')
        lname=$(echo $line|awk '{print $3}')
        add=$(echo $line|awk '{print $4}')
        num=$(echo $line|awk '{print $5}')

        sed -i -e 's/<from-email>/anuharish67@gmail.com/g' \
                -e 's/<to-email>/$receiver/g' \
                -e 's/<name>/$fname/g' \
                -e 's/<surname>/$lname/g' \
                -e 's/<address>/$add/g' \
                -e 's/<phone number>/$num/g' subject1.sh | bash subject1.sh | sendmail -v "$receiver"
 done <mailinput
