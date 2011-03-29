# To change this template, choose Tools | Templates
# and open the template in the editor.

print "Please enter a temperature and scale(C or F):"
str=gets
exit if str.nil? or str.empty?          #判断字符串是否分配空间或者是否为空
str.chomp!                      #删除结尾的换行符
temp,scale=str.split(" ")     #以空格将str拆分成字串然后再平行赋值

abort "#{temp} is not a valid number." if temp !~ /-?\d+/  #是否与指定的模式匹配

temp=temp.to_f
case scale
when "C","c"
  f=1.8*temp+32
when "F","f"
  c=(5.0/9.0)*(temp-32)
else
  abort "Must specify C or F."
end

if f.nil?
  print "#{c} degrees C\n"
else
  print "#{f} degrees F\n"
end
#print,exit,abort,gets puts都是global function