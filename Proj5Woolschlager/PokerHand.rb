require "./CardSpaceship"
require "./Deck"
require "./Constants"

class PokerHand < Deck
  
include Constants 
attr_reader :hand_type

def initialize(the_cards)
  @cards = [ ]
  @hand_type = UNCLASSIFIED
  for card in the_cards
    #append the cards
   @cards << card
  end
end
# Megan Woolschlager
# IT212 
# Determine hand type of PokerHand object.
def classify

  # Sort poker hand by rank.  The card class must
  # have the added spaceship operator (<=>) for
  # the @cards array to be sortable.
  @cards.sort!

  # Straight flush (Add this code last.)
  if   @cards[0].suit == @cards[1].suit &&
       @cards[1].suit == @cards[2].suit &&
       @cards[2].suit == @cards[3].suit &&
       @cards[3].suit == @cards[4].suit &&
       @cards[0].rank + 1 == @cards[1].rank &&
       @cards[1].rank + 1 == @cards[2].rank &&
       @cards[2].rank + 1 == @cards[3].rank &&
       @cards[3].rank + 1 == @cards[4].rank
    
    @hand_type = STRAIGHT_FLUSH
    
  # Four of a kind with kicker > 4-of-a-kind
  elsif @cards[0].rank == @cards[1].rank &&
    @cards[1].rank == @cards[2].rank &&
    @cards[2].rank == @cards[3].rank

    @hand_type = FOUR_OF_A_KIND

  # Four of a kind with kicker < 4-of-a-kind
  elsif @cards[1].rank== @cards[2].rank &&
    @cards[2].rank == @cards[3].rank &&
    @cards[3].rank == @cards[4].rank

    @hand_type = FOUR_OF_A_KIND 

  # Flush (Add this code last.)
  elsif @cards[0].suit == @cards[1].suit &&
       @cards[1].suit == @cards[2].suit &&
       @cards[2].suit == @cards[3].suit &&
       @cards[3].suit == @cards[4].suit

  @hand_type = FLUSH 

    # Classification code for a flush goes here.

  # Straight (Add this code last.)
  elsif @cards[0].rank + 1 == @cards[1].rank &&
       @cards[1].rank + 1 == @cards[2].rank &&
       @cards[2].rank + 1 == @cards[3].rank &&
       @cards[3].rank + 1 == @cards[4].rank

  @hand_type = STRAIGHT

    # Classification code for a straight goes here.

  # Full house with pair < triple
  elsif @cards[0].rank== @cards[1].rank &&
    @cards[2].rank == @cards[3].rank &&
    @cards[3].rank == @cards[4].rank 
    
    @hand_type = FULL_HOUSE

    # Classification code goes here.

  # Full house with pair > triple
   elsif @cards[0].rank== @cards[1].rank &&
    @cards[1].rank == @cards[2].rank &&
    @cards[3].rank == @cards[4].rank 
    
    @hand_type = FULL_HOUSE


  # Cases for classifying three of a kind,
   elsif @cards[0].rank== @cards[1].rank &&
    @cards[1].rank == @cards[2].rank 
    
    
    @hand_type = THREE_OF_A_KIND
    
    # Cases for classifying three of a kind,
   elsif @cards[1].rank== @cards[2].rank &&
    @cards[2].rank == @cards[3].rank 
    
    
    @hand_type = THREE_OF_A_KIND
    
    # Cases for classifying three of a kind,
   elsif @cards[2].rank== @cards[3].rank &&
    @cards[3].rank == @cards[4].rank 
    
    
    @hand_type = THREE_OF_A_KIND
    
    
  # two pair, HIGH
    elsif @cards[0].rank== @cards[1].rank &&
    @cards[3].rank == @cards[4].rank
    
    
    @hand_type = TWO_PAIR
    
    # two pair, LOW
    elsif @cards[1].rank== @cards[2].rank &&
    @cards[3].rank == @cards[4].rank
    
    @hand_type = TWO_PAIR
    
    # two pair, MID
    elsif @cards[0].rank== @cards[1].rank &&
    @cards[2].rank == @cards[3].rank
    
    @hand_type = TWO_PAIR
    
  # one pair LOW
    elsif @cards[0].rank== @cards[1].rank 
    
    @hand_type = ONE_PAIR
    
    # one pair MID
    elsif @cards[1].rank== @cards[2].rank 
    
    @hand_type = ONE_PAIR
    
    # one pair MID
    elsif @cards[2].rank== @cards[3].rank 
    
    @hand_type = ONE_PAIR
    
    # one pair HIGH
    elsif @cards[3].rank== @cards[4].rank 
    
    @hand_type = ONE_PAIR
    
  # Case for classifying no pair.
    else
    
    @hand_type = NO_PAIR
    
    end
  end
end