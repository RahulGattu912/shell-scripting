#!/bin/bash

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

SOURCE_DIR=$1
DEST_DIR=$2
# DAYS=$3 || DAYS=14 #default value
DAYS=${3:-14} #if DAYS is not provided, default to 14

LOGS_FOLDER="/home/ec2-user/shellscript-logs"
LOG_FILE=$(echo $0 | cut -d "." -f1 ) #log file name will be backup
TIMESTAMP=$(date +%Y-%m-%d-%H-%M-%S) # timestamp format
LOG_FILE_NAME="$LOGS_FOLDER/$LOG_FILE-$TIMESTAMP.log"

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo -e "$2 ... $R FAILURE $N"
        exit 1
    else
        echo -e "$2 ... $G SUCCESS $N"
    fi
}


USAGE(){
    echo -e "$R USAGE: $N sh backup.sh <SOURCE_DIR> <DEST_DIR> [DAYS](optional, default=14)"
    exit 1
}

mkdir -p /home/ec2-user/shellscript-logs/


if [ $# -lt 2 ]
then
    USAGE
fi

if [ ! -d $SOURCE_DIR ]
then
    echo -e "$R ERROR: Source directory $SOURCE_DIR does not exist $N"
    exit 1
fi

if [ ! -d $DEST_DIR ]
then
    echo -e "$R ERROR: Destination directory $DEST_DIR does not exist $N"
    exit 1
fi

FILES=$(find $SOURCE_DIR -name "*.log" -mtime +$DAYS)

if [ -n "$FILES" ] # if FILES is not empty
then
    echo "Files are: $FILES"
    ZIP_FILE="$DEST_DIR/app-logs-$TIMESTAMP.zip" # zip file name with timestamp
    find $SOURCE_DIR -name "*.log" -mtime +$DAYS | zip -@ $ZIP_FILE
else
    echo "No files older than $DAYS days found in $SOURCE_DIR"
    exit 0
fi

CHECK_ROOT(){
    if [ $USERID -ne 0 ]
    then
        echo "ERROR:: You must have sudo access to execute this script"
        exit 1 #other than 0
    fi
}