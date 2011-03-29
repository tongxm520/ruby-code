#encoding:utf-8
# To change this template, choose Tools | Templates
# and open the template in the editor.

class MyClass
  @@instant_object_count=0  #类变量
  def self.object_count       #类方法，返回MyClass实例的数量
    @@instant_object_count
  end

  def object_index    #返回实例对象的序号
    @instant_object_index
  end

  def object_count   #实例方法，返回MyClass实例的数量
   @@instant_object_count
  end

  def initialize
    @@instant_object_count+=1
     @instant_object_index=@@instant_object_count
  end
end
my_class1=MyClass.new
puts "现在有#{MyClass.object_count}个MyClass实例"
my_class2=MyClass.new
puts "现在有#{MyClass.object_count}个MyClass实例"
puts "my_class1的序号为#{my_class1.object_index},共有#{my_class1.object_count}个实例对象"
puts "my_class2的序号为#{my_class2.object_index},共有#{my_class1.object_count}个实例对象"
