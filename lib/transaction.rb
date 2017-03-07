require 'account'

class Transaction

  attr_accessor :value, :new_transaction_record

  def initialize(credit, debit)
    account = Account.new
    balance = account.balance
    balance += credit
    balance -= debit
  end

end
