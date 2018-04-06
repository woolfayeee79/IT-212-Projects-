#source code file: test1.rb
#IT 212
#Megan Woolschlager

#ref the Card.rb file
require "./Deck"
c1 = Card.new(12, "S") 
c2= Card.new(13, "D")

#print out the card followed by a new line 
print c1, " ", c2,"\n"

# print the rank function .rank
print c1.rank

#print the suit fuction. rank
print c1.suit

#prin the the deck class and .count method 
d = Deck.new
print d, "\n"
print d.count, "\n"

# deal the cards in the deck
c = d.deal
print c, "\n"
print d, "\n"

#add the deck to the bottom of the card, print out the result followed by a new line
d.add_to_bottom(c)
print d, "\n"

#add to the top of the deck and invoke a new class ref 12 and S from the top
d.add_to_top(Card.new(12, "S"))
print d, "\n"

#shuffle the deck 
d.shuffle!
print d, "\n"

#empty the deck
print d.empty?, "\n"