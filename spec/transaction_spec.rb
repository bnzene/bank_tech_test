require 'account'
require 'transaction'

describe 'Transactions' do
  context 'Making deposits' do
    before(:each) do
      @account = Account.new
    end

    it 'accepts deposits' do
      expect{ @account.deposit(1000) }.not_to raise_error
    end

    it 'when user deposits money, increases balance by that value' do
      expect{ @account.deposit(1000) }.to (change{ @account.showBalance }).by(1000)
    end
  end


  context 'Making withdrawals' do
    before(:each) do
      @account = Account.new
    end

    it 'accepts withdrawals' do
      expect{ @account.withdraw(500) }.not_to raise_error
    end

    it 'when user withdraws money, decreases balance by that value' do
      expect{ @account.withdraw(500) }.to (change{ @account.showBalance }).by(-500)
    end
  end
end
