#!/bin/bash
var=$(date "+%A")

case $var in
'Monday')touch monday.1 monday.2
;;
'Tuesday')touch tuesday.1;rm -rf monday.1
;;
'Wednesday')mv monday.1 wednesday.1
;;
'Saturday'|'Sunday')echo "Saturday and sundays are holidays."
;;
esac

