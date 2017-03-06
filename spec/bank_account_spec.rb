require 'bank_account'

describe 'Bank account' do
  context 'Account creation' do
    it 'User can create an account' do
      account = Account.new
      expect(account).to be_instance_of(Account)
    end
  end

  context 'Account' do
    before(:each) do
      @account = Account.new
    end

    it 'has a balance of 0 by default' do
      expect(@account.showBalance).to eq(0)
    end

    it 'displays balance when called' do
      expect{ @account.printBalance }.to output(@balance).to_stdout
    end

    it 'is created with an empty array of transactions' do
      expect{ @account.showTransactions }.not_to raise_error
      expect(@account.showTransactions).to eq([])
    end
  end


  context 'Making deposits' do
    before(:each) do
      @account = Account.new
    end

    it 'accepts deposits' do
      expect{ @account.deposit("10/01/2012", 1000) }.not_to raise_error
    end

    it 'when user deposits money, increases balance by that value' do
      expect{ @account.deposit("10/01/2012", 1000) }.to (change{ @account.showBalance }).by(1000)
    end
  end


  context 'Making withdrawals' do
    before(:each) do
      @account = Account.new
    end

    it 'accepts withdrawals' do
      expect{ @account.withdraw("14/01/2012", 500) }.not_to raise_error
    end

    it 'when user withdraws money, decreases balance by that value' do
      expect{ @account.withdraw("14/01/2012", 500) }.to (change{ @account.showBalance }).by(-500)
    end
  end


  context 'Data management' do
    before(:each) do
      @account = Account.new
    end

    it 'records the date, type and value of each transaction' do
      expect{ @account.deposit("10/01/2012", 1000) }.to (change{ @account.showTransactions.length }).by(1)
      expect{ @account.withdraw("14/01/2012", 500) }.to (change{ @account.showTransactions.length }).by(1)
      expect(@account.showTransactions).to eq([["14/01/2012", -500, 500], ["10/01/2012", 1000, 1000]])
    end

    it 'when user requests a statement, returns 2records of all transactions made with date and value' do
      @account.deposit("10/01/2012", 1000)
      @account.deposit("13/01/2012", 2000)
      @account.withdraw("14/01/2012", 500)
      expect(@account.printStatement).to eq(@account.showTransactions.insert(0, @transactionsHeader))
    end
  end

end
