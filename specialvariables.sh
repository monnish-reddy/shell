#!/bin/bash
echo "all variables passed in script are : $@"
echo "the current user $USER"
echo " the pid o fthr script $$"
echo " the current directory $PWD"
echo "the home  directory $HOME"
sleep 10 
echo " the pid of last command in backgroung $!"
echo "the count of args passed to script :$#"