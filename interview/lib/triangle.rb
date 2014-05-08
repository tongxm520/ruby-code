class YangHuiTriangle
  def initialize(row)
    @row=row
    @temp = [1]
  end

  def triangle
    print_current
    if @temp.length<@row
      construct_next
      triangle
    end
  end

  def print_current
    @temp.each do |x|
      print x.to_s + ' '
    end
    puts
  end

  def construct_next
    arr=@temp
    num=arr.length
    @temp=Array.new(num+1)
    0.upto(num) do |x|
      if x==0
        @temp[0]=1
      elsif x==num
        @temp[num]=1
      else
        @temp[x]=arr[x-1]+arr[x]
      end
    end
    @temp
  end
end

a=YangHuiTriangle.new(18)
a.triangle
