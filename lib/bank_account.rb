class Account

DEFAULT_BALANCE = 0

  def initialize
    @balance = DEFAULT_BALANCE
    @transactions = []
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
    puts
    puts " date  \t\t|| credit || debit \t || balance"
    @transactions.each do |transaction|
      if transaction[1] == 0
        puts transaction[0] + "\t|| " + transaction[1].to_s + " \t " + " || " + " \t " + "|| " + transaction[2].to_s
      else
        puts transaction[0] + "\t|| " + " \t " + " || " + transaction[1].to_s  + " \t " + "|| " + transaction[2].to_s
      end
    end
  end
end
