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
      account.deposit(500)
      expect(account.balance).to eq(500)
    end
  end

  context '#withdrawl' do
    it 'puts money into the balance' do
      account.deposit(500)
      account.withdrawl(250)
      expect(account.balance).to eq(250)
    end
  end
end
