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


end
