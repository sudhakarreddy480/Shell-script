#/bin/bash/

validate (){
    if [$1 -ne 0]; then
    echo "$2 failure"
    exit 1
    else
    echo "$2 success"
    fi
}

cp forloop.sh /etc/
validate $? "adding mongo repo"