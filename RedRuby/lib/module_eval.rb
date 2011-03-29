# To change this template, choose Tools | Templates
# and open the template in the editor.

class String  #动态地向类中添加方法
  def truncate(n)       #将字符串截取为指定的长度并加上省略号，这个功能经常用在标题的显示中
    self[0,n]+(self.size>n ? "..." : "")
  end

  for i in[5,8,10,20]
    module_eval "def truncate_#{i}
    truncate #{i}
    end"
  end
end
puts "abcdefg".truncate(2)
puts "abcdefg".truncate_5
puts "abcdefg".truncate_10