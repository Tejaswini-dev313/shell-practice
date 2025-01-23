#!bin/bash

# DATE=$(date +%c)

# echo "Today date is: $DATE"

NUMBER1=$1
NUMBER2=$2

SUM=$(($NUMBER1+$NUMBER2))

echo "Total $NUMBER1 and $NUMBER2 is: $SUM"

sleep 100 &

echo "PID of last background command: $!"