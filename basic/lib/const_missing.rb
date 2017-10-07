class Module
  def const_missing(name)
    match=/^ASCII_FOR_([A-Z]|[a-z])$/.match(name.to_s) #使用正则表达式对没有定义的常数名进行匹配
    puts match.class
    if match      #如果符合ASCII_*的字母的形式则返回相应的ASCII码
      puts match[1]
      return match[1][0]
    else           #否则依然报错
      raise NoMethodError
    end
  end
end

puts ASCII_FOR_A
puts ASCII_FOR_z
