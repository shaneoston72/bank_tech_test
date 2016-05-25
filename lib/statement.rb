require 'byebug'

class Statement

  HEADER = "date || credit || debit || balance\n"

  def print_statement(account_history)
    
    account_history.inject(0) do |total, item|
      p "#{item.date} || #{item.amount} || #{total}"
      total += item.amount
    end
  end

end
