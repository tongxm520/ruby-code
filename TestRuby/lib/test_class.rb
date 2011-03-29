# To change this template, choose Tools | Templates
# and open the template in the editor.

class Myclass
end
puts Myclass.class # In Ruby, parentheses(括号) are usually optional
                   #  and they are commonly omitted（省略）, especially when the method being invoked takes no arguments.
puts Myclass.class.superclass
puts Myclass.class.superclass.superclass
puts Myclass.class.superclass.superclass.superclass

puts 1.class   # => Fixnum: the number 1 is a Fixnum
puts 0.0.class # => Float: floating-point numbers have class Float
puts true.class  # => TrueClass: true is a the singleton instance of TrueClass
puts false.class # => FalseClass
puts nil.class   # => NilClass
#任何对对象内部状态的访问必须由特定的方法来实现，例如上面的class方法

