#!/bin/bash

# Usage : ./check.sh | less -r
# copy this file inside your project folder and run ./check.sh | less -r
gcc -Wall -Werror -Wextra -pedantic -std=gnu89 *.c -o hsh
function run_check()
{
    echo "--> [" $1 "] <--"
    chars1=$(wc -m < 1a2b3c4d5e6f7g8h9i)
    chars2=$(wc -m < 1a2b3c4d5e6f7g8h9b)
    if diff 1a2b3c4d5e6f7g8h9i 1a2b3c4d5e6f7g8h9b >/dev/null; then
        echo -e "\e[32mSuccess\e[0m"
    else
        echo -e "\e[31mFailed\e[0m"
        echo -e "\e[0m[Got]\e[31m"
        cat 1a2b3c4d5e6f7g8h9i
        echo -e "\e[0m[" $chars1 "Chars]\e[31m"
        echo -e "\e[0m[Expected]\e[31m"
        cat 1a2b3c4d5e6f7g8h9b
        echo -e "\e[0m[" $chars2 "Chars]\e[0m"
    fi
    rm 1a2b3c4d5e6f7g8h9i 1a2b3c4d5e6f7g8h9b;
    echo "************************************"
}
#########
command1=$(echo "ls" | ./hsh 2>&1)
command2=$(echo "ls" | sh 2>&1)
echo "$command1" > 1a2b3c4d5e6f7g8h9i
echo "$command2" > 1a2b3c4d5e6f7g8h9b
run_check ""ls""
##########
command1=$(echo "/bin/ls" | ./hsh 2>&1)
command2=$(echo "/bin/ls" | sh 2>&1)
echo "$command1" > 1a2b3c4d5e6f7g8h9i
echo "$command2" > 1a2b3c4d5e6f7g8h9b
run_check ""/bin/ls""
##########
command1=$(echo "/bin/ls -l" | ./hsh 2>&1)
command2=$(echo "/bin/ls -l" | sh 2>&1)
echo "$command1" > 1a2b3c4d5e6f7g8h9i
echo "$command2" > 1a2b3c4d5e6f7g8h9b
run_check ""ls" with "-l" option"
##########
command1=$(echo "/bin/ls -l /tmp" | ./hsh 2>&1)
command2=$(echo "/bin/ls -l /tmp" | sh 2>&1)
echo "$command1" > 1a2b3c4d5e6f7g8h9i
echo "$command2" > 1a2b3c4d5e6f7g8h9b
run_check ""ls" with "-l" and "/tmp" option"
#####################################
# To add your own tests
#####################################
# 1- store the your shell ouput (out and err) in command1
command1=$(echo "`#Your test`" | ./hsh 2>&1)

# 2- store sh ouput (out and err) in command2
command2=$(echo "`#Your test`" | ./hsh 2>&1)

# 3- sote command1 in 1a2b3c4d5e6f7g8h9i file
echo "$command1" > 1a2b3c4d5e6f7g8h9i

# 4- sote command2 in 1a2b3c4d5e6f7g8h9b file
echo "$command2" > 1a2b3c4d5e6f7g8h9b

# 5- Call run_check and pass comment to it
run_check " `#Test comment` "

### remove hash to enable betty testing
#echo "-->" Check documentation
#betty-doc *.c *.h
#echo "-->" Check style
#betty-style *.c *.h
