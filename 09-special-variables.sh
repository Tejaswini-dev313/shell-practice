#!/bin/bash

echo "all variables passed to the script: $@"

echo "how many varialbes passed to the script: $#"

echo "what is the current working directory: $PWD"

echo "what is the current script name: $0"

echo "What is current shellscript processing id: $$"

echo "what is PID of last background command: $!"
