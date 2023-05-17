# ALX TEST SUITE

## contact any of the collaborators to be given access I guess

## Tips to Collaborate:

### Step 1: Clone repository

```
git clone https://github.com/Fuzzworth/alx_test_suite.git
```

then,

```
cd alx_test_suite
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

### Step 3: Code your solution and commit using the below template

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

```
# Title: Summary, imperative, start upper case, don't end with a period
# No more than 50 chars. #### 50 chars is here:  #

# Remember blank line between title and body.

# Body: Explain *what* and *why* (not *how*). Include task ID (Jira issue).
# Wrap at 72 chars. ################################## which is here:  #

# At the end: Include Co-authored-by for all contributors. 
# Include at least one empty line before it. Format: 
# Co-authored-by: name <user@users.noreply.github.com>
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

### Step 4: Push your branch

```
git push --set-upstream enhancement/<local_branch_name>
```

### Step 5: Compare and Pull Request to merge your changes to main on this github repo
