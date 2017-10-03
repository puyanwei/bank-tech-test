require 'account'

RSpec.describe Account do
  subject(:account) { described_class.new }

  context '#initialize' do
    it 'balance should start at zero' do
      expect(account.balance).to eq(0)
    end
  end

  context '#deposit' do
    it 'puts money into the balance' do
      account.deposit(500, '09/22/17')
      expect(account.balance).to eq(500)
    end
    it 'adds a date to the trainsaction' do
      account.deposit(400, '09/22/17')
      expect(account.transaction_history[0].date).to eq('09/22/17')
    end
  end

  context '#withdrawl' do
    it 'puts money into the balance' do
      account.deposit(500, '09/22/17')
      account.withdrawl(250, '09/22/17')
      expect(account.balance).to eq(250)
    end
  end

  context '#show_balance' do
    it 'shows the current balance' do
      account.deposit(3000, '09/22/17')
      account.withdrawl(2500, '09/22/17')
      expect(account.balance).to eq(500)
    end
  end

  context '#add_to_history' do
    it 'adds the current transaction the transaction history' do
      account.deposit(200, '09/22/17')
      account.deposit(400, '10/22/17')
      expect(account.transaction_history[1].credit).to eq(400)
      expect(account.transaction_history[1].date).to eq('10/22/17')
    end
  end

  context '#transaction_history' do
    it 'puts a transaction history into the transaction history array when you make a deposit' do
      account.deposit(3000, '09/22/17')
      expect(account.transaction_history[0].credit).to eq(3000)
      expect(account.transaction_history.length).to eq(1)
    end
  end

  context '#add_columns' do
    it 'adds the columns of the print statment' do
      expect {account.print_history}.to output("date || credit || debit || balance ||\n").to_stdout
    end
  end

  # context '#print_history' do
  #   it 'prints out the whole history of transactions' do
  #     account.withdrawl(500, "14/01/1912")
  #     account.deposit(2000, "13/01/1912")
  #     account.deposit(1000, "10/01/1912")
  #     expect(account.print_history).to eq("date || credit || debit || balance\n14/01/2012 || 0 || 500.00 || 2500.00\n13/01/2012 || 2000.00 || 0 || 3000.00\n10/01/2012 || 1000.00 || 0 || 1000.00")
  #   end
  # end
end
