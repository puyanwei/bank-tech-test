require 'Information'

RSpec.describe Information do
  subject(:information) { described_class.new('14/01/2012', 1000, 400) }

  context '#initialize' do
    it 'should have a date, credit, and debit as entries' do
      expect(information.date).to eq('14/01/2012')
      expect(information.credit).to eq(1000)
      expect(information.debit).to eq(400)
    end
  end
end
