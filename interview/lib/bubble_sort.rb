def bubble_sort(a)
  len=a.length
  change=true #交换标志默认为true
  i=len-1     #n个数最多只需要n-1趟冒泡
  while i>=1&&change
    change=false #假设本趟没有发生交换
    j=0
    while j<i
      if(a[j]>a[j+1]) #交换相邻的两个元素，发生交换，交换标志为true
        temp=a[j]
        a[j]=a[j+1]
        a[j+1]=temp
        change=true
      end
      j+=1
    end
    i-=1 
  end
  a
end

puts bubble_sort([87,78,34,32,24,54,47,77,12,6,78,67]).inspect
