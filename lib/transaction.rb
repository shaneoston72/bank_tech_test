class Transaction

  attr_reader :amount, :type, :date

  def initialize(type, amount)
    @date   = Time.now.strftime('%d/%m/%Y')
    @amount = amount
    @type   = type
  end

end
