class Account
  DEFAULT_BALANCE = 0

  attr_accessor :balance, :transaction_history

  def initialize
    @balance = DEFAULT_BALANCE
    @transaction_history = []
  end

  def deposit(date, credit)
    @balance += credit
    deposit = Deposit.new(date, credit, balance)
    @transaction_history.unshift(deposit)
  end

  def withdrawal(date, debit)
    @balance -= debit
    withdrawal = Withdrawal.new(date, debit, balance)
    @transaction_history.unshift(withdrawal)
  end

  def print_history
    print_statement = PrintStatement.new(@transaction_history)
    print_statement.print
    end
end
