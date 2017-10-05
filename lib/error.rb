class Error
  def insufficient_funds(debit, balance)
    raise("insufficient funds") if debit > balance
  end
end
