require_relative '../lib/account'

describe Account do

  subject(:account) { described_class.new }

  describe '#transaction' do

    it 'reports a balance of £1000 after a deposit of £1000' do
      account.transaction(type: 'credit', amount: 1000)
      expect(account.balance).to eq 1000
    end

    it 'has a transaction record in the history of the deposit' do
      account.transaction(type: 'credit', amount: 1000)
      expect(account.account_history.last.type.include?('credit')).to be true
    end

    it 'report a balance of -£500 after a withdrawal of £500' do
      account.transaction(type: 'debit', amount: -500)
      expect(account.balance).to eq -500
    end

    it 'has a transaction record in the history of the withdrawal' do
      account.transaction(type: 'debit', amount: -500)
      expect(account.account_history.last.type.include?('debit')).to be true
    end

    it 'shows a balance of £2500 after a series of transactions' do
      account.transaction(type: 'credit', amount: 1000)
      account.transaction(type: 'credit', amount: 2000)
      account.transaction(type: 'debit', amount: -500)
      expect(account.balance).to eq 2500
    end

  end

end
