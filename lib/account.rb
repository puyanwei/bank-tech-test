class Account
  DEFAULT_BALANCE = 0

  attr_accessor :balance

  def initialize
    @balance = DEFAULT_BALANCE
    @transaction = Transaction.new
  end

  def make_deposit(date, credit)
    @balance += credit
    deposit = Deposit.new(date, credit, balance)
    @transaction.add_deposit(deposit)
  end

  def make_withdrawal(date, debit)
    raise "insufficient funds" if debit > @balance
    @balance -= debit
    withdrawal = Withdrawal.new(date, debit, balance)
    @transaction.add_withdrawal(withdrawal)
  end

  def print_history
    @transaction.print_history
  end
end
