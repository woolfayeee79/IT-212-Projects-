#list the contents of a url
#use ruby to read from the script
#IT 212
#Megan Woolschlager

require 'open-uri'

# define constant parts of the URL.
prefix = "https://api.fixer.io/latest?base="
insert = "&symbols="

# Read source and target currencies
# from the keyboard.
print "Enter source currency: "
source_currency = gets.chomp( )
print "Enter target currency: "
target_currency = gets.chomp( )

# Concatenate to form URL
url = prefix + source_currency + 
      insert + target_currency
print url, "\n"
# Read JSON string from web
#json_string = open(url).read
#print file

#json_string = 
#%Q/{"base":"USD","date":"2018-02-20","rates":
#{"GBP":0.71449}}/
#exchange_rate_string = json_string[49..55]
#exchange_rate = exchange_rate_string.to_f

print "Enter exchange rate: "
exchange_rate = gets.chomp.to_f

print "Enter source amount: "
source_amount = gets.chomp.to_f

print "Enter customer name: "
name = gets.chomp

print source_currency, "\n"
print target_currency, "\n"
print exchange_rate, "\n"
print source_amount, "\n"

# also compute and print target amount.

#fix up the kids3-sql.rb script to enter
#this information in a database
