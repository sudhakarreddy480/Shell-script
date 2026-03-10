#!/bin/bash
# Write a script that finds the largest number from a list of numbers provided as command-line arguments.

# Example:

# ./largest.sh 12 56 3 89 42
# # Output: Largest number is 89

#check for any arguments provided or not

if [ $@ -eq 0 ];then
    echo "no arguments provided"
    exit 1
else
    echo " Finding the largest number from list $@ "
fi

max_num=$1

for i in "$@";do

    if [ $i -gt $max_num ];then
        max_num=$i
    fi
done

echo " largest number is $max_num "