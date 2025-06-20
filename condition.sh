#!/bin/bash

num='40'
if [ $num -gt '20' ]; then 
echo " $num is gretaer than 20 "
else
echo "$num is less than 20"
exit 1
fi
