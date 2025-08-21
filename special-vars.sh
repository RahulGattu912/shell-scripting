#!/bin/bash

echo "All variables passed: $@" # captures all command-line arguments as an array
echo "Total number of arguments: $#" # number of command-line arguments
echo "Script name: $0" # name of the script
echo "Present working directory $PWD" # current working directory
echo "User executing the script: $USER" # user executing the script
echo "Home directory: $HOME" # home directory of the user
echo "Process ID of the current script: $$" # process ID of the current script
echo "Last command exit status: $?" # exit status of the last command
sleep 1 & # run a command in the background
echo "Last background process ID: $!" # last background process ID
echo "Current shell options: $-" # current shell options
echo "Current shell: $SHELL" # current shell being used
echo "Current date and time: $(date)" # current date and time