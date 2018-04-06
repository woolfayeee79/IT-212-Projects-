# Megan Woolschlager
# IT 212
# Assert 4 value cards that will be equal to -1, 1, and 0
# Require CardSpaceship
require "./CardSpaceship"
require "minitest/autorun"

class TestClass < MiniTest::Test

  def test_1
    c1 = Card.new(8,"S")
    c2 = Card.new(13,"D")
    c3 = Card.new(10,"H")
    c4 = Card.new(13,"C")
    assert_equal -1, c1 <=> c2
    assert_equal 1, c2 <=> c3
    assert_equal 0, c2 <=> c4
  end
  
end