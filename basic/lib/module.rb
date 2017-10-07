module MyModule
  def self.module_function
    self.show
  end

  def self.show
    puts "This is a method of the module"
  end

  def function
    show
  end

  private
  def show
    puts "invoke function"
  end
end

module MyModule
  CONST="This is a constant of the module"

  module MySubModule
    CONST="This is a constant of the submodule"
  end
end

class MyClass
  include MyModule
end

puts MyModule.class
MyModule.module_function
MyModule::module_function

p MyModule::CONST
p MyModule::MySubModule::CONST
my_class=MyClass.new
my_class.function


