#!/bin/bash

read -p "Enter first number: " num1 #-p prompts for user input
read -p "Enter second number: " num2
sum=$(($num1 + $num2))
echo "The sum of $num1 and $num2 is $sum."
echo "This script reads two numbers from user input and calculates their sum."

read -sp "Enter username: " username # -s hides input
echo # new line
read -sp "Enter password: " password # -sp prompts for password input
echo # new line
echo -e "\nUsername entered: $username" # -e enables interpretation of backslash escapes
echo "This script demonstrates reading values from user input in shell scripting."