class Info
  attr_accessor :date, :credit, :debit

  def initialize(date, credit, debit)
    @date = date
    @credit = credit
    @debit = debit
  end
end
