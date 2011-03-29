def parse(i)
  raise TypeError, "Positive integer argument required." unless i =~ /^\d+$/
  arr = []
  i = i.to_i
  return [0] if i.zero?
  count = 0
  arr << (i & 1) if i & 1 == 1
  while true
    i = i >> 1 
    break if i.zero?
    count += 1
    num = i & 1
    arr << to2power(count) if num == 1
  end
  arr
end

def to2power(n)
  1 << n
end

puts "please input a integer:"
i = gets
a = parse(i)
puts a.inspect
puts "the sum of array:#{a.inject {|e, sum| sum + e}}"
