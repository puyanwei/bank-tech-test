class Withdrawal
  attr_accessor :date, :credit, :debit, :balance

  def initialize(date, debit, balance)
    @date = date
    @credit = 0
    @debit = debit
    @balance = balance
  end
end
