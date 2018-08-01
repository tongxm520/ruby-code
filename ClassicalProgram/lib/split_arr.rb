class Array
  def split_arr(_min_len)
    return [] if self.empty?
    len = self.length 
    return [self] if len <= _min_len
    new_arr=[]
    parts = len/_min_len
    i=1
    while i <= parts
      _arr=[]
      j=_min_len*(i-1)
      k=0
      while j< _min_len*i
        _arr[k] = self[j]
        j+=1
        k+=1
      end
      new_arr << _arr
      i+=1
    end

    if j < len
      new_arr << self[j..-1]
    end
    new_arr
  end
end



a=[243,3434,456,667,776,556,4556,433,888,565,4,5,3,234,90,23]
puts a.inspect
puts a.split_arr(3).inspect
puts a.split_arr(2).inspect
puts a.split_arr(1).inspect
puts a.split_arr(16).inspect
puts [[33,55,89],nil,[456,66,98,45],45,22,43,21,nil].flatten!.compact!.inspect

