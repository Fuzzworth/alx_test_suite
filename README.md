# ALX TEST SUITE

This repository contains a collection of test cases created by students
for the pair projects. These test cases aim to ensure the functionality,
correctness, and robustness of the projects developed by students in pairs.

---

## Contributing
We encourage students who have completed their pair programming projects
to contribute their test cases to this repository. By sharing your test cases,
you can help other students learn from your experiences and improve their
projects.

## Using the Test Cases

To use the test cases from this repository, you can simply clone the repository
to your local machine using the following command:

> git clone https://github.com/Fuzzworth/alx_test_suite.git

Once you have cloned the repository, navigate to the specific project directory
and access the test cases relevant to your project. You can then integrate these
test cases into your project's testing framework or execute them manually to
evaluate the behavior of your code.

## Feedback and Issues

We welcome any feedback, suggestions, or bug reports related to the test cases
in this repository. If you encounter any issues or have ideas for improvement,
please open an issue on the repository's issue tracker. We appreciate your
contributions in making this repository a valuable resource for students engaged
in pair programming projects.

# Contact any of the collaborators to be given access I guess

## Tips to Collaborate:

### Step 1: Clone repository

```
git clone https://github.com/Fuzzworth/alx_test_suite.git
```

then,

```
cd alx_test_suite/simple_shell_project
```

### Step 2: Create a local branch

```
git checkout -b enhancement/<local_branch_name>
```

or

```
git branch enhancement/<local_branch_name>
git checkout enhancement/<local_branch_name>
```

### Step 3: Code your test code to simple_shell_project

Test Format is as below example

```
######### Test Description
command1=$(echo "ls" | ./hsh 2>&1)
command2=$(echo "ls" | sh 2>&1)
echo "$command1" > 1a2b3c4d5e6f7g8h9i
echo "$command2" > 1a2b3c4d5e6f7g8h9b
run_check ""ls""
```

#### 1 - store the your shell ouput (out and err) in command1

```
command1=$(echo "`#Your test`" | ./hsh 2>&1)
```

#### 2 - store sh ouput (out and err) in command2

```
command2=$(echo "`#Your test`" | sh 2>&1)
```

#### 3 - store command1 in 1a2b3c4d5e6f7g8h9i file

```
echo "$command1" > 1a2b3c4d5e6f7g8h9i
```

#### 4 - store command2 in 1a2b3c4d5e6f7g8h9b file

```
echo "$command2" > 1a2b3c4d5e6f7g8h9b
```

#### 5 - Call run_check and pass comment to it

```
run_check " `#Test comment` "
```

*** DO NOT ALTER THE FUNCTION run_check ****

## Step 4: Commit using the below template

Follow instructions for template here: [Original post](https://gist.github.com/lisawolderiksen/a7b99d94c92c6671181611be1641c733)

An easy way to get this config using a single command:

```
printf "# Title: Summary, imperative, start upper case, don't end with a period\n# No more than 50 chars. #### 50 chars is here:  #\n\n# Remember blank line between title and body.\n\n# Body: Explain *what* and *why* (not *how*). Include task ID (Jira issue).\n# Wrap at 72 chars. ################################## which is here:  #\n\n\n# At the end: Include Co-authored-by for all contributors. \n# Include at least one empty line before it. Format: \n# Co-authored-by: name <user@users.noreply.github.com>\n#\n# How to Write a Git Commit Message:\n# https://chris.beams.io/posts/git-commit/\n#\n# 1. Separate subject from body with a blank line\n# 2. Limit the subject line to 50 characters\n# 3. Capitalize the subject line\n# 4. Do not end the subject line with a period\n# 5. Use the imperative mood in the subject line\n# 6. Wrap the body at 72 characters\n# 7. Use the body to explain what and why vs. how\n" > ~/.gitmessage && git config --global commit.template ~/.gitmessage
```

then,

```
git config commit.template ~/.gitmessage
```
then,

```
git commit
```

Do not use!!!

```
git commit -m "message"
```

Remove "#" from start of line to uncomment line

```
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

### Step 5: Push your branch

```
git push --set-upstream enhancement/<local_branch_name>
```

### Step 6: Compare and Pull Request to merge your changes to main on this github repo

Currently Three Aprovals are required to merge a branch in a pull request to main... God Speed everyone!

#### Before Approving a Pull request check to see it dosent break our hard work

```
git fetch origin <remote_branch>
git checkout <remote_branch>
cp simple_shell_project/MandatoryChecker.sh <path to simple shell code on your local machine machine>
./MandatoryChecker.sh
```

If all is well Approve the request but if it is not Well leave a comment... links below

- [Youtube Pull Requests](https://www.youtube.com/watch?v=rgbCcBNZcdQ)
- [Youtube Review Pull Request](https://www.youtube.com/watch?v=lSnbOtw4izI)
