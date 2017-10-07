module MyModule
  def module_method
    puts "module_method"
  end
end

class MyClass
  include MyModule
end

class MyClassA
  extend MyModule
end

my_class=MyClass.new
my_class.module_method  #类中使用include,模context块中的方法变成了实例方法
MyClassA.module_method  #类中使用extend,模块中的方法变成了类方法

aa="123"   #所有对象都可以extend模块而获得模块中的方法
aa.extend(MyModule)
aa.module_method
