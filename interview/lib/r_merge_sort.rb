def merge(left, right)
  final = []
  until left.empty? or right.empty?
    final << ( left.first < right.first ? left.shift : right.shift )
  end
  # puts (final + left + right).inspect
  final + left + right
end

def mergeSort(arr)
  len=arr.size;mid=len/2
  return arr if len < 2
  left = arr.first(mid)
  right = arr.last(len-mid)
  merge(mergeSort(left), mergeSort(right))
end

require 'pp'
if __FILE__==$0
  l=[23,35,47,55,58,90]
  r=[10,19,24,29,37,40,48,55,57,80,100,103,120,126]
  pp l
  pp r
  puts merge(l,r).inspect
  puts

  a=20.times.map{30+Random.rand(1001) }
  puts a.inspect
  puts mergeSort(a).inspect
end
