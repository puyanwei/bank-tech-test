class Account
  DEFAULT_BALANCE = 0

  attr_accessor :balance, :transaction_history

  def initialize
    @balance = DEFAULT_BALANCE
    @transaction_history = []
    end

  def deposit(credit, date)
    @balance += credit
    add_to_history(date, credit, 0)
  end

  def withdrawl(debit, date)
    @balance -= debit
    add_to_history(date, 0, debit)
  end

  private

  def add_to_history(date, credit, debit)
    current_transaction = Info.new(date, credit, debit)
    @transaction_history << current_transaction
  end
end
