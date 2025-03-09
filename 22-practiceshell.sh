#!/bin/bash

# USERID=$(id -u)
# R="\e[31m"
# G="\e[32m"
# N="\e[0m"

# CHECK_ROOT(){
#     if [ $USERID -ne 0 ]
#     then
#         echo "Run the script with root previliges"
#         exit 1
#     fi
# }

# VALIDATE(){
#     if [ $1 -ne 0 ]
#     then
#         echo -e " $2 is... $R FAILED $N"
#         exit 1
#     else
#         echo -e "$2 is... $G SUCCESS $N"
#     fi
# }

# CHECK_ROOT

# dnf list installed mysql

# if [ $? -ne 0 ]
# then
#     echo "mysql is not installed and going to install it.."
#     dnf install mysql -y
#     VALIDATE $? "installing mysql"
# else
#     echo "mysql is installed"
# fi

# dnf list installed git

# if [ $? -ne 0 ]
# then
#     echo "git is not installed and going to install it"
#     dnf install git -y
#     VALIDATE $? "Installing git"
# else
#     echo "git installed nothing to do"
# fi

for Package in $@
do
    dnf list installed $Package
    if [ $? -ne 0 ]
    then
        echo "$Package is not installed..going to install it"
        dnf install $Package -y
    else
        echo "installed $Package"
    fi
done

# for package in $@ # $@ refers to all arguments passed to it
# do
#     dnf list installed $package
#     if [ $? -ne 0 ]
#     then
#         echo "$package is not installed, going to install it"
#         dnf install $package -y
#         VALIDATE $? "installing $package"
#     else
#         echo "$package is already installed."
#     fi
# done
