# TDD PROJECT TEST SUITE CASE

## OVERVIEW
Each folder represents each tdd task to check your source code. Clone the repository, copy the folder into your project root directory and run them to find out if you're actually passing the checks

## HOW TO USE

- Clone the repo [alx_test_suite](https://github.com/Fuzzworth/alx_test_suite.git)
```
git clone https://github.com/Fuzzworth/alx_test_suite.git

cd alx_test_suite/TDD_project
```

- Copy the files from the TDD_project folder to your project tests directory
```
cp ./* <YOUR_PROJECT_TESTS_DIRECTORY>
```

- Run the test
```
python3 -m doctest -v ./tests/<TEST_FILE_NAME>.txt | tail -2
```