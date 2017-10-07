RSpec.describe Transaction do
  subject(:transaction) { described_class.new }

  context '#initialize' do
    it 'has an empty transaction history array' do
      expect(subject.transaction_history).to eq([])
    end
  end

  context '#add_to_history' do
    it 'adds the current transaction the transaction history' do
      account.make_deposit('10/22/17', 400)
      account.make_deposit('09/22/17', 200)
      expect(transaction.transaction_history.length).to eq(1)
    end
  end

  context '#transaction_history' do
    it 'puts a transaction history into the transaction history array when you make a deposit' do
      account.make_deposit('09/22/17', 3000)
      expect(account.transaction_history[0].credit).to eq(3000)
      expect(transaction.transaction_history.length).to eq(1)
    end
  end

  context '#print_history' do
    it 'prints out the whole history of transactions' do
      account.make_deposit('10/01/2012', 1000)
      account.make_deposit('13/01/2012', 2000)
      account.make_withdrawal('14/01/2012', 500)
      expect { account.print_history }.to output(
      "date || credit || debit || balance\n" +
      "14/01/2012 || 0 || 500 || 2500\n" +
      "13/01/2012 || 2000 || 0 || 3000\n" +
      "10/01/2012 || 1000 || 0 || 1000\n").to_stdout
    end
  end
end
