#!/bin/bash
echo -e "
"
echo "bin_ls_3_times.bash"
./checker.bash ./hsh bin_ls_3_times.bash
echo -e "
"
echo "bin_ls.bash"
./checker.bash ./hsh bin_ls.bash
echo -e "
"
echo "bin_ls_spaces.bash"
./checker.bash ./hsh bin_ls_spaces.bash
echo -e "
"
echo "empty_input_large.bash"
./checker.bash ./hsh empty_input_large.bash
echo -e "
"
echo "empty_input_medium.bash"
./checker.bash ./hsh empty_input_medium.bash
echo -e "
"
echo "empty_input_small.bash"
./checker.bash ./hsh empty_input_small.bash
echo -e "
"
echo "ls_in_current_dir.bash"
./checker.bash ./hsh ls_in_current_dir.bash
