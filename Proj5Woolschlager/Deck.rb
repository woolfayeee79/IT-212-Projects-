#source code file: Deck.rb
#IT212
#Megan Woolschlager
require './Card'

class Deck
 #initailes the new deck instance of each new deck 
  def initialize 
    @cards = [ ]
    for rank in 2..14
      for suit in ['C', 'D', 'H', 'S']
        # create a new card with the specified rank
        # and suit and append it to the array. 
        @cards << Card.new(rank, suit)  
      end
    end 
  end
  
   #set the range to_s 
  def to_s
    output = ""
    for c in @cards
      output += " " + c.to_s
    end
    return output
  end
  
  #shuffle the card
  def shuffle!
    @cards.shuffle!
  end
  
  #count the  number of cards .length
  def count
    return @cards.length
  end
  
  #remove a card from the top of the @cards array 
  def deal
    return @cards.pop
  end
  
  # write a method the removes a card from the bottom 
  def add_to_bottom(the_card)
    @cards.unshift(the_card)
  end
  
  # write a method that adds a card to the top of the deck 
  def add_to_top(the_card)
    @cards.push(the_card)
  end
  
  # empty the deck
  def empty?
    return count() == @cards.empty?
  end 
end  