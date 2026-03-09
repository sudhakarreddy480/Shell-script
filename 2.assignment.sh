#!/bin/bash
#2. Count Lines, Words, and Characters
# Write a script that accepts a filename and prints:

#     The number of lines
#     The number of words
#     The number of characters
FILE=$1

if [ -f $FILE ] ; then
    echo " $FILE exists in server "
else
    echo " $FILE not exists, provide correct file name "
    exit 1
fi

if [ -r $FILE ] ; then
    echo " $FILE have read perimission "
else
    echo " $FILE don't have read permission "
    exit 1
fi

LCOUNT=$(cat $FILE) | wc -l)
WCOUNT=$(cat $FILE | wc -w)
C_COUNT=$(cat $FILE | wc -c)

echo "$FILE  Line count is $LCOUNT"
echo "$FILE  Word count is $WCOUNT"
echo "$FILE  character count is $C_COUNT"