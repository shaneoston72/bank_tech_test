class Account

  attr_reader :statement
  
  def initialize(transaction_klass: Transaction, statement_klass: Statement)
    @balance          = 0
    @account_history  = []
    @transaction      = transaction_klass
    @statement        = statement_klass
  end

  def transaction(type: type, amount: amount)
    complete_transaction(type, amount)
  end

  def print_statement
    print_statement
  end



  attr_accessor :balance, :account_history

  def complete_transaction(type, amount)
    self.balance += amount
    transaction_record(type, amount)
  end

  def transaction_record(type, amount)
    @activity = create_transaction(type, amount)
    self.account_history << @activity
  end

  def create_transaction(type, amount)
    @transaction.new(type, amount)
  end

  def print_statement(account_history)
    statement.prepare_statement(account_history)
  end

end
