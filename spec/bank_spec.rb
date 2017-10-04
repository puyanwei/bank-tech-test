RSpec.describe Bank do
  subject(:bank) { described_class.new("HSBC") }

  context '#initialize' do
    it 'has the name of the bank' do
      expect(bank.name).to eq("HSBC")
    end
    it 'contains an empty array of accounts' do
      expect(bank.accounts).to eq([])
    end
  end

  context '#open' do
    it 'opens a new bank account and puts it into the accounts array' do
      bank.open_account("John Smith")
      expect(bank.accounts[0].name).to eq("John Smith")
    end
  end
end
