class Account
  DEFAULT_BALANCE = 0


  attr_accessor :balance, :transaction_history

  def initialize
    @balance = DEFAULT_BALANCE
    @transaction_history = []
    end

    def deposit(credit, date)
      @balance += credit
      @transaction_history << info = Info.new(date, credit, 0)
    end

    def withdrawl(debit, date)
      @balance -= debit
      @transaction_history << info = Info.new(date, 0, debit)
    end
end
