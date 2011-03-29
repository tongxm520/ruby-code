# To change this template, choose Tools | Templates
# and open the template in the editor.

a="abc"
case a.class.name
when "String"
  puts "a is String."
when "Fixnum","Bignum","Float"
  puts "a is Number."
when "Array"
  puts "a is Array."
else
  puts "a is #{a.class.name}"
end
puts "\n"


# Take different actions depending on the class of x
x=445
puts case x
     when String then "string"
     when Numeric then "number"
     when TrueClass, FalseClass then "boolean"
     else "other"
     end

puts "\n"
# Compute 2006 U.S. income tax using case and Range objects
income=30000
tax = case income
      when 0..7550
         income * 0.1
      when 7550..30650
         755 + (income-7550)*0.15
      when 30650..74200
         4220 + (income-30655)*0.25
      when 74200..154800
         15107.5 + (income-74201)*0.28
      when 154800..336550
         37675.5 + (income-154800)*0.33
      else
         97653 + (income-336550)*0.35
      end

puts tax


def has_value?(x)      # Define a method named hasValue?
  case x              # Multiway conditional based on value of x
  when nil, [], "", 0 # if nil===x || []===x || ""===x || 0===x then
    false             #   method return value is false
  else                # Otherwise
    true              #   method return value is true
  end
end

puts has_value?(97)

# Get user's input and process it, ignoring comments and exiting
# when the user enters the word "quit"
while line=gets.chomp do # Loop, asking the user for input each time
  case line
  when /^\s*#/            # If input looks like a comment...
       next               #   skip to the next line.
  when /^quit$/i          # If input is "quit" (case insensitive)...
    break                 #   exit the loop.
  else                    # Otherwise...
    puts line.reverse     #   reverse the user's input and print it.
  end
end




