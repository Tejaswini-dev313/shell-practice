#!/bin/bash

USERID=$(id -u)

#echo "User ID is: $USERID"

if [ $USERID -ne 0 ]
then
    echo "Please run this script with root priveleges"
    exit 1
fi


dnf list installed git

if [ $? -ne 0 ]
then 
    echo "Git installation is not success and check it"
    dnf install git -y
else
    echo "Git is already installed"
fi
