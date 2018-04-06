# Megan Woolschlager
# IT212
# deck, PokerHand, and Constants are needed 
require "./Deck"
require "./PokerHand"
require "./Constants"

include Constants
#print the arr format
counts = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0]


print "Number of Hands of Each Hand Type\n"
# fixed up psudocode 
for i in 1..2000
  deck = Deck.new()
  deck.shuffle!()
  poker_hands = [ ]
    # make a nested loop with store in x and y for range
  for x in 1..5
    arr = [ ]
    for y in 1..5
        #append
      arr << deck.deal() 
    end
    ph = PokerHand.new(arr)
      #append
    poker_hands << ph
  end
  poker_hands.each do |ph| 
     ph.classify()
  end  
  poker_hands.each do |ph|
    counts[ph.hand_type] += 1
  end
end

# print out the values:

print "Unclassified: ", counts[UNCLASSIFIED], "\n"
print "No Pair:      ", counts[NO_PAIR], "\n"
print "One Pair:     ", counts[ONE_PAIR], "\n"
print "Two Pairs:    ", counts[TWO_PAIR], "\n"
print "Three of a Kind:  ",counts[THREE_OF_A_KIND], "\n"
print "Straight:     ", counts[STRAIGHT], "\n"
print "Flush:        ", counts[FLUSH], "\n"
print "Full House:   ", counts[FULL_HOUSE], "\n"
print "Four of a Kind:   ",counts[FOUR_OF_A_KIND], "\n"
print "Straight Flush:   ",counts[STRAIGHT_FLUSH], "\n"

#print(counts)