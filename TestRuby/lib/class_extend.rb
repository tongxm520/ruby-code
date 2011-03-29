# To change this template, choose Tools | Templates
# and open the template in the editor.

#扩展实例方法
class Fixnum
  #添加一个实例方法
  def speak
    puts "我的值是#{self}"
  end

  #覆盖旧的abs方法
  def abs
    puts "abs不能用了"
  end
end
#扩展类方法
def Fixnum.say_hello
  puts "Hello!"
end
#批量扩展类方法
class << Fixnum
  def say_hello_again
    puts "Hello again!"
  end
end
1.speak                                #输出我的值是1
-1.abs                                 #输出abs不能用了
Fixnum.say_hello                       #输出Hello!
Fixnum.say_hello_again