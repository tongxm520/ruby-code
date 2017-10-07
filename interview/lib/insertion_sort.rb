module InsertionSort
	def self.sort!(keys)
		for i in 1..(keys.length - 1)
		  value = keys[i]
		  j = i - 1
		  while j >= 0 and keys[j] > value
		    keys[j+1] = keys[j] 
		    j-= 1
		  end
		  keys[j+1] = value
		end
	end
end

a=20.times.map {50+Random.rand(1001)}
puts a.inspect
InsertionSort.sort!(a)
puts a.inspect


