RSpec.describe Withdrawal do
  subject(:withdrawal) { described_class.new("04/04/12", 500, 2000) }

  context '#initialize' do
    it 'contains information of a withdrawal transaction' do
      expect(withdrawal.date).to eq("04/04/12")
      expect(withdrawal.credit).to eq(0)
      expect(withdrawal.debit).to eq(500)
      expect(withdrawal.balance).to eq(2000)
    end
  end
end
