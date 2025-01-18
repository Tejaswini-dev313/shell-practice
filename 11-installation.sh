#!/bin/bash

USERID=$(id -u)

echo "User ID is: $USERID"

if [ $USERID -ne 0 ]
then
    echo "Please run this script with root priveleges"
    exit 1
fi


# dnf list installed git

# if [ $? -ne 0 ]
# then 
#     echo "Git installation is not success and check it"
#     dnf install git -y
# else
#     echo "Git is already installed"
# fi

#--------------------------------------

# dnf list installed git

# if [ $? -ne 0 ]
# then 
#     echo "Git installation is not success and check it"
#     dnf install git -y
#     if [ $? -ne 0 ]
#     then
#         echo "Git installation is not success and check it"
#         exit 1
#     else
#         echo "Git installation is success"
#     fi
# else
#     echo "Git is already installed"
# fi

#--------------------------------------------

dnf list installed mysql

if [ $? -ne 0 ]
then 
    echo "mysql installation is not success and check it"
    dnf install mysql -y
    if [ $? -ne 0 ]
    then
        echo "mysql installation is not success"
        exit 1
    else
        echo "mysql installation is success"
    fi
else
    echo "mysql is already installed"
fi
