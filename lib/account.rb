class Account
  DEFAULT_BALANCE = 0

  attr_accessor :balance, :transaction_history, :current_transaction

  def initialize
    @balance = DEFAULT_BALANCE
    @transaction_history = []
  end

  def deposit(date, credit)
    @balance += credit
    add_to_history(date, credit, 0, balance)
  end

  def withdrawl(date, debit)
    check_errors(debit)
    @balance -= debit
    add_to_history(date, 0, debit, balance)
  end

  def print_history
    print_statement = PrintStatement.new(@transaction_history)
    print_statement.header
    print_statement.loop_transactions
  end

  private

  def check_errors(debit)
    raise('Insufficient funds') if debit > @balance
  end

  def add_to_history(date, credit, debit, balance)
    @current_transaction = Transaction.new(date, credit, debit, balance)
    @transaction_history.unshift(current_transaction)
  end
end
