class Information
  attr_accessor :hash, :date, :credit, :debit

  def initialize(date, credit, debit)
    @hash = { date: date, credit: credit, debit: debit }
  end
end
