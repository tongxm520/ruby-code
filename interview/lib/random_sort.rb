module RandomSort 
  class << self
    def sort(seed)		  
      len = seed.count	   
		  result= []  
      _len = len
      len.times do |i|        
        r = rand(_len)
        result[i] = seed[r]        
        seed.delete_at(r)
        _len -= 1
      end
      result   
		end
  end
end
	
seed = Array(100..120) 	
puts RandomSort.sort(seed).inspect

puts Array(100..120).shuffle.inspect  #random sort


