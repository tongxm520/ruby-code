#encoding:utf-8
# To change this template, choose Tools | Templates
# and open the template in the editor.

class Module
  def const_missing(name)
    puts "常数#{name}没有定义!"
  end

  def method_missing(name,*args)
    puts "方法#{name}没有定义!"
  end
end

puts String.unknown_method
puts String::UnknownConst