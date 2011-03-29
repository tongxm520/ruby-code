# To change this template, choose Tools | Templates
# and open the template in the editor.

a=[344,44,6,75,565,555]
i=0
minimum=a[0]
while i<a.size-1 do
minimum = if a[i]<minimum then a[i] else minimum end
i+=1
end
print minimum
puts

puts 1 + 2                   # => 3: addition
puts 1 * 2                   # => 2: multiplication
puts 1 + 2 == 3              # => true: == tests equality
puts 2 ** 1024               # 2 to the power 1024: Ruby has arbitrary size ints
puts "Ruby" + " rocks!"      # => "Ruby rocks!": string concatenation
puts "Ruby! " * 3            # => "Ruby! Ruby! Ruby! ": string repetition
puts "%d %s" % [3, "rubies"] # => "3 Rubies": Python-style, printf formatting
x=3;y=5
puts  x> y ? x : y  # The conditional operator

puts "I am "<<"TongXiaoming"
puts 2<<8
puts "I am "+"TongXiaoming"
puts "tong"*3


def square(x)
  x*x
end
puts square(7)

#When a method, like the one above, is defined outside of a class or a module, it is
#effectively a global function rather than a method to be invoked on an object. (Tech-
#nically, however, a method like this becomes a private method of the Object class.)
#Methods can also be defined on individual objects by prefixing the name of the method
#with the object on which it is defined. Methods like these are known as singleton
#methods, and they are how Ruby defines class methods:
def Math.square(x) # Define a class method of the Math module
  x**x
end
puts Math.square(3)




