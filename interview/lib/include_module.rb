module A
  def hello
    puts "hello: #<#{self.class}:0x#{self.object_id.to_s(16)}>"
  end
end

module B
  include A
  def say
    hello
    puts "say: #<#{self.class}:0x#{self.object_id.to_s(16)}>"
  end
end

Test=Class.new
Test.send(:include,A)
#Test.new.send(:include,A) => undefined method `include'
Test.new.hello

Test2=Class.new
Test2.send(:include,B)
Test2.new.say

