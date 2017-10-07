class Sequence
  include Enumerable
  def initialize(from, to, by)
    @from, @to, @by = from, to, by
  end

  def each
    x = @from         
    while x <= @to 
      yield x       
      x += @by
    end
  end

  # Define the length method (following arrays) to return the number of
  # values in the sequence
  def length
    return 0 if @from > @to      
    Integer((@to-@from)/@by) + 1 
  end

  # Define another name for the same method.
  # It is common for methods to have multiple names in Ruby
  alias size length
  # Override the array-access operator to give random access to the sequence
  def[](index)
    return nil if index < 0 # Return nil for negative indexes
    v = @from + index*@by   # Compute the value
    if v <= @to             # If it is part of the sequence
      v                     # Return it
    else                    # Otherwise...
      nil                   # Return nil
    end
  end

  # Override arithmetic operators to return new Sequence objects
  def *(factor)
    Sequence.new(@from*factor, @to*factor, @by*factor)
  end

  def +(offset)
    Sequence.new(@from+offset, @to+offset, @by)
  end
end

s = Sequence.new(1, 10, 2)   # From 1 to 10 by 2's
s.each {|x| print"#{x} " }   # Prints "13579"
print "\n"
print s[s.size-1]            # Prints 9
print "\n"
t = (s+1)*2                  # From 4 to 22 by 4's
t.each do |x|
  print "#{x} "
end
puts
   

