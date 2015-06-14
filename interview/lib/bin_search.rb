#假定数组a是升序排列
#a是整数型数组  key类型为Integer
def bin_search(a,key)
  low,high=0,a.size-1
  while low <= high
    mid = (low+high)/2
    if a[mid]==key
      return mid #找到key
    elsif a[mid]>key
      high = mid-1 #到前半区段去找
    else
      low = mid+1 #到后半区段去找
    end
  end
  return -1 #找不到key
end

def rc_bin_search(a,low,high,key)
  return -1 if low>high
  mid=(low+high)/2
  if a[mid]==key
    return mid
  elsif a[mid]>key
    return rc_bin_search(a,low,mid-1,key)
  else
    return rc_bin_search(a,mid+1,high,key)
  end
end

a=19.times.map {50+Random.rand(1001)}.sort
key=a[1]
puts a.inspect
puts "key:#{key} index at=>#{bin_search(a,key)} "
key=49
puts "key:#{key} index at=>#{bin_search(a,key)} "
puts
key=a[1]
puts "key:#{key} index at=>#{rc_bin_search(a,0,a.size-1,key)} "
key=49
puts "key:#{key} index at=>#{rc_bin_search(a,0,a.size-1,key)} "



