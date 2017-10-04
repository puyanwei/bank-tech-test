class Bank
  attr_reader :accounts, :name

  def initialize(name)
    @name = name
    @accounts = []
  end

  def open_account(customer_name)
    account = Account.new(customer_name)
    @accounts.unshift(account)
  end
end
