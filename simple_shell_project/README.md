# Simple Shell Tests Go in the Madatory Checker!!!

# To add your own tests

# 1 - store the your shell ouput (out and err) in command1
```
command1=$(echo "`#Your test`" | ./hsh 2>&1)
```
# 2 - store sh ouput (out and err) in command2

```
command2=$(echo "`#Your test`" | sh 2>&1)
```

# 3 - store command1 in 1a2b3c4d5e6f7g8h9i file

```
echo "$command1" > 1a2b3c4d5e6f7g8h9i
```

# 4 - store command2 in 1a2b3c4d5e6f7g8h9b file

```
echo "$command2" > 1a2b3c4d5e6f7g8h9b
```

# 5 - Call run_check and pass comment to it

```
run_check " `#Test comment` "
```
