# To change this template, choose Tools | Templates
# and open the template in the editor.

class Verifier
  def initialize(*words)
    @words=words
    @count=0
  end

  def verified?(string)
   for e in @words
     while(string[e])
       @count+=1
       return true
     end
   end
   return false
  end

  def match_count
    @count
  end
end

v=Verifier.new "apple","orange"
puts v.verified?("i got an apple this morning")	# => true
puts v.verified?("the oranges are delicious") 		#=> true
puts v.verified?("how about the banana?") 				#=>false
puts v.match_count																#=>2
v2=Verifier.new("dog","cat")
puts v2.verified?("there is a cat")
puts v2.verified?("there are two dogs")
puts v2.match_count
