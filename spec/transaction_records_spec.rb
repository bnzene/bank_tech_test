require 'account'
require 'transaction'
require 'transaction_records'


describe 'Transaction records' do
  context 'Data management' do
    before(:each) do
      account = Account.new
    end

    it 'records the date, type and value of each transaction' do
      expect{ account.deposit("10/01/2012", 1000) }.to (change{ account.showTransactions.length }).by(1)
      expect{ account.withdraw("14/01/2012", 500) }.to (change{ account.showTransactions.length }).by(1)
      expect(account.showTransactions).to eq([["14/01/2012", -500, 500], ["10/01/2012", 1000, 1000]])
    end
  end
end
