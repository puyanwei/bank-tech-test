RSpec.describe PrintStatement do
#
  subject(:printStatement) { described_class.new }

  context '#header' do
    it 'adds the columns of the print statment' do
      expect { printStatement.header }.to output("date || credit || debit || balance ||\n").to_stdout
    end
  end

  # context '#print_history' do
  #   it 'prints out the whole history of transactions' do
  #     account.deposit('10/01/2012', 1000)
  #     account.deposit('13/01/2012', 2000)
  #     account.withdrawl('14/01/2012', 500)
  #     expect { printStatement.print_history }.to output("date || credit || debit || balance ||\n14/01/2012 || 0 || 500 || 2500\n13/01/2012 || 2000 || 0 || 3000\n10/01/2012 || 1000 || 0 || 1000\n").to_stdout
  #   end
  # end
end
