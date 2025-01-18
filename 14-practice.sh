#!/bin/bash

# PERSON1=$1
# PERSON2=$2


# echo "$PERSON1:: Hi ${PERSON2}, How are you?"
# echo "${PERSON2}:: Hello $PERSON1, I am fine. How are you doing?"
# echo "$PERSON1:: I am doing good, what are you doing?"
# echo "${PERSON2}:: I am learing shell script $PERSON1"

FRUIT=("APPLE" "KIWI" "ORANGE")

echo "first fruit is: ${FRUIT[0]}"
echo "Second fruit is: ${FRUIT[1]}"
echo "third fruit is: ${FRUIT[2]}"

echo "Total fruits are: ${FRUIT[@]}"