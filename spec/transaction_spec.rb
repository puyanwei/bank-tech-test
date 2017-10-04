RSpec.describe Transaction do
  subject(:transaction) { described_class.new('14/01/2012', 1000, 0, 1000) }

  context '#initialize' do
    it 'shows the information of the customers transaction' do
      expect(subject.date).to eq('14/01/2012')
      expect(subject.credit).to eq(1000)
      expect(subject.debit).to eq(0)
      expect(subject.balance).to eq(1000)
    end
  end
end
