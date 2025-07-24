#!/bin/bash
#
#author : Krishna
#
#this script  used to create a user, and  delete a user, change password of a user, lock and unlock a user
#
echo "----------------------------------------------------------------------------"
echo "PLEASE CHOOSE THE OPTION CAREFULLY AS SCRIPT CONTAIN SUDO COMMANDS BY MISTAKE U CAN DELETE USERS IN YOUR SYSTEM "
echo "----------------------------------------------------------------------- "

echo "Enter 1 for creating a user"
echo "Enter 2 to delete a user"
echo "Enter 3 for unlock a user"
echo "Enter 4 for lock  a user"
echo "Enter 5 for changing password"
read -p "Enter number: " q

case "$q" in 
	1)      read -p "Enter username:"  t
		sudo adduser "$t"
		echo "user '$t' created"
		;;

	2)      read -p "Enter username:" g
		sudo deluser "$g"
		echo "----------------------------------------------------------------------------------------------------------"
		echo "THE USER '$g' IS DELETED ,BUT THE DIRECTORY IN /HOME WITH THIS USER IS NOT DELETED REMOVE IT MANUALLY USING  rm -r /home/$g "
		echo "-----------------------------------------------------------------------------------------------------------"
		;;

	3)      read -p "Enter username:" l
		sudo passwd -u "$l"
		echo "user '$l' unlocked"
		;;
		
	4)      read -p "Enter username:" z
		read -p "asking once more(type y to confirm)"  m
		if [ "$m" = "y" ]; then	       
			sudo passwd -l "$z"
			echo "user '$z' locked"
		else
			echo "the user "$z"is  not locked"
	       fi
		;;

	5)     read -p "Enter username:" b
		sudo passwd "$b"
		echo "password changed for user'$b'"
		;;

	*)     echo "Invalid Option"
		;;
esac

