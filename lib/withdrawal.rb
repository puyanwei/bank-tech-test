class Withdrawal
  attr_accessor :date, :credit, :debit, :balance

  def initialize(date, credit, balance, error = Error.new)
    @date = date
    @credit = credit
    @debit = 0
    @balance = balance
    error.insufficient_funds(debit, credit)
  end
end
