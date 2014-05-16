#时间复杂度：O(n*n)
def bubble_sort(a)
  len=a.length
  change=true #交换标志默认为true
  i=len-1     #n个数最多只需要n-1趟冒泡
  while i>=1&&change
    change=false #假设本趟没有发生交换
    j=0
    while j<i
      if(a[j]>a[j+1]) #交换相邻的两个元素，发生交换，交换标志为true
        a[j],a[j+1]=a[j+1],a[j]
        change=true
      end
      j+=1
    end
    i-=1 
  end
  a
end


def bubbleSort(array)
  return array if array.size <2
  change=true
  (array.size-2).downto(0) do |i|
    break unless change
    change=false
    (0..i).each do |j|
      if array[j]>array[j+1]
        array[j],array[j+1]=array[j+1],array[j]
        change=true
      end
    end
  end
  array
end

a = [87,78,34,32,24,54,47,77,12,6,78,67]
bubble_sort(a)
require 'pp'
pp a
b=[87,23,35,46,24,33,3,9,15,11,37]
bubbleSort(b)
pp b
c=[1,2,4,6,23,35,35,39]
bubbleSort(c)
pp c


