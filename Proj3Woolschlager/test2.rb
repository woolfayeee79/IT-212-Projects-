# Megan Woolschlager
# IT212
# Card Example
# Source code file Test2.rb
# Test the UnitTest for card and deck.rb files class with unit tests.

require './Card'
require './Deck'
require 'minitest/autorun'

class TestCard < MiniTest::Test
  #write a method that checks the 8 of spades and color.
  
  def test_card
    c1 = Card.new(8, "S")
    assert_equal "8S", c1.to_s
    assert_equal 8, c1.rank
    assert_equal "S", c1.suit
    assert_equal "black", c1.color
  end
  #write a method that checks the red cards for example the king of diamonds 
  
  def test_card2
    c2 = Card.new(13, "D")
    assert_equal "KD", c2.to_s
    assert_equal 13, c2.rank
    assert_equal "D", c2.suit
    assert_equal "red", c2.color
  
  end
  #write a method that takes the deck and removes cards when a card is dealed,added to bottom, and added to top
  
  def test_deck
    d = Deck.new()
    assert_equal 52, d.count
    c = d.deal
    assert_equal 51, d.count 
    
    c = Card.new(13, "H")
  
    d.add_to_bottom(c)
    assert_equal 52, d.count 

    d.add_to_top(c)
    assert_equal 53, d.count
    
    assert_equal false, d.empty?
    
  end
    
end