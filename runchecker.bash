#!/bin/bash

ORANGE='\033[0;33m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m'  # No Color

ok_count=0
total_commands=0

target_directory="$1"

while read -r command; do
    directory=$(echo "$command" | awk '{print $NF}' | cut -d'/' -f3)
    
    if [[ -n "$target_directory" && "$directory" != "$target_directory"* ]]; then
        continue
    fi
    
    echo -e "${ORANGE}${command}${NC}"
    output=$(eval "$command")
    
    if [[ $output == "OK" ]]; then
        echo -e "${GREEN}${output}${NC}"
        ((ok_count++))
    else
        echo "$output"
    fi
    
    echo
    ((total_commands++))
done < "TEST_SUITE/command_list.txt"

echo -e "${BLUE}Number of OK outputs: ${ok_count}${NC}"
echo -e "${BLUE}Total commands run: ${total_commands}${NC}"
