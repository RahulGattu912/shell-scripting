#!/bin/bash

#install mysql
USERID=$(id -u) # 0 is root user

if [ $USERID -ne 0 ]
then
    echo "Error: You must run this script as root or with sudo privileges."
    exit 1 # 0 is success, 1 is failure
fi

dnf list installed mysql # check if mysql is already installed

if [ $? -eq 0 ] # $? captures the exit status of the last command
then
    echo "MySQL is already installed."
    exit 0
else
    echo "MySQL is not installed. Proceeding with installation..."
    dnf install mysql -y
    # dnf install mysqql -y # if package name is incorrect, it will fail
    if [ $? -eq 0 ] # $? captures the exit status of the last command
    then
        echo "MySQL installed successfully."
    else
        echo "Failed to install MySQL."
        exit 1
    fi
    echo "MySQL installation script completed."
fi






