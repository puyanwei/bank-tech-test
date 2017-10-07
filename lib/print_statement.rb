class PrintStatement

  def initialize(transaction_history)
    @transaction_history = transaction_history
  end

  def print
    header
    loop_transactions
  end

  def header
    puts 'date || credit || debit || balance'
  end

  def loop_transactions
    @transaction_history.each do |log|
      puts "#{log.date} || #{log.credit} || #{log.debit} || #{log.balance}"
    end
  end
end
