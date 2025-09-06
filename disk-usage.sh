#!/bin/bash

DISK_USAGE=$(df -hT | grep xfs)
DISK_THRESHOLD=5 # real projects will monitor for 70

while read -r line
do
    USAGE=$(echo $line | awk -F " " '{print $6}' | cut -d'%' -f1) # get usage percentage without %
    PARTITION=$(echo $line | awk -F " " '{print $N}')
    # echo "Partition: $PARTITION, Usage: $USAGE"
    if [ $USAGE -gt $DISK_THRESHOLD ] 
    then
        MSG+="High disk usage on partition $PARTITION: $USAGE% (threshold: $DISK_THRESHOLD%)\n" # appends message
    fi
done <<< $DISK_USAGE

echo -e "$MSG" | mutt -s "High Disk Usage" rahulgattu912@gmail.com