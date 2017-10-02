class Information
  attr_reader :date, :credit, :debit

  def initialize(date, credit, debit)
    @date = date
    @credit = credit
    @debit = debit
  end
end
