#!/bin/bash
echo -e "
"
echo "bin_ls_1_arg_1.bash"
./checker.bash ./hsh bin_ls_1_arg_1.bash
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
echo "bin_ls_empty_path.bash"
./checker.bash ./hsh bin_ls_empty_path.bash
echo -e "
"
echo "bin_ls_medium_input.bash"
./checker.bash ./hsh bin_ls_medium_input.bash
echo -e "
"
echo "bin_ls_spaces.bash"
./checker.bash ./hsh bin_ls_spaces.bash
echo -e "
"
echo "empty_path_failing_cmd.bash"
./checker.bash ./hsh empty_path_failing_cmd.bash
echo -e "
"
echo "env_ignore_bin_ls.bash"
./checker.bash ./hsh env_ignore_bin_ls.bash
echo -e "
"
echo "env_ignore_ls.bash"
./checker.bash ./hsh env_ignore_ls.bash
echo -e "
"
echo "ls_1_arg.bash"
./checker.bash ./hsh ls_1_arg.bash
echo -e "
"
echo "ls_.bash"
./checker.bash ./hsh ls_.bash
echo -e "
"
echo "ls_dot_ls.bash"
./checker.bash ./hsh ls_dot_ls.bash
echo -e "
"
echo "ls_empty_path.bash"
./checker.bash ./hsh ls_empty_path.bash
echo -e "
"
echo "ls_in_current_dir.bash"
./checker.bash ./hsh ls_in_current_dir.bash
echo -e "
"
echo "ls_in_parent_dir.bash"
./checker.bash ./hsh ls_in_parent_dir.bash
echo -e "
"
echo "ls_in_two_parent_dir_2.bash"
./checker.bash ./hsh ls_in_two_parent_dir_2.bash
echo -e "
"
echo "ls_in_two_parent_dir_3.bash"
./checker.bash ./hsh ls_in_two_parent_dir_3.bash
echo -e "
"
echo "ls_in_two_parent_dir.bash"
./checker.bash ./hsh ls_in_two_parent_dir.bash
echo -e "
"
echo "ls_path_bin_first.bash"
./checker.bash ./hsh ls_path_bin_first.bash
echo -e "
"
echo "ls_path_bin_last.bash"
./checker.bash ./hsh ls_path_bin_last.bash
echo -e "
"
echo "ls_path_bin_middle.bash"
./checker.bash ./hsh ls_path_bin_middle.bash
echo -e "
"
echo "ls_path_no_bin.bash"
./checker.bash ./hsh ls_path_no_bin.bash
echo -e "
"
echo "ls_spaces.bash"
./checker.bash ./hsh ls_spaces.bash
echo -e "
"
echo "mix_ls_bin_ls.bash"
./checker.bash ./hsh mix_ls_bin_ls.bash
echo -e "
"
echo "mix_ls_bin_ls_spaces.bash"
./checker.bash ./hsh mix_ls_bin_ls_spaces.bash
echo -e "
"
echo "path_current_dir_ls.bash"
./checker.bash ./hsh path_current_dir_ls.bash
echo -e "
"
echo "path_path1_var.bash"
./checker.bash ./hsh path_path1_var.bash
echo -e "
"
echo "unknown_command_no_fork.bash"
./checker.bash ./hsh unknown_command_no_fork.bash
