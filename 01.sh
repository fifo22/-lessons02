#!/bin/bash
#
v_pwd=$(pwd)
echo "Select a file in the $v_pwd:"
ls
read v_file
v_path=$v_pwd/$v_file
if [ -e $v_path ]
	then echo "Enter the search word:"
	read v_word
	if grep $v_word $v_path
		then rm $v_path
		echo "File $v_file has been deleted"
		ls
	else echo "The word was not found"
	fi
else echo "FILE $v_file NOT EXIST!!"
fi

#Результат:
#fifo@fifo-VMware-Virtual-Platform:~/temp/less/02$ bash 01.sh
#Select a file in the /home/fifo/temp/less/02:
# 01.sh	 01.txt  '01 (Копия).txt'   02.sh
#01.txt
#Enter the search word:
#error
#80052	/home/fifo/.configerror
#File 01.txt has been deleted
# 01.sh	'01 (Копия).txt'   02.sh

	
