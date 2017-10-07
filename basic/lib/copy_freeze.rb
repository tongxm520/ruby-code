#encoding:utf-8

class Module
  def readonly *syms
    return if syms.size==0
    code=""
    syms.each do |s|
    code<<"def #{s};@#{s};end \n"
    end
    class_eval code
  end

  def readwrite *syms
    return if syms.length==0
    code=""
    syms.each do |s|
      code<<"def #{s};@#{s};end \n"
      code<<"def #{s}= value;@#{s}=value;end \n"
    end
    class_eval code
  end
end

class MyClass
  readonly :stu_id         #参数必须是Symbol
  readwrite :name,:gender
  def initialize(stu_id)
    @stu_id=stu_id
  end
end

c1=MyClass.new("34355")
c1.name="童小明"
c1.gender="男"
c2=c1
puts "c1.name=#{c1.name}"
puts "c2.name=#{c2.name}"
puts "c1与c2引用的都是相同的对象"

a=13;b=a;a=35
puts "a=#{a}";puts "b=#{b}";puts "而数字，字符串在赋值的时候会自动进行值赋值操作，不会出现上述问题"

c3=MyClass.new("25435")
c3.gender="女"
def c3.new_method
  puts "变量c3的新方法"
end

c4=c3.dup
c5=c3.clone
c3.gender="男"
puts "c3.gender=#{c3.gender}"
puts "c4.gender=#{c4.gender}"
puts "c5.gender=#{c5.gender}"
c3.new_method
c4.new_method
c5.new_method    #error
