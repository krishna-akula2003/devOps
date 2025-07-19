#!/bin/bash
#
#19th july,2025
#
#this script shows the disk usage and live processes running and their time stamps and with other detailed things regarding process ids etc..
#

set -x  

echo "the below output shows processes running with time stamp , cpu usage, processId etc.."
ps -ef | head -n 5 
echo ""

echo "the following output shows regarding the disk usage"
df -h |head -n 5
echo ""

echo " the below output shows regarding RAM usage and amount of swap memory present"
free -h
echo ""

echo "here are the live processes running on the system:"
top 
