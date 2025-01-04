#!/bin/bash

NUMBER1=50  # Corrected: Removed the $ from the assignment

if [ $NUMBER1 -gt 100 ]  # gt, lt, eq, -ne
then
    echo "Given number: $NUMBER1 is greater than 100"
else
    echo "Given number: $NUMBER1 is less than 100"
fi
