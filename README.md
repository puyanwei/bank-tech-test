# Banking Program
The programme mimics a basic banking system.

## Tech Stack
- Ruby
- RSpec
- SimpleCov
- Flog
- Rubocop

## Features
The programme can perform the following basic functions:

- Name and create a bank.
- Open an account in the bank.
- Enter the date for a transaction.
- Can make deposits and withdrawals.
- Check their balance.
- Print out their complete transaction history.

## Installation
Clone this repo with
`git clone git@github.com:pyan83/bank-tech-test.git`

Install the relevant gems by typing in `bundle install`.
Then `cd bank-tech-test` to go to the root folder.

Type `irb` to enter it and type in `'require ./lib/account.rb`,  `'require ./lib/bank.rb`, and `'require ./lib/account.rb` in the project folder.

To see the tests type in `rspec` in the project folder.

## Quality control
The aim of this exercise was to write high quality code.

This is achieved my for filling the following criteria;
- All tests are passing.
- Rubocop linter passes.
- 95% or above test coverage.
- Commits are regular, small and have good descriptions.
- Flog score is low, which means methods have one responsibility and classes are small.
