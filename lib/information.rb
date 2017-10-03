class Information
  attr_accessor :transaction, :date, :credit, :debit

  def initialize(date, credit, debit)
    @transaction = { date: date, credit: credit, debit: debit }
  end
end
