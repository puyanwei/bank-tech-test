RSpec.describe Transaction do
  subject(:transaction) { described_class.new('14/01/2012', 1000, 0, 1000) }

  context '#initialize' do
    it 'shows hash table of the customers transaction' do
      log = { date: '14/01/2012', credit: 1000, debit: 0, balance: 1000 }
      expect(subject.log).to eq(log)
    end
  end
end
