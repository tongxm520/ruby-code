#时间复杂度：O(N*log(N))
#divide and conquer

def merge_sort(list)
  #list: ref to array obj,similar to pointer 
  unless list.is_a?(Array) and list.all? {|i| i.is_a? Integer}
    raise ArgumentError,"args must be a Array only with integers!" 
  end
  len=list.size
  temp = Array.new(len)
  rec_merge_sort(list,temp, 0, len-1)
  list
end

def rec_merge_sort(list,temp,lower,upper)
  return if(lower == upper)
  mid = (lower+upper) / 2   # find midpoint
  rec_merge_sort(list, temp, lower, mid)   # sort lower half
  rec_merge_sort(list, temp, mid+1, upper) # sort upper half
  merge(list, temp, lower, mid+1, upper)
end 

def merge(list ,temp,start,off,upper)
  j = 0
  lower = start
  mid = off-1
  n = upper-lower+1
  
  while(start <= mid && off <= upper)
    if( list[start] < list[off] )
      temp[j] = list[start]
      j+=1;start+=1
    else
      temp[j] = list[off]
      j+=1;off+=1
    end
  end
  
  while(start <= mid)
    temp[j] = list[start]
    j+=1;start+=1
  end
  
  while(off <= upper)
    temp[j] = list[off]
    j+=1;off+=1
  end
  
  for j in 0..n-1 do 
    list[lower+j] = temp[j]
  end
end

list=[34,23,21,33,49,87,5,77,43,11,37,90,29,67,57]
puts "before sort:"
puts list.inspect
puts "after sort:"
merge_sort(list)
puts list.inspect





