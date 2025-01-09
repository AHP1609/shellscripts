#!/bin/bash

echo -e "Menu:\n1: to create two files.\n2:To change the permission of a file\n3:to search a pattern in file\n4:to list the files and directories recursively."
echo "Please enter your option."
read option
case $option in
	'1')echo "Please enter filenames to create file.";read a;read b;touch $a $b;
	;;
        '2')echo "Enter the permission and filename to change its permission.";
		read a;
		read b;
		chmod $a $b;
		echo "The permission of file $b is changed."
	;;
'3')echo "Enter the filename and keyword to search in that file.";
	read a;
	read b;
	grep -i "$b" $a;
	;;
'4')
	echo "enter the path";
	read path;
	echo "List of all files and folders in the given path $path.";
	ls -lrt $path;
	;;
esac

