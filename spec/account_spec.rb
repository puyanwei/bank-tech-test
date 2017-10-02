require 'account'

RSpec.describe Account do
  subject(:account) { described_class.new }

  context '#initialize' do
    it 'balance should start at zero' do
      expect(account.balance).to eq(0)
    end
  end
end
