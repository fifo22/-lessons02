#!/bin/bash
#
echo "Enter name of new user:"
read v_user
v_flag=0
v_y="yesда"
v_n="noнет"
while [ $v_flag -lt 1 ]
do
if grep "${v_user}:" /etc/passwd 
	then echo "Such a user already exists!!"
	v_flag1=0
	while [ $v_flag1 -lt 1 ]
	do
	echo "Create a user with a different name?(Yes\No):"
	read v_yn
	if [[ "$v_y" =~ "${v_yn@L}" ]]; then
		echo "Enter name of new user:"
		read v_user
		v_flag1=1
	else if [[ "$v_n" =~ "${v_yn@L}" ]]; then
		v_flag=1
		v_flag1=1
		else echo "Invalid character entered!!"
		fi
	fi
	done
else sudo useradd $v_user
	v_flag=1
	echo "$v_user user added"
fi
done


#Результат:
#fifo@fifo-VMware-Virtual-Platform:~/temp/less/02$ bash 02.sh
#Enter name of new user:
#fifo
#fifo:x:1000:1000:FIFO:/home/fifo:/bin/bash
#Such a user already exists!!
#Create a user with a different name?(Yes\No):
#gh
#Invalid character entered!!
#Create a user with a different name?(Yes\No):
#n
#fifo@fifo-VMware-Virtual-Platform:~/temp/less/02$ bash 02.sh
#Enter name of new user:
#fifo
#fifo:x:1000:1000:FIFO:/home/fifo:/bin/bash
#Such a user already exists!!
#Create a user with a different name?(Yes\No):
#y
#Enter name of new user:
#fifo1
#[sudo] пароль для fifo: 
#fifo1 user added

