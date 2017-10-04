class Transaction
  attr_accessor :log, :date, :credit, :debit, :balance

  def initialize(date, credit, debit, balance)
    @date = date
    @credit = credit
    @debit = debit
    @balance = balance
  end
end
