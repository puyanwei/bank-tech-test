class Information
  attr_accessor :log, :date, :credit, :debit, :balance

  def initialize(date, credit, debit, balance)
    @log = { date: date, credit: credit, debit: debit, balance: balance }
  end
end
