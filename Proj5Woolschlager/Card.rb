# Megan Woolschlager.
# IT212
# source code filr: Card.rb.
#invoke the  method by initializing the card class
# set the_rank and the_suit
class Card
  attr_reader :rank, :suit

  # initialize method is called when user invokes Card.new.
  def initialize(the_rank, the_suit)
    @rank = the_rank
    @suit = the_suit
  end
  
  #check the cololr with a method that calls @suit and possible color combos, spade and clubs 
  def color 
    if @suit == 'S' || @suit == 'C'
      return 'black'
    else
      return 'red'
    end
  end
  
  #check the cards using a variable named symbols and in
  def to_s
    symbols = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K", "A"]
    return symbols[@rank] + @suit
  end
end