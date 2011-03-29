# To change this template, choose Tools | Templates
# and open the template in the editor.

class Point
  def initialize(x,y)
    @x=x;@y=y
  end

  
  def x
    @x
  end

  
  def y#不能用protected修饰
    @y
  end
end

class Line
  def initialize(a,b,c)
    @a=a;@b=b;@c=c
  end
  def distance(point)
     (@a*point.x+@b*point.y+@c)/Math.sqrt(@a**2+@b**2)
  end
end

p=Point.new(1,1)       #系统自动调用initialize
l=Line.new(3,4,5)
puts l.distance(p)
