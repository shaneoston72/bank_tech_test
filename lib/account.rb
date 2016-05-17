class Account

  def initialize(transaction_klass: Transaction )
    @balance = 0
    @account_history = []
    @transaction = transaction_klass
  end

  def deposit(amount)
    update_balance(amount)
    # transaction_history(amount, 'credit')
  end

  def withdrawal(amount)
    update_balance(amount)
    transaction_history(amount, 'debit')
  end

  private

  attr_accessor :balance, :account_history

  def update_balance(amount)
    self.balance += amount
  end

  def transaction_history(amount, type)
    @transaction = @transaction.new(amount, type)
    self.account_history << @transaction
  end

end
