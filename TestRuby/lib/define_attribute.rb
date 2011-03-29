# To change this template, choose Tools | Templates
# and open the template in the editor.

class MyClass
  attr_accessor :attr1     #可读写
  attr_reader:attr3        #只读
  attr_writer:attr4        #只写
  attr:attr5               
  attr:attr6,false         #只读
  attr:attr7,true          #可读写

  def attr2               #相当于get方法
   @attr2
  end
  
  def attr2=(value)      #相当于set方法
    @attr2=value
  end
  
end

my_class=MyClass.new

my_class.attr1="attr1"
puts my_class.attr1

my_class.attr2="attr2"
puts my_class.attr2

my_class.attr3="attr3"
puts my_class.attr3

my_class.attr4="attr4"
puts my_class.attr4

my_class.attr5="attr5"
puts my_class.attr5

my_class.attr6="attr6"
puts my_class.attr5

my_class.attr7="attr7"
puts my_class.attr7