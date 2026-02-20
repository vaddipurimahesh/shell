#!/bin/bash

# for i in {1..10}
# do
# echo $i
# done

USERID=$(id -u)
LOGS_FOLDER="/var/log/shell-scripting"
LOGS_FILE="/var/log/shell-scripting/$0.log"

if [ $USERID -ne 0 ]; then
 echo "Please run this script with root user access" | tee -a $LOGS_FILE
 exit 1
fi

mkdir -p $LOGS_FOLDER

VALIDATE(){
    if [ $1 -ne 0 ]; then
     echo " $2... Failed" | tee -a $LOGS_FILE
    else
     echo "$2... Success" | tee -a $LOGS_FILE
    fi
}

for package in $@
do
 dnf install $package -y &>> $LOGS_FILE
 VALIDATE $? "Installing $package" 
done