#!/bin/bash
R='\e[31m'
G='\e[32m'
Y='\e[33m'
N='\e[0m'
USERID=$(id -u)
LOGS_FOLDER="/var/log/shellscript-logs"
SCRIPT_NAME=$(echo $0|cut -d "." -f1)
LOG_FILE="$LOGS_FOLDER/$SCRIPT_NAME.log"

mkdir -p $LOGS_FOLDER

if [ $USERID -ne 0 ];
then 
    echo  -e " $R ERROR: please run the script with root access $N"
    exit 1
else    
    echo " You are runnig script with root acess"
fi

VALIDATE(){
    if [ $? -ne 0 ];
    then 
        echo -e "Installing $2 is ...$G SUCCESS $N"
    else
        echo -e "Installing $2 is ... $R FAILURE $N"
        exit 1
    fi
}