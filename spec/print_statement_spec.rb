RSpec.describe PrintStatement do

  subject(:print_statement) {
    described_class.new(transaction_history)
  }
end
