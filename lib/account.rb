class Account
  DEFAULT_BALANCE = 0

  attr_accessor :balance, :transaction_history

  def initialize
    @balance = DEFAULT_BALANCE
    @transaction_history = []
    end

  def deposit(credit, date)
    @balance += credit
    current_transaction(date, credit, 0)
  end

  def withdrawl(debit, date)
    @balance -= debit
    current_transaction(date, 0, debit)
  end

  private

  def current_transaction(date, credit, debit)
    current_transaction = Info.new(date, credit, debit)
    @transaction_history << current_transaction
  end
end
