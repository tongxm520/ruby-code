EPSILON =0.001
def sqrt(integer)
  raise TypeError, "Integer argument expected" if not integer.is_a? Integer
  raise ArgumentError, "Expected argument >= 0. Got #{integer}" if integer < 0
  guess=1.0
  until (guess*guess - integer).abs < EPSILON  do
    guess = (integer/guess+guess)/2      #平均衰减
  end
  guess
end

puts "平方根为：#{sqrt(5)}"


