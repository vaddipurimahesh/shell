#!/bin/bash

USERID=$(id -u)
LOGS_FOLDER="/var/log/shell-scripting"
LOGS_FILE="/var/log/shell-scripting/$0.log"

if [ $USERID -ne 0 ]; then
 echo "Please run this script with root user access"
 exit 1
fi

mkdir -p $LOGS_FOLDER

VALIDATE(){
    if [ $1 -ne 0 ]; then
     echo " $2... Failed" &>> $LOGS_FILE
    else
     echo "$2... Success" &>> $LOGS_FILE
    fi
}

dnf install nginx -y &>> $LOGS_FILE
VALIDATE $? "Installing nginx"