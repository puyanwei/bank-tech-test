RSpec.describe Deposit do
  subject(:deposit) { described_class.new("05/05/15", 2000, 1500) }

  context '#initialize' do
    it 'contains information of a deposit transaction' do
      expect(deposit.date).to eq("05/05/15")
      expect(deposit.credit).to eq(2000)
      expect(deposit.debit).to eq(0)
      expect(deposit.balance).to eq(1500)
    end
  end
end
