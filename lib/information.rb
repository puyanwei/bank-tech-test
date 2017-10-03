class Information
  attr_accessor :hash, :date, :credit, :debit, :balance

  def initialize(date, credit, debit, balance)
    @hash = { date: date, credit: credit, debit: debit, balance: balance}
  end
end
