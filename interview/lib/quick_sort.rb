#从数列中挑出一个元素，称为 "基准"（pivot），重新排序数列，所有元素比基准值小的摆放在基准前
#面，所有元素比基准值大的摆在基准的后面（相同的数可以到任一边）。在这个分区退出之后，该基准就处于数列的中间位置。这个称为分区（partition）操作。
#递归地（recursive）把小于基准值元素的子数列和大于基准值元素的子数列排序。
#递归的最底部情形，是数列的大小是零或一，也就是永远都已经被排序好了。虽然一直递归下去，但是这个算法总会退出，因为在每次的迭代（iteration）中，它至少会把一个元素摆到它最后的位置去。
#在简单的伪代码中，此算法可以被表示为：

=begin
function quicksort(q)
  var list less, pivotList, greater
  if length(q) ≤ 1 {
     return q
 } else {
     select a pivot value pivot from q
     for each x in q except the pivot element
         if x < pivot then add x to less
         if x ≥ pivot then add x to greater
     add pivot to pivotList
     return concatenate(quicksort(less), pivotList, quicksort(greater))
 }
=end

def sort(array)
  return array if array.size < 2
  left, right = array[1..-1].partition { |y| y <= array.first }
  sort(left) + [ array.first ] + sort(right)
end

#partition {| obj | block } → [ true_array, false_array ] 
#partition → an_enumerator
#Returns two arrays, the first containing the elements of enum for which the block evaluates to true, the second containing the rest.
#If no block is given, an enumerator is returned instead.
#[].partition #=> #<Enumerator: []:partition>

#(1..6).partition {|v| v.even? }  #=> [[2, 4, 6], [1, 3, 5]]
Array.class_eval do 
  def partition
    return nil unless block_given? 
    one = self.select {|i| yield i}
    two= self-one
    return one,two
  end
end

list=[34,23,21,33,49,87,5,77,43,11,37,90,29,67,57]
puts "before sort:"
puts list.inspect
puts "after sort:"
puts sort(list).inspect







