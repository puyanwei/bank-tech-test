RSpec.describe Error do
  subject(:error) { described_class.new }

  context '#insufficient_funds' do
    it 'throws an error if there are insufficient funds for a withdrawal' do
      message = "insufficient funds"
      expect { error.insufficient_funds(700, 500) }.to raise_error(message)
    end
  end
end
