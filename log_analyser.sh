#!/bin/bash
#
#
### written by:Krishna
#
##### this script prints the nginx log's top 5 ip addresses, requested paths,response staus codes, user agents.
#####
#
 
log_fl="$1"

if [[ ! -f "$log_fl" ]]; then
	echo "Log file not found.Please provide a valid file"
	exit 1
fi

echo "Analyzing log file :$log_fl"
echo "---------------------------------------------------------------------"

echo "the top 5 ip addressess logged on to server many times:"

awk '{print $1}' "$log_fl" |sort |uniq -c| sort -nr| head -5

echo "---------------------------"

echo "the top 5 requested paths:"

awk -F'"' '{print $2}' "$log_fl" | awk '{print $2}' | sort | uniq -c | sort -nr |head -5

echo "---------------------------------------------------------------------"

echo "the top 5 response status codes:"

awk '{print $9}' "$log_fl" |sort | uniq -c |sort -nr | head -5

echo "---------------------------------------------------------------------"

echo "Top 5 user agents"

awk -F'"' '{print $6}' "$log_fl" |sort | uniq -c |sort -nr| head -5

