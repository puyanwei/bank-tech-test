RSpec.describe Transaction do
  subject(:transaction) { described_class.new }

  context '#initialize' do
    it 'has an empty transaction history array' do
      expect(subject.transaction_history).to eq([])
    end
  end

  context '#add_to_history' do
    it 'adds the current transaction the transaction history' do
      transaction.add_deposit(400)
      transaction.add_deposit(200)
      expect(transaction.transaction_history.length).to eq(2)
    end
  end

  context '#transaction_history' do
    it 'puts a transaction history into the transaction history array when you make a deposit' do
      transaction.add_deposit(3000)
      expect(transaction.transaction_history[0]).to eq(3000)
      expect(transaction.transaction_history.length).to eq(1)
    end
  end
end
