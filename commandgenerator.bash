#!/bin/bash

# Get the list of directories where the script is executed and sort them
directories=$(find . -maxdepth 1 -type d -name '[0-9]*' | sort -V)

# Iterate over the directories
for dir in $directories; do
    # Check if the directory contains a ".bash" file
    if [ -n "$(find "$dir" -maxdepth 1 -type f \( -name '*.bash' ! -name 'checker.bash' \))" ]; then
        # Write the folder name in all caps
        folder_name=$(basename "$dir" | tr '[:lower:]' '[:upper:]')
        echo "#####   $folder_name   #####"

        # Iterate over the script files in each directory
        for script in "$dir"/*.bash; do
            # Exclude "checker.bash" from the command list
            if [ "$(basename "$script")" != "checker.bash" ]; then
                echo "./TEST_SUITE/checker.bash ./hsh ./TEST_SUITE/$(basename "$dir")/$(basename "$script")"
            fi
        done
    fi
done > command_list.txt


