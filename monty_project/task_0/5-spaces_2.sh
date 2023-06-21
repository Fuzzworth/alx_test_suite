#!/bin/bash

# Define colors
GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m' # No Color

# monty bytcode test case:
montyBytes="push 0 Push 0 onto the stack
push 1 Push 1 onto the stack

push 2
  push 3
                   pall    


                           
push 4

    push 5    
      push    6        

pall This is the end of our program. Monty is awesome!"

# make test case file:
echo "$montyBytes" > testCase00

# Run the program and capture its output
program_output=$(./monty testCase00)

# Specify the expected result
expected_result="3
2
1
0
6
5
4
3
2
1
0"

# Compare the program's output with the expected result
if [ "$program_output" == "$expected_result" ]; then
    echo -e "${GREEN}Mafanikio${NC}"
else
    echo -e "${RED}Kushindwa${NC}"
    echo "Got:
$program_output
expected:
$expected_result"
fi

# delete the test case file
rm testCase00
