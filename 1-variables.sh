#!/bin/bash
$R="\e[31m"
$N="\e[0m"
echo "Please enter your Username::" 

 read USER_NAME

echo "User name is :: $USER_NAME"

echo "Please enter your Password::"
 read PASSWORD

 echo "User $R password $N is :: $PASSWORD"