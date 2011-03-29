
# This class represents a sequence of numbers characterized by the three
# parameters from, to, and by. The numbers x in the sequence obey the
# following two constraints:
#
#     from <= x <= to
#     x = from + n*by, where n is an integer
#
class Sequence
  # This is an enumerable class; it defines an each iterator below.
  include Enumerable     # Include the methods of this module in this class
  # The initialize method is special; it is automatically invoked to
  # initialize newly created instances of the class
  def initialize(from, to, by)
    # Just save our parameters into instance variables for later use
    @from, @to, @by = from, to, by # Note parallel assignment and @ prefix
  end
  #  the Enumerable module要求有each方法
  def each
    x = @from         # Start at the starting point
    while x <= @to # While we haven't reached the end
          yield x       # Pass x to the block associated with the iterator
          x += @by      # Increment x
    end
  end
      # Define the length method (following arrays) to return the number of
      # values in the sequence
      def length
        return 0 if @from > @to       # Note if used as a statement modifier
        Integer((@to-@from)/@by) + 1 # Compute and return length of sequence
      end
      # Define another name for the same method.
      # It is common for methods to have multiple names in Ruby
      alias size length # size is now a synonym for length
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
#Here is some code that uses this Sequence class:
   s = Sequence.new(1, 10, 2)   # From 1 to 10 by 2's
   s.each {|x| print"#{x} " }        # Prints "13579"
   print "\n"
   print s[s.size-1]            # Prints 9
   print "\n"
   t = (s+1)*2                  # From 4 to 22 by 4's
   t.each do |x|
     print "#{x} "
   end
   puts
   

