#!/bin/bash

# Check if the current directory contains a ".bash" file
if [ -n "$(find . -maxdepth 1 -type f -name '*.bash' ! -name 'checker.bash' ! -name 'commandgenerator.bash' ! -name 'runchecker.bash')" ]; then
    echo "#####   $(basename "$PWD")   #####"

    # Iterate over the script files in the current directory
    for script in ./*.bash; do
        # Exclude specified files from the command list
        if [ "$(basename "$script")" != "checker.bash" ] && [ "$(basename "$script")" != "commandgenerator.bash" ] && [ "$(basename "$script")" != "runchecker.bash" ]; then
            echo "../checker.bash ../hsh ./$script"
        fi
    done
fi > command_list.txt


