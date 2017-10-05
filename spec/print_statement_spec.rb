RSpec.describe PrintStatement do

  subject(:print_statement) {
  described_class.new(transaction_history) }
  let(:transaction_history) { double :transaction_history }

  context '#header' do
    it 'adds the columns of the print statment' do
      expect { print_statement.header }.to output("date || credit || debit || balance ||\n").to_stdout
    end
  end
end
