#encoding:utf-8
chars = "hello world".tap {|x| puts "original object: #{x.inspect}"}\
.each_char.tap {|x| puts "each_char returns: #{x.inspect}"}\
  .to_a.tap {|x| puts "to_a returns: #{x.inspect}"}\
  .map {|c| c.succ } .tap {|x| puts "map returns: #{x.inspect}" }\
  .sort.tap {|x| puts "sort returns: #{x.inspect}"}
puts "char最后的值为："
puts chars



