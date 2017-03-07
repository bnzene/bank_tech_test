require 'account'

describe 'Account' do
  context 'Account creation' do
    it 'User can create an account' do
      account = Account.new
      expect(account).to be_instance_of(Account)
    end
  end

  context 'Account' do
    it 'has a balance of 0 by default' do
      account = Account.new
      expect(account.balance).to eq(0)
    end
  end
end
