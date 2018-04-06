# IT212 
# you will need 11 diffent tests for each hand, google card hands to help with the tests
# Require PokerHand.rb and Constants.rb 
require "./PokerHand"
require "./Constants"
require "minitest/autorun"

class TestClass < MiniTest::Test
include Constants
  def test_1
    # Case where four of a kind < kicker.
    arr1 = [ Card.new(9, "C"), Card.new(9, "S"),
         Card.new(9, "H"), Card.new(9, "D"),
         Card.new(11, "S")]
    ph1 = PokerHand.new(arr1)
    ph1.classify
    assert_equal FOUR_OF_A_KIND, ph1.hand_type

  # Case where four of a kind > kicker.
    arr2 = [  Card.new(3, "S"), Card.new(13, "C"), 
            Card.new(13, "S"), Card.new(13, "H"), 
            Card.new(13, "D") ]

    ph2 = PokerHand.new(arr2)
    ph2.classify
    assert_equal FOUR_OF_A_KIND, ph2.hand_type
    
    # This is checking for a flush set all suit same, and diffent card types.
    arr3 = [  Card.new(3, "S"), Card.new(11, "S"), 
            Card.new(5, "S"), Card.new(8, "S"), 
            Card.new(10, "S") ]

    ph3 = PokerHand.new(arr3)
    ph3.classify
    assert_equal FLUSH, ph3.hand_type
    
    # This is checking for a FULL HOUSE type, set 3 different matching cards of another rank and two matching of another
    
    arr4 = [  Card.new(3, "S"), Card.new(13, "S"), 
            Card.new(3, "S"), Card.new(13, "H"), 
            Card.new(13, "H") ]

    ph4 = PokerHand.new(arr4)
    ph4.classify
    assert_equal FULL_HOUSE, ph4.hand_type
    
    arr5 = [  Card.new(14, "D"), Card.new(13, "S"), 
            Card.new(14, "S"), Card.new(13, "H"), 
            Card.new(13, "D") ]

    ph5 = PokerHand.new(arr5)
    ph5.classify
    assert_equal FULL_HOUSE, ph5.hand_type
    
    
    arr6 = [  Card.new(2, "D"), Card.new(3, "C"), 
            Card.new(4, "S"), Card.new(5, "D"), 
            Card.new(6, "C") ]

    ph6 = PokerHand.new(arr6)
    ph6.classify
    assert_equal STRAIGHT, ph6.hand_type
    
    arr7 = [  Card.new(5, "C"), Card.new(6, "C"), 
            Card.new(7, "C"), Card.new(8, "C"), 
            Card.new(9, "C") ]

    ph7 = PokerHand.new(arr7)
    ph7.classify
    assert_equal STRAIGHT_FLUSH, ph7.hand_type
    
    arr8 = [  Card.new(10, "H"), Card.new(10, "D"), 
            Card.new(10, "C"), Card.new(11, "S"), 
            Card.new(14, "D") ]

    ph8 = PokerHand.new(arr8)
    ph8.classify
    assert_equal THREE_OF_A_KIND, ph8.hand_type
    
    arr9 = [  Card.new(1, "H"), Card.new(10, "D"), 
            Card.new(10, "C"), Card.new(10, "S"), 
            Card.new(14, "D") ]

    ph9 = PokerHand.new(arr9)
    ph9.classify
    assert_equal THREE_OF_A_KIND, ph9.hand_type
    
    arr13 = [  Card.new(1, "H"), Card.new(14, "D"), 
            Card.new(10, "C"), Card.new(10, "S"), 
            Card.new(10, "D") ]

    ph13 = PokerHand.new(arr13)
    ph13.classify
    assert_equal THREE_OF_A_KIND, ph13.hand_type
    
    arr10 = [  Card.new(10, "H"), Card.new(10, "C"), 
            Card.new(7, "S"), Card.new(7, "S"), 
            Card.new(3, "H") ]

    ph10 = PokerHand.new(arr10)
    ph10.classify
    assert_equal TWO_PAIR, ph10.hand_type
    
    @hand_type = TWO_PAIR
    
    arr11 = [  Card.new(5, "S"), Card.new(5, "C"), 
            Card.new(9, "D"), Card.new(10, "S"), 
            Card.new(8, "H") ]

    ph11 = PokerHand.new(arr11)
    ph11.classify
    assert_equal ONE_PAIR, ph11.hand_type
    
    @hand_type = ONE_PAIR
    
    arr14 = [  Card.new(1, "S"), Card.new(5, "C"), 
            Card.new(5, "D"), Card.new(10, "S"), 
            Card.new(8, "H") ]

    ph14 = PokerHand.new(arr14)
    ph14.classify
    assert_equal ONE_PAIR, ph14.hand_type
    
    @hand_type = ONE_PAIR
    
    arr15 = [  Card.new(1, "S"), Card.new(2, "C"), 
            Card.new(5, "D"), Card.new(5, "S"), 
            Card.new(8, "H") ]

    ph15 = PokerHand.new(arr15)
    ph15.classify
    assert_equal ONE_PAIR, ph15.hand_type
    
    @hand_type = ONE_PAIR
    
    arr16 = [  Card.new(1, "S"), Card.new(2, "C"), 
            Card.new(3, "D"), Card.new(5, "S"), 
            Card.new(5, "H") ]

    ph16 = PokerHand.new(arr16)
    ph16.classify
    assert_equal ONE_PAIR, ph16.hand_type
    
    @hand_type = ONE_PAIR
    
    arr12 = [  Card.new(11, "S"), Card.new(5, "C"), 
            Card.new(9, "D"), Card.new(10, "S"), 
            Card.new(8, "H") ]

    ph12 = PokerHand.new(arr12)
    ph12.classify
    assert_equal NO_PAIR, ph12.hand_type
    
    @hand_type = NO_PAIR
    
        
  end
  
end