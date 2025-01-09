#!/bin/bash


services="sshd jenkins docker"
IP=$(hostname -i)
for i in $services
do      
        ps -C $i
        if [ $? != 0 ]
        then    
                echo -e "Subject:$i is not running in $IP machine. \n\nplease team check and fix."|sendmail -v "anuharish67@gmail.com"
	fi
done

