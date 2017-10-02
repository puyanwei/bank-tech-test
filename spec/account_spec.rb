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
end
