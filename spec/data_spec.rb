require 'data'

RSpec.describe Data do
  subject(:data) { described_class.new }

  context '#initialize' do
    it 'should have a date, credit, debit as entries' do
      data(14/01/2012, 1000, 400)
      expect(data.date).to eq(14/01/2012)
      expect(data.credit).to eq(1000)
      expect(data.debit).to eq(400)
    end
  end
end
