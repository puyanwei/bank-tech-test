DEFAULT_BALANCE = 0

class Account
  attr_reader :balance

  def initialize
    @balance = DEFAULT_BALANCE
    end
end
