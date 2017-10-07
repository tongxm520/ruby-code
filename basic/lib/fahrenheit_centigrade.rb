print "Please enter a temperature and scale(C or F):"
str=gets
exit if str.nil? or str.empty?
str.chomp! #删除结尾的换行符
temp,scale=str.split(" ")

abort "#{temp} is not a valid number." if temp !~ /-?\d+/

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

#print,exit,abort,gets,puts都是global function



