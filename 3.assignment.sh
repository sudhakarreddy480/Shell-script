#!/bin/bash
# String Replacement in Files

# Write a script that replaces all occurrences of a string in multiple files.

#     Replace the string FOO with BAR in all .conf files in a given directory and its subdirectories.
#     Use find + sed (or perl -pi).

DIR_NAME=$1

if [ -d $DIR_NAME ];then
    echo " $DIR_NAME exists in server "
else
    echo "$DIR_NAME not exist provide correct direcory"
    exit 1
fi

C_FILES=$(find $DIR_NAME -name "*.conf")
while read -r line;do
    echo $line
    RENAME=$(sed -i 's/sudha/Anitha\'$'\n''/g' $line )
    cat $line
done <<< $C_FILES

#echo -e $RENAMEs