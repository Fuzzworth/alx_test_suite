# Credit to Merlix Gikunju <gmerlix@yahoo.com> for sharing

## How to use

There are 5 folders 1 per task

Change directory into the task you want to check

```
cd 1. Simple shell 0.1
```

make it executable

```
chmod u+x *
```

then copy the compiled shell into the same directory

```
cp <your compiled shell> .
```

then run a check based on a test

```
./checker.bash ./hsh <test file> 
```

example

```
cd 1.\ Simple\ shell 0.1
cp ~/simple_shell/hsh .
./checker.bash ./hsh bin_ls_3_times.bash
```

## OK means you passed anything else is a fail
