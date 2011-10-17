module RandomSort 
  class << self
    def sort(seed)		  
      len = seed.count	   
		  result= []  
      _len = len
      len.times do |i|        
        #得到一个位置
        r = rand(_len)  
        #得到那个位置的数值
        result[i] = seed[r]        
        seed.delete_at(r)
        _len -= 1
      end
      result   
		end
  end
end
	
seed = [100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113 ,114, 115, 116, 117, 118, 119]  	
puts RandomSort.sort(seed)[0..4].inspect


