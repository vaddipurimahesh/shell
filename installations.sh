#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
 echo "Please run this script as a root user"
 exit 1

fi

echo "Installing nginx..."
dnf install nginx -y

if [ $? -ne 0 ]; then
 echo "Installing nginx...Failed"
 exit 1
else
 echo "Installing nginx...success"
fi