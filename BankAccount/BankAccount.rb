class BankAccount
  attr_accessor :name, :acct_id, :email
  attr_reader :transaction_log
  
  def initialize(the_name, the_acct_id, the_email)
    @name = the_name
    @acct_id = the_acct_id
    @email = the_email
    @balance = 0.00
    @transaction_log = "BankAccount Transaction Log\n" +
                       "===========================\n" +
                       "Bank Account Created\n" + to_s + "\n"
  end
  
  def to_s
    return "Name: %s\nAcct ID: %s\nEmail: %s\nBalance: $%.2f\n" %
      [@name, @acct_id, @email, @balance]
  end
  
  def balance
    @transaction_log += ("Balance Checked\n" % @balance) + 
      to_s + "\n"
    return @balance
  
  def deposit(the_amount)
    if the_amount > 0.0
      @balance += the_amount
      @transaction_log += ("$%.2f Deposited\n" % the_amount) + 
        to_s + "\n"
    elsif
      @transaction_log += "No deposit made.\n" + to_s + "\n"
    end
  end
  
  def withdraw(the_amount)
    if the_amount > 0.0 && the_amount <= @balance
      @balance -= the_amount
      @transaction_log += ("$%.2f Withdrawn\n" % the_amount) + 
        to_s + "\n"
    else
      @transaction_log = "No withdrawal made.\n" + to_s + "\n"
    end
  end
end