require_relative './error'

class Withdrawal
  attr_accessor :date, :credit, :debit, :balance

  def initialize(date, credit, balance)
    @date = date
    @credit = credit
    @debit = 0
    @balance = balance
  end

  def error_check
    error = Error.new
    error.insufficient_funds(debit, credit)
  end
end
