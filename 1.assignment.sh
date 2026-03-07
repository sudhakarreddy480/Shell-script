#!/bin/bash/

FILE=$1
PATH=$2

#check for path exist or not

if [ -d $PATH ] ; then
    echo " $PATH exist now checking for File"
else
    echo " $PATH not exist"
    exit 1
fi

#check for file exist
if [ -f  /$PATH/$FILE ] ; then
   echo "$FILE exists in path $PATH"
else
    echo "$FILE not exist in path $PATH"
fi