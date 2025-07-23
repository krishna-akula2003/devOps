#!/bin/bash
#
#19th july,2025
#
#this script shows the disk usage and live processes running and their time stamps and with other detailed things regarding process ids etc..
#

#set -x  

free -m |grep "Mem:"| awk '{printf "MEMORY USAGE (USED %sMB of %sMB):%.2f%%\n",$3,$2, $3/$2*100}'

echo "-----------------------------------------------------------------------------------------------------------------------------------------------------------"

top -b -n1|grep "%Cpu"|awk '{printf "TOTAL CPU USAGE IS  : %.2f%%\n ",$8,  100 -  $8}'

echo "-----------------------------------------------------------------------------------------------------------------------------------------------------------"

df -m /| grep "dev"| awk '{printf "TOTAL DISK USAGE IS (USED %s MB of %s MB) : %.2f%%\n  ",$3,$2,  $3/$2*100 "%"}'

echo "--------------------------------------------------------------------------------------------------"

echo "TOP 5 PROCESSES BY CPU USAGE ARE:"

ps -eo pid,comm,%cpu --sort="-%cpu"| head -n 6

echo "-----------------------------------------------------------------------------------------------------"

echo "TOP 5 PROCESSES BY MEMORY USAGE ARE:"
ps -eo pid,comm,%mem --sort="-%mem" | head -n 6
#echo "the below output shows processes running with time stamp , cpu usage, processId etc.."
#ps -ef | head -n 5 
#echo ""

#echo "the following output shows regarding the disk usage"
#Zdf -h |head -n 5
#echo ""

#echo " the below output shows regarding RAM usage and amount of swap memory present"
#free -h
#echo ""

#echo "here are the live processes running on the system:"
#top 
