# transactionSQL Example
# Create an SQL table using data read from keyboard
#IT 212
#Megan Woolschlager
#require sqlite3

require 'sqlite3'

# Attach to database created by transactions.
db = SQLite3::Database.new('transactions.db')
# db.results_as_hash = true

# Create transactions table.
db.execute %Q{
create table if not exists transactions(
  source_currency varchar(3),
  target_currency varchar(3),
  exchange_rate float,
  source_amount float,
  target_amount float,
  name varchar(10));
}

# Read data from keyboard source_currency, target_currency, enter exchange_rate, source_amount, and get a neme from the user.
print "Enter source currency: "
source_currency = gets.chomp
print "Enter target currancy: "
target_currency = gets.chomp
print "Enter exchange rate: "
exchange_rate = gets.chomp.to_f
print "Enter source amount: "
source_amount = gets.chomp.to_f
print "Enter customer name: "
name = gets.chomp
target_amount = exchange_rate * source_amount

#display your code in the SQL statement/ display data
sql = %Q{insert into transactions values( '#{source_currency}', '#{target_currency}', #{exchange_rate}, #{source_amount}, #{target_amount},'#{name}');}
print sql, "\n"
db.execute(sql)


# Query transactions table.
transactions = db.execute %Q{
  select * from transactions;
}
print transactions, "\n"

db.close
