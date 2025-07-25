#!/bin/bash
#

read -p "enter a  number:" n

case $n in
	1) echo "Sudnay"
		;;
	2)echo "Monday"
		;;
	3)echo "Tuesday"
		;;
	4)echo "Wednesday"
		;;
	5)echo "Thursaday"
		;;
	6)echo "Friday"
		;;
	7)echo "saturday"
		;;
	*)echo "enter number between 1 to 7"
		;;
esac
