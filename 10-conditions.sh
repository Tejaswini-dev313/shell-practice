#!/bin/bash

NUMBER1=$1  # Corrected: Removed the $ from the assignment

if [ $NUMBER1 -gt 20 ]  # gt, lt, eq, -ne
then
    echo "Given number: $NUMBER1 is greater than 20"
else
    echo "Given number: $NUMBER1 is less than 20"
fi
