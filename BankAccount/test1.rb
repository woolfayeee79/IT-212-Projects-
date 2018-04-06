require BankAccount

acct = BankAccount.new("Christine", "AF-23726", "chri37@gmail.com")
print acct.to_s, "\n"

print acct.balance, "\n"
acct.deposit(5000.00)
acct.deposit(-1000.00)
acct.withdraw(2000.00)
acct.withdraw(-3000.00)
acct.withdraw(10000.00)
print acct.balance, "\n"

print acct.transaction_log, "\n"