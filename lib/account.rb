DEFAULT_BALANCE = 0

class Account
  attr_accessor :balance

  def initialize
    @balance = DEFAULT_BALANCE
    end

    def deposit(credit)
      @balance += credit
    end

    def withdrawl(debit)
      @balance -= debit
    end
end
