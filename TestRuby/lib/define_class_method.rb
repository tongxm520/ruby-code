# To change this template, choose Tools | Templates
# and open the template in the editor.

class MyClass
  def self.method1
    puts "method1"
  end
  def MyClass.method2
    puts "method2"
  end
  def method3
    puts "method3"
  end
end
my_class=MyClass.new
my_class.method3

MyClass.method1
MyClass.method2

