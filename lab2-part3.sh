#! /bin/bash

FILE="../full/path/to/lab2-test"
LOG="../../var/log/CS183/uptime.log"

if [ -e "$FILE" ]; then
	if [ "$(tail -n 1 $LOG | grep -m 1 "found" | wc -l)" -eq 0 ]; then
		echo "$(date "+%m-%d-%y %T") - File \"$FILE\" has been found" >> $LOG
	fi
else
	if [ "$(tail -n 1 $LOG | grep -m 1 "lost" | wc -l)"  -eq 0 ]; then
		echo "$(date "+%m-%d-%y %T") - File \"$FILE\" has been lost" >> $LOG
	fi
fi
