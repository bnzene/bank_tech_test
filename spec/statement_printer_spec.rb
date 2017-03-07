describe 'Statement printer' do
  it 'when user requests a statement, returns records of all transactions made with date and value' do
    account.deposit("10/01/2012", 1000)
    account.deposit("13/01/2012", 2000)
    account.withdraw("14/01/2012", 500)
    expect(account.printStatement).to eq(account.transaction_records.insert(0, transactionsHeader))
  end
end
