require 'byebug'
require_relative '../lib/statement'

describe Statement do

  let(:transaction1) { double(:transaction, date: '10/01/2012', amount: 1000, type: 'credit')}
  let(:transaction2) { double(:transaction, date: '13/01/2012', amount: 2000, type: 'credit')}
  let(:transaction3) { double(:transaction, date: '14/01/2012', amount: -500, type: 'debit')}
  subject(:statement) { described_class.new }

  describe '#print_statement' do

    it 'prints a statement' do
      account_history = [transaction1, transaction2, transaction3]
      expect(subject.print_statement(account_history)).to eq(
        "date || credit || debit || balance\n
        14/01/2012 || || 500.00 || 2500.00\n
        13/01/2012 || 2000.00 || || 3000.00\n
        10/01/2012 || 1000.00 || || 1000.00\n")
    end

  end

end
