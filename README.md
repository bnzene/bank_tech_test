# Bank tech Test

### Brief:
Create a model of a bank account with which the user can interact to make deposits, withdrawals, view their balance (not in spec but I thought it'd be nice) or print their account statement.

#### Techniques practiced:
* OOP
* TDD
* Using Ruby version 2.4.0

### Testing:

Since this is a relatively simple program with only one class (bank_account), I've put all the tests in the same file.
They're split into context blocks which cover the different behaviours of the class.

Enter 'rspec' on the command line to run the suite of tests.

Reek and Preek are also installed to help with code smell detection, and CodeClimate to aid in reviewing.

<a href="https://lima.codeclimate.com/github/bnzene/bank_tech_test"><img src="https://lima.codeclimate.com/github/bnzene/bank_tech_test/badges/gpa.svg" /></a>

### Running the program:

The program can be used via a REPL such as IRB. For the moment, the simplest way is to copy and paste the contents of the bank_account.rb file into IRB.
