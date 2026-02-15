#!/bin/bash

NUMBER=$1

if [ $NUMBER -gt $2 ]; then
   echo "Given number : $NUMBER is greater than $2"
elif [ $NUMBER -eq $2 ]; then
   echo "Given number : $NUMBER is equal to $2"
else 
   echo "Given number : $NUMBER is less than $2"
fi
