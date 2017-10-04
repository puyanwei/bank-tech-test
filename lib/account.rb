class Account
  DEFAULT_BALANCE = 0

  attr_accessor :balance, :name, :transaction_history, :current_transaction

  def initialize(name)
    @balance = DEFAULT_BALANCE
    @transaction_history = []
    @name = name

  end

  def deposit(date, credit)
    @balance += credit
    add_to_history(date, credit, 0, balance)
  end

  def withdrawl(date, debit)
    check_errors(debit)
    @balance -= debit
    add_to_history(date, 0, debit, balance)
  end

  def print_history
    header
    loop_transactions
  end

  private

  def check_errors(debit)
    raise('Insufficient funds') if debit > @balance
  end

  def add_to_history(date, credit, debit, balance)
    @current_transaction = Transaction.new(date, credit, debit, balance)
    @transaction_history.unshift(current_transaction)
  end

  def header
    puts 'date || credit || debit || balance ||'
  end

  def loop_transactions
    @transaction_history.each do |transaction|
      puts "#{transaction.date} || #{transaction.credit} || #{transaction.debit} || #{transaction.balance}"
    end
  end
end
