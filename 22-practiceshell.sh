#!/bin/bash

NUMBER1=$1

if [ $NUMBER1 -lt 30 ]
then 
    echo "Given $NUMBER1 is less than 30"
else
    echo "Given $NUMBER1 is greater than 30"
fi

