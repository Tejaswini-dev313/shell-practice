#!bin/bash

# DATE=$(date +%c)

# echo "Today date is: $DATE"

# NUMBER1=$1
# NUMBER2=$2

# SUM=$(($NUMBER1+$NUMBER2))

# echo "Total $NUMBER1 and $NUMBER2 is: $SUM"

# sleep 100 &

# echo "PID of last background command: $!"


# NUMBER=$1

# if [ $NUMBER -gt 30 ]
# then
#     echo "Given number: $NUMBER is greater then 30"
# else
#     echo "Given number: $NUMBER is less than 30"
# fi


USERID=$(id -u)

echo "User ID is: $USERID"

if [ $USERID -ne 0 ]
then
    echo "Please run the script root priveleges"
    exit 1
fi

dnf list installed mysql -y

if [ $? -ne 0 ]
then
    echo "mysql is not installed and going to install it"
    dnf install mysqlllll -y
    if [ $? -ne 0 ]
    then
        echo "mysql installation is not success and check it"
        exit 1
    else
        echo "mysql is installed successfully"
    fi
else
    echo "mysql already installed"
fi






