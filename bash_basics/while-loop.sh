#!/bin/bash
#
#
#sample while loops
# 
#
#
l=0

echo "########################################"
while [ "$l" -lt 20 ]
do
	echo $l
	l=$((l+1))
done
#

echo "#####################################################"
while [ "$l" -ne 0 ]
do
	echo $l
	l=$((l-1))
done


t="spring1"

while [ "$t" != "spring" ]
do
	echo "they are not equal"
	break
done
echo "#####################################################"
#
t="ramu"
while [ "$t" == "ramu" ]
do
	echo "they are equal"
	break
done
#######################################
