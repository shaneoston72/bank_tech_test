require_relative '../lib/transaction'

describe Transaction do

  let(:amount) { double :amount }
  date = Time.now.strftime('%d/%m/%Y')
  let(:type) { double :type }
  subject(:transaction) { described_class.new(amount, type) }

  describe '#initialize' do
    it 'initializes with amount' do
      expect(subject.amount).to eq amount
    end

    it 'initializes with date' do
      expect(subject.date).to eq date
    end

    it 'initializes with type' do
      expect(subject.type).to be type
    end
  end
end
