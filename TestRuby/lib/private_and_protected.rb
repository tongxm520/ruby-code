# To change this template, choose Tools | Templates
# and open the template in the editor.

class MyClass2
  def initialize(name)
    @name=name
  end

  def compare(c)
    c.name==@name
  end

  protected     #换成private即会报错
  def name
    @name
  end
end

a=MyClass2.new("a")
b=MyClass2.new("b")
puts a.compare(b)

