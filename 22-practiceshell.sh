#!/bin/bash

USERID=$(id -u)

CHECK_ROOT(){
    if [ $USERID -ne 0 ]
    then
        echo "Run the script with root previliges"
        exit 1
    fi
}

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo " $2 is...FAILED"
        exit 1
    else
        echo "$2 is...SUCCESS"
    fi
}

CHECK_ROOT

dnf install mysql -y

if [ $? -ne 0 ]
then
    echo "mysql is not installed and going to install it.."
    dnf install mysql -y
    VALIDATE $? "installing mysql"
else
    echo "mysql is installed"
fi

dnf install git -y

if [ $? -ne 0 ]
then
    echo "git is not installed and going to install it"
    dnf install git -y
    VALIDATE $? "Installing git"
else
    echo "git installed nothing to do"

fi