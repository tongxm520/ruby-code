module SelectionSort
  def self.sort!(keys)
    for i in 0..keys.size-2
      min = i
      for j in i+1..keys.size-1
        min = j if keys[j] < keys[min]
      end
      keys[i], keys[min] = keys[min], keys[i]
    end
    keys
  end
end

a=20.times.map {50+Random.rand(1001)}
puts a.inspect
SelectionSort.sort!(a)
puts a.inspect

