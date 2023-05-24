#!/bin/bash
echo -e "
"
echo "env.bash"
./checker.bash ./hsh env.bash
echo -e "
"
echo "env_ignore_env.bash"
./checker.bash ./hsh env_ignore_env.bash
echo -e "
"
echo "env_one_var.bash"
./checker.bash ./hsh env_one_var.bash
