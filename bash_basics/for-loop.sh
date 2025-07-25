#!/bin/bash
#
#
#a sample for loop
#
###########################################
read -p "Enter number a" a

read -p "Enter number b" b

for (( i=a; i<b; i++))
do
	echo $i
done

#############################################
for i in 1 2 3 4 5
do
	echo $i
done
