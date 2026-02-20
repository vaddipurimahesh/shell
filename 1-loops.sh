#!/bin/bash

Y="\e[33m"
N="\e[0m"

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
 dnf list installed $package &>> $LOGS_FILE
 if [ $? -ne 0 ]; then
 echo "$package is not installed... installing now" | tee -a $LOGS_FILE
  dnf install $package -y &>> $LOGS_FILE
  VALIDATE $? "Installing $package" 

 else
  echo -e "$package already installed... $Y skipping$N" | tee -a $LOGS_FILE
 fi
done