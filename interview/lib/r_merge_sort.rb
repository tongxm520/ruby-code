def merge(left, right)
	final = []
	until left.empty? or right.empty?
		final << ( left.first < right.first ? left.shift : right.shift )
	end
	final + left + right
end

def mergeSort(array)
	return array if array.size < 2
	left = array.first(array.size/2)
	right = array.last(array.size - array.size/2)
	merge(mergeSort(left), mergeSort(right))
end


