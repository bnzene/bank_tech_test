require 'account'
require 'transaction'
require 'statement_printer'

class TransactionRecord

  attr_accessor :transactions

  def initialize
    transactions = []
  end

  def new_transaction_record(date, credit, debit, balance)
    transactions.unshift([date, credit, debit, balance])
  end

end
