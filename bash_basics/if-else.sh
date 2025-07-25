#!/bin/bash
#
#
#author : krishna
#date :25th july,2025
#
#this is a sample practice script for if else shows cpu,disk , memory usage alerts if used more than 80%
#

cpu=$(top -b -n1|grep "%Cpu"| awk '{print int(100-$8)}')

echo "System CPU usage is:$cpu% "

mem=$(free -h|grep "Mem:"| awk '{print int($3/$2 * 100)}')

echo "Memory usage is :$mem"%""

disk=$(df -h / |grep "dev" |awk '{print int($5)}')

echo "Disk usage is :$disk"%""

if [ $cpu -gt 80 ];then
	echo "YOUR SYSTEMS CPU USAGE IS MORE THAN  80%"
fi

if [ $mem -gt 80 ];then
	echo "YOUR MEMEORY USAGE IS MORE THAN 80%"
fi
if [ $disk -gt 80 ];then
	echo "your storage  is almost full occupied more than 80% of storage "
fi
