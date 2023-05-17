#!/bin/bash

# Usage : ./check.sh | less -r
# copy this file inside your project folder and run ./checker.sh | less -r

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
######### case 1
command1=$(echo "ls" | ./hsh 2>&1)
command2=$(echo "ls" | sh 2>&1)
echo "$command1" > 1a2b3c4d5e6f7g8h9i
echo "$command2" > 1a2b3c4d5e6f7g8h9b
run_check ""ls""

######### case 2
command1=$(echo "/bin/ls" | ./hsh 2>&1)
command2=$(echo "/bin/ls" | sh 2>&1)
echo "$command1" > 1a2b3c4d5e6f7g8h9i
echo "$command2" > 1a2b3c4d5e6f7g8h9b
run_check ""/bin/ls""

######### case 3
command1=$(echo "/bin/ls -l" | ./hsh 2>&1)
command2=$(echo "/bin/ls -l" | sh 2>&1)
echo "$command1" > 1a2b3c4d5e6f7g8h9i
echo "$command2" > 1a2b3c4d5e6f7g8h9b
run_check ""ls" with "-l" option"

######### case 4
command1=$(echo "/bin/ls -l /tmp" | ./hsh 2>&1)
command2=$(echo "/bin/ls -l /tmp" | sh 2>&1)
echo "$command1" > 1a2b3c4d5e6f7g8h9i
echo "$command2" > 1a2b3c4d5e6f7g8h9b
run_check ""ls" with "-l" and "/tmp" option"

######### case 5
command1=$(echo "    /bin/ls" | ./hsh 2>&1)
command2=$(echo "    /bin/ls" | sh 2>&1)
echo "$command1" > 1a2b3c4d5e6f7g8h9i
echo "$command2" > 1a2b3c4d5e6f7g8h9b
run_check ""ls" with "spaces" before"

######### case 6
command1=$(echo "/bin/ls   " | ./hsh 2>&1)
command2=$(echo "/bin/ls   " | sh 2>&1)
echo "$command1" > 1a2b3c4d5e6f7g8h9i
echo "$command2" > 1a2b3c4d5e6f7g8h9b
run_check ""/bin/ls" with "spaces" after"

######### case 7
command1=$(echo "   /bin/ls   " | ./hsh 2>&1)
command2=$(echo "   /bin/ls   " | sh 2>&1)
echo "$command1" > 1a2b3c4d5e6f7g8h9i
echo "$command2" > 1a2b3c4d5e6f7g8h9b
run_check ""/bin/ls" with "spaces" before and after"

######### case 8
command1=$(echo "echo hello world" | ./hsh 2>&1)
command2=$(echo "echo hello world" | sh 2>&1)
echo "$command1" > 1a2b3c4d5e6f7g8h9i
echo "$command2" > 1a2b3c4d5e6f7g8h9b
run_check ""echo" "

######### case 9
command1=$(echo "/bin/ls /home /usr" | ./hsh 2>&1)
command2=$(echo "/bin/ls /home /usr" | sh 2>&1)
echo "$command1" > 1a2b3c4d5e6f7g8h9i
echo "$command2" > 1a2b3c4d5e6f7g8h9b
run_check ""/bin/ls" multiple dir"

######### case 10
command1=$(echo "ls /home /usr" | ./hsh 2>&1)
command2=$(echo "ls /home /usr" | sh 2>&1)
echo "$command1" > 1a2b3c4d5e6f7g8h9i
echo "$command2" > 1a2b3c4d5e6f7g8h9b
run_check ""ls" multiple dir"

######### case 11
command1=$(echo "ls /home /usr /bin /home" | ./hsh 2>&1)
command2=$(echo "ls /home /usr /bin /home" | sh 2>&1)
echo "$command1" > 1a2b3c4d5e6f7g8h9i
echo "$command2" > 1a2b3c4d5e6f7g8h9b
run_check ""ls" multiple dir"

######### case 12
command1=$(echo "ls /homezzz" | ./hsh 2>&1)
command2=$(echo "ls /homezzz" | sh 2>&1)
echo "$command1" > 1a2b3c4d5e6f7g8h9i
echo "$command2" > 1a2b3c4d5e6f7g8h9b
run_check ""ls" non existing dir"

######### case 13
command1=$(echo "mkdir my_testDir22" | ./hsh 2>&1)
command2=$(echo "mkdir my_testDir23" | sh 2>&1)
echo "$command1" > 1a2b3c4d5e6f7g8h9i
echo "$command2" > 1a2b3c4d5e6f7g8h9b
run_check ""mkdir" "

######### case 14
command1=$(echo "rmdir my_testDir22" | ./hsh 2>&1)
command2=$(echo "rmdir my_testDir23" | sh 2>&1)
echo "$command1" > 1a2b3c4d5e6f7g8h9i
echo "$command2" > 1a2b3c4d5e6f7g8h9b
run_check ""rmdir" "

######### case 15
command1=$(echo "exit" | ./hsh 2>&1)
command2=$(echo "exit" | sh 2>&1)
echo "$command1" > 1a2b3c4d5e6f7g8h9i
echo "$command2" > 1a2b3c4d5e6f7g8h9b
run_check ""exit" "

######### case 16
command1=$(echo "" | ./hsh 2>&1)
command2=$(echo "" | sh 2>&1)
echo "$command1" > 1a2b3c4d5e6f7g8h9i
echo "$command2" > 1a2b3c4d5e6f7g8h9b
run_check ""empty line" "

######### case 17
command1=$(echo "   " | ./hsh 2>&1)
command2=$(echo "   " | sh 2>&1)
echo "$command1" > 1a2b3c4d5e6f7g8h9i
echo "$command2" > 1a2b3c4d5e6f7g8h9b
run_check ""spaces line" "

######### case 15
command1=$(echo "./RUNME" | ./hsh 2>&1)
command2=$(echo "./RUNME" | sh 2>&1)
echo "$command1" > 1a2b3c4d5e6f7g8h9i
echo "$command2" > 1a2b3c4d5e6f7g8h9b
run_check "run exe in "./" cwd"

rm ./RUNME
#>>>> betty testing  <<<<<<

#remove the hashs below to enable betty testing

#echo "-->" Check documentation
#betty-doc *.c *.h
#echo "-->" Check style
#betty-style *.c *.h
