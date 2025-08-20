#!/bin/bash

num1=$1
num2=$2
sum=$(($num1+$num2))
echo "The sum of $num1 and $num2 is $sum."
echo "This script calculates the sum of two numbers passed as command-line arguments."

arr=$* # $* captures all command-line arguments as a single string
echo "The command-line arguments are: $arr"