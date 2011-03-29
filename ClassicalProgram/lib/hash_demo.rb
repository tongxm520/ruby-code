hash=Hash.new
#%w{},%w[],%w<>有相同的效果
%w(cat dog wombat).each_with_index {|item,index|
  hash[item]=index
}
puts hash.inspect



hash={:one=>1,:two=>2,:three=>3}
reverse_hash=Hash.new
hash.each do |key,value|
  reverse_hash[value]=key
end
p reverse_hash

array=hash.to_a
reverse_array= array.collect {|a| a.reverse}#array.map {|a| a.reverse}
puts "array:#{array.inspect}"
puts "reverse_array:#{reverse_array.inspect}"

hash.methods.each do |m|
  puts m
end