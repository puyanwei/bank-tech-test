require_relative 'information'

class Account
  DEFAULT_BALANCE = 0

  attr_accessor :balance, :transaction_history

  def initialize
    @balance = DEFAULT_BALANCE
    @transaction_history = []
    end

  def deposit(date, credit)
    @balance += credit
    add_to_history(date, credit, 0, balance)
  end

  def withdrawl(date, debit)
    @balance -= debit
    add_to_history(date, 0, debit, balance)
  end

  def print_history
    header
    loop_transactions
  end

  private

  def add_to_history(date, credit, debit, balance)
    current_transaction = Information.new(date, credit, debit, balance)
    @transaction_history << current_transaction
  end

  def header
    puts 'date || credit || debit || balance ||'
  end

  def loop_transactions
    @transaction_history.each do |transaction| puts transaction[:date]
    end
  end
end
