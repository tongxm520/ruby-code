# To change this template, choose Tools | Templates
# and open the template in the editor.

y,z=10,0
begin
  x=y/z
  puts x
rescue ZeroDivisionError
  z=1
  puts "process the exception"
  retry    #重复执行整个begin/end块
rescue => err
  puts err
end
