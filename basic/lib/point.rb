include Enumerable,Comparable
#定义了each iterator的类可以使用Enumerable module中定义的方法,例如all?方法

class Point
  attr_reader :x,:y

  def initialize(x,y)
    @x,@y=x,y
  end

  def +(other)
    raise TypeError,"argument is not a Point." unless other.is_a? Point
    Point.new(@x+other.x, @y+other.y)
  end

  def -@ #一元正和负重定义时必须以＠结尾
    Point.new(-@x,-@y)
  end

  def *(scalar)
    Point.new(@x*scalar,@y*scalar)
  end
  
  def [](index)
    case index
    when 0,-2 then @x
    when 1,-1 then @y
    when :x,"x" then @x
    when :y,"y" then @y
    else raise TypeError,"#{index} is invalid index."
    end
  end

  def each
    i=0
    while i<2 do
      yield self.[](i)
      i+=1
    end
  end

  def ==(o)              # Is self == o?
    if o.is_a? Point     # If o is a Point object
      @x==o.x && @y==o.y # then compare the fields.
    elsif                # If o is not a Point
      false              # then, by definition, self != o.
    end
  end

  # Define an ordering for points based on their distance from the origin.
  # This method is required by the Comparable module.
	def <=>(other)
		return nil unless other.instance_of? Point
		@x**2 + @y**2 <=> other.x**2 + other.y**2
	end

  def to_s
    "(#@x,#@y)"
  end
end

p1=Point.new(2,4)
p2=Point.new(3,5)
#p3=p1*4
#p4=p1+p3+p2
#p5=-p4
#puts p5
#puts p5["x"]
#puts p5[:x]
#puts p5[0]
#puts p5[-2]
#puts p1==p2
#puts p5[5]
p1.each {|x| puts x}

puts p2.all? {|x| x==0}

p,q=Point.new(1,0),Point.new(0,1)

puts "p==q:#{p==q}"
puts "p<q:#{p<q}"
puts "p>q:#{p>q}"
print p.to_s,p.class

puts



