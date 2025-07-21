#!/bin/bash
#
#
#date: 21th july 2025
#written by: krishna
#
#this script is for compressing the log files with extensions .log.1,.log.2 etcc as they are old log files there is no problem in compressing them.
#
#
log_path="/var/log"

backup="/home/krishna/COMPRESSED_FILES"

date=$(date '+%Y-%M-%d_%H-%M-%S')

script_log="$backup/compression_log_$DATE.txt"

mkdir -p "$backup"

echo "log compression started at $DATE" > "$script_log"

old_logs=$(find "$log_path" -type f \( -name "*.log.1" -o -name "*.log.2" \))

for file in $old_logs; do
	gzip "$file"

	gzFile="${file}.gz"

	mv "$gzFile" "$backup"

	echo "COMPRESSSED AND MOVED : $gzFile" >> "$script_log"
done




