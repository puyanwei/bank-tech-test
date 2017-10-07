RSpec.describe Account do
  subject(:account) { described_class.new }

  context '#initialize' do
    it 'balance should start at zero' do
      expect(account.balance).to eq(0)
    end
  end

  context '#deposit' do
    it 'puts money into the balance' do
      account.make_deposit('09/22/17', 500)
      expect(account.balance).to eq(500)
    end
  end

  context '#withdrawal' do
    it 'deducts money from the balance' do
      account.make_deposit('09/22/17', 500)
      account.make_withdrawal('09/22/17', 250)
      expect(account.balance).to eq(250)
    end
  end

  context '#show_balance' do
    it 'shows the current balance' do
      account.make_deposit('09/22/17', 1000)
      account.make_withdrawal('09/22/17', 501)
      expect(account.balance).to eq(499)
    end
  end
end
