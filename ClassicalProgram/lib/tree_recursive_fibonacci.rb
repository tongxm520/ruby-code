def fibonacci(integer)
  raise "the input must be a integer!" if integer.class!=Fixnum
  raise "the input must be a positive integer!" if integer<0
  return integer if integer<2
  fibonacci(integer-1) + fibonacci(integer-2)
end

(0..10).each do |e|
  puts fibonacci(e)
end
#puts fibonacci("abc")
puts fibonacci(-3)