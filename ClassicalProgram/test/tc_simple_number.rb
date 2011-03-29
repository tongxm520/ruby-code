require "../lib/simple_number"
require "test/unit"
 
class TestSimpleNumber < Test::Unit::TestCase
  def test_simple
    assert_equal(4, SimpleNumber.new(2).add(2) )
    assert_equal(6, SimpleNumber.new(2).multiply(3) )
  end

  def test_split_keywords
   keywords = ["abc","abc1","abc2","abc3","abc4","abc5","abc6","abc7","abc8","abc9"]
   puts SimpleNumber.split_keywords(keywords, 4).inspect
   puts SimpleNumber.split_keywords(keywords, 3).inspect   
   puts SimpleNumber.split_keywords(keywords, 2).inspect
  end
end

#ruby tc_simple_number.rb
#Loaded suite tc_simple_number
#Started
#.
#Finished in 0.001185 seconds.
#1 tests, 2 assertions, 0 failures, 0 errors


