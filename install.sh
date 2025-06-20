#!/bin/bash
USERID=$(id -u)

if [ $USERID -ne 0 ];
then 
    echo "ERROR: Please run the script with root access"
    exit 1
else
    echo "You are running with root access"
    if [ $? -eq 0 ];
    then 
        echo "MYSQL installation starting"
        dnf install mysql -y
        if [ $? -eq 0 ];
        then 
            echo "mysql is installed succesfully"
        else
            echo "mysql is not installed"
            exit 1
        fi
    else
        echo "musql is not installed"
        exit 1
    fi
fi
