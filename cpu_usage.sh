#!/bin/bash
#
#
#date:19th july 2025
#
#this scipt tells the user regarding the CPU usage ,memory usage,disk usage in a simple format and alerts if it exceeds 85%
#
#
cpu=85
memory=85
disk=85


CPU_USAGE=$(top -bn1 | grep "Cpu(s)" | awk '{print int($2)}')

MEM_USAGE=$(free | grep Mem | awk '{print int($3/$2 * 100)}')

DISK_USAGE=$(df / | tail -1 | awk '{print $5}' | tr -d '%')


echo "cpu usage is $CPU_USAGE"

echo "memory  usage is $MEM_USAGE"

echo "disk usage is $DISK_USAGE"



if (( CPU_USAGE >= cpu )); then
    echo "WARNING: CPU usage is above ${CPU_THRESHOLD}%!"
fi

if (( MEM_USAGE >= memory )); then
    echo "WARNING: Memory usage is above ${MEM_THRESHOLD}%!"
fi

if (( DISK_USAGE >= disk )); then
    echo "WARNING: Disk usage is above ${DISK_THRESHOLD}%!"
fi

