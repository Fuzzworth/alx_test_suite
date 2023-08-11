# 0x16 ALX SIMPLE SHELL TEST SUITE

## DESCRIPTION

- This is a set of testing scripts for all simple shell tasks except betty and memory checks with valgrind.
- This suite is tested on Ubuntu 20.04 WSL.

## FEATURES

- Runs a checker on your compiled code and displays `OK` if you have the expected output.
- Displays command to be executed before it starts.
- Displays number of `OK` outputs at the end and total number of commands run.
- Check only specific tasks instead of whole suite at once.

*DISCLAIMER: Currently cannot check for valgrind errors so you must do that manually. If you get OK and also no memory leaks then expect GREEN on the Intranet. If you get OK and you have memory errors you will get RED in the intranet.*

## HOW TO USE

#### copy & paste each highlighted command to your terminal and press `enter ↲` one after the other

1. `git clone https://github.com/Fuzzworth/alx_test_suite.git` clone this repo into your simple_shell directory
2. `mv alx_test_suite/simple_shell_project TEST_SUITE` - Move the simple_shell_project directory to your simple_shell directory, renaming as TEST_SUITE
3. `cd TEST_SUITE` - Navigate into the TEST_SUITE directory
4. `chmod +x checker.bash runchecker.bash` - make them executable
5. `mv runchecker.bash ../runchecker.bash` - move runchecker.bash to your simple_shell directory.
6. `cd ..` - Navigate back to simple_shell.
7. `rm -rf alx_test_suite` - Remove the residue files.
8. Create a `.gitignore` file in your repo if you don't already have one and add these lines inside it

```gitignore
TEST_SUITES
allowed_functions
runchecker.bash
```

8. `./runchecker.bash` - to run the whole suite from task 1 - 16 at once.

--- OPTIONS ---

`./runchecker.bash #`

replace # with a number from 1- 16 to only run checks from a specific task e.g. to check task 3 only, do `./runchecker.bash 3`

## FEEDBACK AND ISSUES

We welcome any feedback, suggestions, or bug reports related to the test cases in this `simple_shell_project` directory. If you encounter any issues or have ideas for improvement, please open an issue on the repository's issue tracker. We appreciate your contributions in making this test cases a valuable resource for students engaged in `0x16. C - Simple Shell`.

## HOW TO CONTRIBUTE

#### Step 1: Clone repository

```bash
git clone https://github.com/Fuzzworth/alx_test_suite.git
```

then,

```bash
cd alx_test_suite/simple_shell_project
```

#### Step 2: Create a local branch

```bash
git checkout -b enhancement/<local_branch_name>
```

or

```bash
git branch enhancement/<local_branch_name>
git checkout enhancement/<local_branch_name>
```

#### Step 3: Make your updates

> - DO NOT MODIFY ANY OF THE FILES IN THE DIRECTORIES NAMED FROM 1 - 16
> - DO NOT MODIFY checker.bash

#### Step 4: Commit using the below template

Follow instructions for template here: [Original post](https://gist.github.com/lisawolderiksen/a7b99d94c92c6671181611be1641c733)

An easy way to get this config using a single command:

```bash
printf "# Title: Summary, imperative, start upper case, don't end with a period\n# No more than 50 chars. #### 50 chars is here:  #\n\n# Remember blank line between title and body.\n\n# Body: Explain *what* and *why* (not *how*). Include task ID (Jira issue).\n# Wrap at 72 chars. ################################## which is here:  #\n\n\n# At the end: Include Co-authored-by for all contributors. \n# Include at least one empty line before it. Format: \n# Co-authored-by: name <user@users.noreply.github.com>\n#\n# How to Write a Git Commit Message:\n# https://chris.beams.io/posts/git-commit/\n#\n# 1. Separate subject from body with a blank line\n# 2. Limit the subject line to 50 characters\n# 3. Capitalize the subject line\n# 4. Do not end the subject line with a period\n# 5. Use the imperative mood in the subject line\n# 6. Wrap the body at 72 characters\n# 7. Use the body to explain what and why vs. how\n" > ~/.gitmessage && git config --global commit.template ~/.gitmessage
```

then,

```bash
git config commit.template ~/.gitmessage
```

then,

```bash
git commit
```

**Do not use!!!**

```bash
git commit -m "message"
```

Remove "#" from start of line to uncomment line

```bash
Title: Summary, imperative, start upper case, don't end with a period
# No more than 50 chars. #### 50 chars is here:  #

# Remember blank line between title and body.

Body: Explain *what* and *why* (not *how*). Include task ID (Jira issue).
# Wrap at 72 chars. ################################## which is here:  #

# At the end: Include Co-authored-by for all contributors. 
# Include at least one empty line before it. Format: 
Co-authored-by: name <user@users.noreply.github.com>
#
# How to Write a Git Commit Message:
# https://chris.beams.io/posts/git-commit/
#
# 1. Separate subject from body with a blank line
# 2. Limit the subject line to 50 characters
# 3. Capitalize the subject line
# 4. Do not end the subject line with a period
# 5. Use the imperative mood in the subject line
# 6. Wrap the body at 72 characters
# 7. Use the body to explain what and why vs. how

# Please enter the commit message for your changes. Lines starting
# with '#' will be ignored, and an empty message aborts the commit.
#
# On branch master
# Your branch is up to date with 'origin/main'.
#
# Changes to be committed:
#       new file:   installation.md
#
```

#### Step 5: Push your branch

```bash
git push --set-upstream origin enhancement/<local_branch_name>
```

#### Step 6: Compare and Pull Request to merge your changes to main on this Github repo

Currently Three Approvals are required to merge a branch in a pull request to main... God Speed and happy coding everyone!

**Before Approving a Pull request check to see it doesn't break our hard work.**

If all is well Approve the request but if it is not Well leave a comment... links below

- [Youtube Pull Requests](https://www.youtube.com/watch?v=rgbCcBNZcdQ)
- [Youtube Review Pull Request](https://www.youtube.com/watch?v=lSnbOtw4izI)

#### LAST UPDATE: 27 MAY 2023
