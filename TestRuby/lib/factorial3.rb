# Define a method named 'factorial' with a single parameter 'n'
def factorial(n)
  if n < 1                # Test the argument value for validity
    raise "argument must be > 0"
  elsif n == 1            # If the argument is 1
    1                     # then the value of the method invocation is 1
  else                    # Otherwise, the factorial of n is n times
    n*factorial(n-1)    # the factorial of n-1
  end
end

puts factorial(5)
puts factorial(0)