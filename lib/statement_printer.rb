require 'account'
require 'transaction'
require 'transaction_records'

class Statement

  attr_reader :statement

  def initialize(transaction_records)
    transactions = transaction_records.transactions
    puts
    addHeader
    printFormattedStrings(transaction_records)
  end

  def addHeader
    transactionsHeader = ["date", "credit", "debit", "balance"]
    transactions.insert(0, transactionsHeader)
  end

  def printFormattedStrings(transaction_records)
    lineWidth = 50
    transactions.each do |transaction|
      for i in 0..2 do
        print "#{transaction[i].to_s.center(lineWidth/4)}" + "||"
      end
      puts transaction[3].to_s.center(lineWidth/4)
    end
  end

end
