require 'transaction'
require 'transaction_records'
require 'statement_printer'

class Account

DEFAULT_BALANCE = 0
DEFAULT_DATE = "10/01/2012"

attr_accessor :balance, :date

  def initialize
    @balance = DEFAULT_BALANCE
    @transaction_records = TransactionRecord.new
    @date = DEFAULT_DATE
  end

  def deposit(value)
    @transaction = Transaction.new(value, 0)
    @transaction_records.new_transaction(@date, value, 0, balance)
  end

  def withdraw(value)
    withdrawal = Transaction.new(0, value)
    @transaction_records.new_transaction_record(@date, 0, value, balance)
  end

  def printStatement
    return Statement.new(@transaction_records)
  end

  def changeDate(date_string)
    @date = date_string
  end

end
