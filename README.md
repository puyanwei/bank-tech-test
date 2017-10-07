# Banking Program
The programme mimics a basic banking system.

## Tech Stack
- Ruby
- RSpec
- SimpleCov
- Flog
- Rubocop

## Installation
Use the terminal to clone this repo by typing in
`git clone git@github.com:pyan83/bank-tech-test.git`

Install the relevant gems by typing in `bundle install`.
Then `cd bank-tech-test` to go to the root folder.

Type `pry` to enter it and type in `'require ./lib/account.rb`, and `'require ./lib/bank.rb`.
Alternatively you can choose to use `irb`.

To see the tests type in `rspec` in the project folder.

## Features
The programme can perform the following basic functions:

- Names and creates a bank.
```Ruby
`[3] pry(main)> bank = Bank.new("HSBC")
[3] pry(main)> bank = Bank.new("HSBC")
=> #<Bank:0x007ff3c116dc00
 @accounts=[],
 @name="HSBC">`
 ```
- Creates an account and adds it to the the bank.
```Ruby
`[4] pry(main)> account = Account.new
=> #<Account:0x007ff3c11640d8
 @balance=0,
 @transaction_history=[]>
[5] pry(main)> bank.open_account(account)
=> [#<Account:0x007ff3c11640d8
  @balance=0,
  @transaction_history=[]>]
[6] pry(main)> bank.accounts
=> [#<Account:0x007ff3c11640d8
  @balance=0,
  @transaction_history=[]>]
[7] pry(main)>`
```
- Enter the date for a transaction.
- Can make deposits and withdrawals.
- Check their balance.
- Print out their complete transaction history.

## Quality control
The aim of this exercise was to write high quality code.

This is achieved my for filling the following criteria;
- All tests are passing.
- Rubocop linter passes.
- 95% or above test coverage.
- Commits are regular, small and have good descriptions.
- Flog score is low, which means methods have one responsibility and classes are small.
