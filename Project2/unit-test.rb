# Filename: unit-test.rb
require "./frame-score"
require "minitest/autorun"
class TestClass < MiniTest::Test
  def test_1
    assert_equal 9,  frame_score([7, 2], 0, 0)
    assert_equal 18, frame_score([9, 1], 8, 0)
    assert_equal 26, frame_score([10], 10, 6)
  end
end