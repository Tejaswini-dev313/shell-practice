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

for i in {0..20}
do
    echo $i
done