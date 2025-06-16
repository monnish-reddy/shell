#!/bin/bash

userid=$(id -u)
if [ $userid -ne 0 ]
then
	echo " Error: please run te scrit with sudo access"
else
	echo " you are running with root access"
fi
 


