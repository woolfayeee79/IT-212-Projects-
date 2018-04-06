require "./Clock"
require "minitest/autorun"

class TestClass < MiniTest::Test
# remember that l and 1 are not the same 
  def test_1
    c1 = Clock.new(13, 8, 4)
    assert_equal "13:08:04", c1.to_s
    assert_equal 13, c1.hr
    assert_equal 8, c1.min
    assert_equal 4, c1.sec
    c1.tick
    assert_equal "13:08:05", c1.to_s
  end
  
  def test_2
    c2 = Clock.new(13, 8, 59)
    c2.tick
    assert_equal "13:09:00", c2.to_s
  end
  
  def test_3
    c3 = Clock.new(13, 59, 59)
    c3.tick
    assert_equal "14:00:00", c3.to_s
  end  
  
  def test_4
    c4 = Clock.new(23, 59, 59)
    c4.tick
    assert_equal "00:00:00", c4.to_s
  end
end