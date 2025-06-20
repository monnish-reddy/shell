#!/bin/bash

num='10'
if [ $num -gt '20' ]; then 
echo " $num is gretaer than 20 "
else
echo "$num is less than 20"
exit 1
fi
