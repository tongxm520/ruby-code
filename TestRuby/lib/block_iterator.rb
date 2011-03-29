# To change this template, choose Tools | Templates
# and open the template in the editor.

#3.times { print "Ruby! " }
#print("\n")
#1.upto(9) {|x| print x }
#print("\n")
#a = [3, 2, 1]
#a[3] = a[2] - 1
#
#a.each do |elt|
#  print elt+1
#end

# an iterator named each, which invokes the associated block
# once for each element in the array. Each invocation of the block is passed a single
# element from the array

a= [1,2,3,4]               # Start with an array
b = a.map {|x| x*x }       # Square elements: b is [1,4,9,16]
c = a.select {|x| x%2==0 } # Select even elements: c is [2,4]
print c
puts "\n"

sum = a.inject(10) do |sum,x|        # Compute the sum of the elements => 10
  sum + x
end
puts sum

puts "\n"
c.each do |elt|
  print elt
end

puts "\n"
b.each do |elt|
  print elt
end
puts #clear buffer




