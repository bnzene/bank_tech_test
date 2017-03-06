class Account

DEFAULT_BALANCE = 0

  def initialize
    @balance = DEFAULT_BALANCE
    @transactions = []
    @transactionsHeader = ["date", "credit", "debit", "balance"]
  end

  def showBalance
    return @balance
  end

  def printBalance
    print @balance
  end

  def showTransactions
    return @transactions
  end

  def deposit(date, sum)
    @transactions.unshift([date, sum, (@balance + sum)])
    @balance += sum
  end

  def withdraw(date, sum)
    @transactions.unshift([date, -sum, (@balance - sum)])
    @balance -= sum
  end

  def printStatement
    addEmptyColumn
    addHeader
    puts
    printFormattedStrings
  end

  private

  def addEmptyCell
    @transactions.each do |transaction|
      transaction[1] > 0 ?  transaction.insert(2, " ") :  transaction.insert(1, " ")
    end
  end

  def addHeader
    @transactions.insert(0, @transactionsHeader)
  end

  def printFormattedStrings
    lineWidth = 50
    @transactions.each do |transaction|
      for i in 0..2 do
        print "#{transaction[i].to_s.center(lineWidth/4)}||"
      end
      puts transaction[3].to_s.center(lineWidth/4)
    end
  end

end
