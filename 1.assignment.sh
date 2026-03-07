#!/bin/bash/

FILE=$1
PATH=$2

if [ -f  /$PATH/$FILE] ;then
   echo "$FILE exists in path $PATH"
else
    echo "$FILE not exist in path $PATH"
fi