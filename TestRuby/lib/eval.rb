#encoding:utf-8
a=1;b="true";c="false"
str ="if a==1 then puts '输出#{b}' else  puts '输出#{c}' end"
eval(str)
##有时候要一组字符串能够动态地执行，ruby中的eval方法就提供了这样的功能