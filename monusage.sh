#!/bin/bash
echo "testing the git"

function display {
	echo "testing the function"
}
function main {
  df -h . >> /home/ubuntu/d2/d3/cron
  echo -e "Subject:Server memory has reached threshold level \n\n Team please check and fix."|sendmail -v "anuharish67@gmail.com"
  disc_usage=$(df -h /home/ubuntu |awk 'NR==2 {print $(NF-1)}' | sed 's/%//g')
  if [ $disc_usage > 30 ];then
  	echo -e "Subject:Server memory has reached threshold level \n\n Team please check and fix."|sendmail -v "anuharish67@gmail.com"
  fi
  display
  bash sendmail1.sh
}

main


