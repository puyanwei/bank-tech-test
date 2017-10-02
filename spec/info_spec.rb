require 'info'

RSpec.describe Info do
  subject(:info) { described_class.new('14/01/2012', 1000, 400) }

  context '#initialize' do
    it 'should have a date, credit, and debit as entries' do
      expect(info.date).to eq('14/01/2012')
      expect(info.credit).to eq(1000)
      expect(info.debit).to eq(400)
    end
  end
end
