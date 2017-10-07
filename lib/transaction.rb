class Transaction

  attr_reader :transaction_history

  def initialize
    @transaction_history = []
  end

  def add_deposit(deposit)
    @transaction_history.unshift(deposit)
  end

  def add_withdrawal(withdrawal)
    @transaction_history.unshift(withdrawal)
  end

  def print_history
    print_statement = PrintStatement.new(@transaction_history)
    print_statement.print
  end
end
