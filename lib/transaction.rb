class Transaction

  attr_reader :amount, :type, :date

  def initialize(amount, type)
    @date = Time.now.strftime('%d/%m/%Y')
    @amount =  amount
    @type = type
  end
end
