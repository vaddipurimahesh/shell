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

if [ $NUMBER -gt $2 ]; then
 echo "The number: $NUMBER is greater than $2"
elif [ $NUMBER -eq $2 ]; then
 echo "$NUMBER is equal to $2"
else 
 echo "The number: $NUMBER is less than $2"
fi