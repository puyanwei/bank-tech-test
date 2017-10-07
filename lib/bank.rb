class Bank
  attr_reader :accounts, :name

  def initialize(name)
    @name = name
    @accounts = []
  end

  def open_account(account)
    @accounts.unshift(account)
  end
end
