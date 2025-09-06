#!/bin/bash

DISK_USAGE=$(df -hT | grep xfs)
DISK_THRESHOLD=5 # real projects will monitor for 70

while read -r line
do
    USAGE=$(echo $line | awk -F " " '{print $6}' | cut -d'%' -f1) # get usage percentage without %
    PARTITION=$(echo $line | awk -F " " '{print $N}')
    echo "Partition: $PARTITION, Usage: $USAGE"
done <<< "$DISK_USAGE"