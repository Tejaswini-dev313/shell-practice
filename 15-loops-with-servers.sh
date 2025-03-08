#!/bin/bash

USERID=$(id -u)
R="\e[31m"
G="\e[32m"
N="\e[0m"

CHECK_ROOT(){
    if [ $USERID -ne 0 ]
then
    echo "Please run the script root priveleges"
    exit 1
fi
}

VALIDATE(){
    if [ $1 -ne 0 ]
    then 
        echo -e "$2 is...$R FAILED $N"
        exit 1
    else
        echo -e "$2 is...$G SUCCESS $N"
    fi
}

CHECK_ROOT

# git mysql postfix and nginx server will install automatically.
for package in $@ # $@ refers to all arguments passed to it
do
    dnf list installed $package
    if [ $? -ne 0 ]
    then
        echo "$package is not installed, going to install it"
        dnf install $package -y
        VALIDATE $? "installing $package"
    else
        echo "$package is already installed."
    fi
done



