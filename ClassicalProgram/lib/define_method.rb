#--------------------------------------------------- Module#define_method
#     define_method(symbol, method)     => new_method
#     define_method(symbol) { block }   => proc
#------------------------------------------------------------------------
#     Defines an instance method in the receiver. The _method_ parameter
#     can be a +Proc+ or +Method+ object. If a block is specified, it is
#     used as the method body. This block is evaluated using
#     +instance_eval+, a point that is tricky to demonstrate because
#     +define_method+ is private. (This is why we resort to the +send+
#     hack in this example.)

class A
  def fred
    puts "In Fred"
  end

  def create_method(name, &block)
    self.class.send(:define_method, name, &block)
  end

  define_method(:wilma) { puts "Charge it!" }
end

class B < A
  define_method(:barney, instance_method(:fred))
end

a = B.new
a.barney
a.wilma
a.create_method(:betty) { p self }
a.betty


