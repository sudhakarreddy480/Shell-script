#!/bin/bash/
# Filter Lines from a File

# Write a script that reads a large CSV/log file line by line and filters all lines that contain the word ERROR.

#     Save those lines into a separate output file.
#     Include a header line in the output.
FILE=$1
>/tmp/ERROR_Log


if [ -f $FILE ];then
    echo "$FILE exists in server"
else
    echo "$FILE not exist in server, exiting..."s
    exit 1
fi


Validate(){
    if [ $1 != 0 ];then
        echo "validation failed and error log not captured."
    else
        echo " Error log captured saved in location /tmp/ERROR_Log "
    fi
}
cat $FILE |grep -i error >> /tmp/ERROR_Log
CHECK=$(echo $?)
Validate $CHECK
