#!/bin/bash

NUMBER1=$1

if [ $NUMBER1 -gt 30 ]
then
    echo "Given $NUMBER1 is greater than 30"
else
    echo "Given $NUMBER1 is less than 30"
fi


# if [ $NUMBER1 -gt 20 ]  # gt, lt, eq, -ne
# then
#     echo "Given number: $NUMBER1 is greater than 20"
# else
#     echo "Given number: $NUMBER1 is less than 20"
# fi
