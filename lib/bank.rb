class Bank
  attr_reader :accounts, :name

  def initialize(name)
    @name = name
    @accounts = []
  end

  def open_account(name)
    account = Account.new(name)
    @accounts << account
  end
end
