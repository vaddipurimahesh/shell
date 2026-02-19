#!/bin/bash

# -gt -> greater than
# -lt -> less than
# -eq -> equal
# -ne -> not equal

NUMBER=$1
# if [ $NUMBER -gt 20 ]; then
#  echo "The number: $NUMBER is greater than 20"
# elif [ $NUMBER -eq 20 ]; then
#  echo "$NUMBER is equal to 20"
# else 
#  echo "The number: $NUMBER is less than 20"
# fi

if [ $1 -gt 66 ]; then
 echo "The number: 66 is greater than 66"
elif [ $1 -eq 66 ]; then
 echo "$1 is equal to 66"
else 
 echo "The number: $1 is less than 66"
fi