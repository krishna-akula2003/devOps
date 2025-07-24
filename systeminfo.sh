#!/bin/bash
#
#19th july,2025
#
#this script shows  total cpu,memory usage and top 5 processess using more memory and cpu  etc..
#

#set -x  

echo 

echo 

free -m |grep "Mem:"| awk '{printf "MEMORY USAGE (USED %sMB of %sMB):%.2f%%\n",$3,$2, $3/$2*100}'

echo "-----------------------------------------------------------------------------------------------------------------------------------------------------------"

echo 
top -b -n1|grep "%Cpu"|awk '{printf "TOTAL CPU USAGE IS  : %.2f%%\n ",$8,  100 -  $8}'

echo "-----------------------------------------------------------------------------------------------------------------------------------------------------------"

echo
df -h /| grep "dev"| awk '{printf "TOTAL DISK USAGE IS (USED %s of %s) : %.2f%%\n  ",$3,$2,  $3/$2*100 "%"}'

echo "--------------------------------------------------------------------------------------------------"

echo 
echo "TOP 5 PROCESSES BY CPU USAGE ARE:"

ps -eo pid,comm,%cpu --sort="-%cpu"| head -n 6

echo "-----------------------------------------------------------------------------------------------------"

echo 

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
