#encoding:utf-8
# To change this template, choose Tools | Templates
# and open the template in the editor.

class Person
  attr_accessor :name,:age

  def say_hello
    puts "你好，我是#{self.name}"
  end
  def say_age
    puts "我的年龄是#{self.age}"
  end
end
class Man <Person
  def sex
     "男"
  end
  def say_sex
    puts "我的性别是#{self.age}"
  end

  def say_hello
     super
     say_age
     say_sex
  end
end

 man=Man.new
 man.name="张三"
 man.age=20
 man.say_hello