#在Ruby中，序列化也称为marshaling，使用Marshal类R可以把一个对象转换成字节流，并把它存在应用程序外。
#这样保存的对象可以在以后被其它的实例或者其它的程序读取使用。
#可以使用Marshal类的dump方法保存对象，以后使用load可以读取以保存的这个对象

class Rectangle
  def initialize(length,width)
    @length,@width,@area=length,width,length*width
  end

  def to_s
    "#@length #@width #@area"
  end
end

obj=Rectangle.new(10,20)
puts "Before:obj=#{obj}"
data=Marshal.dump(obj)
obj2=Marshal.load(data)
puts "After:obj2=#{obj2}"
puts obj2.inspect