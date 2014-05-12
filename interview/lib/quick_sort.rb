def sort(array)
  # return [] if array.empty?
  return array if array.size < 2
  left, right = array[1..-1].partition { |y| y <= array.first }
  sort(left) + [ array.first ] + sort(right)
end
#[].partition
#=> #<Enumerator: []:partition>

list=[34,23,21,33,49,87,5,77,43,11,37,90,29,67,57]
puts "before sort:"
puts list.inspect
puts "after sort:"
puts sort(list).inspect
