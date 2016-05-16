require_relative '../lib/account'

describe Account do

  subject(:account) { described_class.new }

  describe '#initialize' do
    it 'initializes with an account balance of 0' do
      expect(account.balance).to eq 0
    end
  end

  describe '#deposit' do
    it 'reports a balance of £1000 after a deposit of £1000' do
      account.deposit(1000)
      expect(account.balance).to eq 1000
    end
  end

  describe '#withdrawal' do
    it 'report a balance of -£500 after a withdrawal of £500' do
      account.withdrawal(500)
      expect(account.balance).to eq -500
    end
  end



end
