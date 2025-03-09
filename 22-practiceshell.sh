#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "Run the script with root previliges"
    exit 1
fi

dnf installl mysql -y

if [ $? -ne 0 ]
then
    echo "mysql is not installed and going to install it.."
    dnf install mysqlll -y
    if [ $? -ne 0 ]
    then
        echo "mysql installation is not successful..check it"
        exit 1
    else
        echo "mysql is installed successful"
    fi
else
    echo "mysql is installed"
fi

dnf install git -y

if [ $? -ne 0 ]
then
    echo "git is not installed and going to install it"
    dnf install git -y
    if [ $? -ne 0 ]
    then
        echo "git is not installed..plese check it"
        exit 1
    else
        echo "git installed"
    fi
else
    echo "git installed nothing to do"

fi