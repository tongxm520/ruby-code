class Array
  def for_each
    (0..self.length-1).each do |i|
      yield self[i]
    end
  end
end

(["a","b","c"]).for_each {|i| puts i}
sum=0
[1,2,3,4,5,6,7,8,9,10].for_each do |i|
  sum+=i
end
puts "sum=#{sum}"
