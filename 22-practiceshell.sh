#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "Run the script with root previliges"
fi

dnf install mysql -y

