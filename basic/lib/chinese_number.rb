#encoding:utf-8
#Range可以创建自定义对象的序列，但必须提供<=>和succ的方法

class ChineseNumber
  Numbers=["一","二","三","四","五","六","七","八","九","十"]
  attr :chinese_number

  def initialize(value)
    if Numbers.include?(value)
      @chinese_number=value
    else
      raise "数字不正确！"
    end
  end

  def to_num
    (Numbers.index(@chinese_number)+1)  if @chinese_number
  end

  def to_s
    @chinese_number
  end

  def succ
    raise(IndexError,"超出了数字范围！") if self.to_num>=10
    ChineseNumber.new(Numbers[self.to_num])
  end

  def <=>(other)
    self.to_num<=>other.to_num
  end

  def self.create(val)
    ChineseNumber.new(val)
  end
end

one=ChineseNumber.create("一")
ten=ChineseNumber.create("十")
puts "#{one} =>#{one.to_num}"
puts "#{one}的下一个是#{one.succ}"

range=one..ten
puts range.include?(ChineseNumber.create("三"))
range.each {|i| puts i}