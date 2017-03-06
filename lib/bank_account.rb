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
    @transactions.push([date, sum, (@balance + sum)])
    @balance += sum
  end

  def withdraw(date, sum)
    @transactions.push([date, -sum, (@balance - sum)])
    @balance -= sum
  end

  def printStatement
    lineWidth = 50

    @transactions.each do |transaction|
      transaction[1] > 0 ?  transaction.insert(2, " ") :  transaction.insert(1, " ")
    end

    @transactions.insert(0, @transactionsHeader)

    puts
    @transactions.each do |transaction|
      for i in 0..2 do
        print transaction[i].to_s.center(lineWidth/4)
        print "||"
      end
      puts transaction[3].to_s.center(lineWidth/4)
    end
  end
end
