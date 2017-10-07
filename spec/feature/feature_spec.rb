require './lib/account'
require './lib/bank'
require './lib/deposit'
require './lib/withdrawal'
require './lib/print_statement'
require './lib/transaction'

describe 'feature' do

  it 'creates a bank, makes an account, deposits, withdraws and prints a statement' do
    bank = Bank.new("Barclays")
    account = Account.new
    bank.open_account(account)
    account.make_deposit("03/05/17", 500)
    account.make_deposit("04/05/17", 300)
    account.make_withdrawal("05/05/17", 450)
    expect { account.print_history }.to output(
      "date || credit || debit || balance\n" +
      "05/05/17 || 0 || 450 || 350\n" +
      "04/05/17 || 300 || 0 || 800\n" +
      "03/05/17 || 500 || 0 || 500\n").to_stdout
  end

  it 'outputs an error if a withdrawal is made that is more than what is in the balance' do
    account = Account.new
    account.make_deposit("03/05/17", 300)
    expect { account.make_withdrawal("04/05/17", 600) }.to raise_error("insufficient funds")
  end
end
