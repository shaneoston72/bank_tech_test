require_relative '../lib/account'

describe Account do

  subject(:account) { described_class.new }

  describe '#deposit' do

    before :each do
      account.deposit(1000)
    end

    it 'reports a balance of £1000 after a deposit of £1000' do
      expect(account.balance).to eq 1000
    end

    xit 'has a transaction record in the history of the deposit' do
      expect(account.account_history).to contain 'credit'
    end
  end

  describe '#withdrawal' do

    it 'report a balance of -£500 after a withdrawal of £500' do
      account.withdrawal(500)
      expect(account.balance).to eq -500
    end

    xit 'has a transaction record in the history of the withdrawal' do
      expect(account.account_history).to contain 'debit'
    end
  end

end
