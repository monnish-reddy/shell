#!/bin/bash
R='\e[31m'
G='\e[32m'
Y='\e[33m'
N='\e[0m'
USERID=$(id -u)

if [ $USERID -ne 0 ];
then 
    echo -e " $R ERROR: Please run the script with root access $N"
    exit 1
else
    echo "You are running with root access"
fi

VALIDATE(){
    if [ $? -eq 0 ];
    then 
        echo " Installing $2 is ...$G SUCCESS $N"
    else
        echo "Installing $2 is ... $R FAILURE $N"
        exit 1
    fi
}

dnf list installed mysql
if [ $? -ne 0 ];
then
    echo "MySQL is not installed .. going to install it"
    dnf install mysql -y
    VALIDATE $? MySQL
else
    echo " MySQL is already installed .. Nothing to do"
fi

dnf list installed nginx
if [ $? -ne 0 ];
then
    echo "nginx is not installed .. going to install it"
    dnf install nginx -y
    VALIDATE $? nginx
else
    echo " nginx is already installed .. Nothing to do"
fi