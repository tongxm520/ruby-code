# To change this template, choose Tools | Templates
# and open the template in the editor.
#通过下面的手段我们可以实现多继承的功能，这样的模块我们称为mixin

module Debug
  def print_info
    print "Class:#{self.class.name} Object ID:#{self.object_id}\n"
  end
end

class Class1
  include Debug
  #...
end

class Class2
  include Debug
  #...
end

a=Class1.new
b=Class2.new
a.print_info
b.print_info
puts