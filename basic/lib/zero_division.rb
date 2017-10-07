y,z=10,0
begin
  x=y/z
  puts x
rescue ZeroDivisionError
  z=1
  puts "process the exception"
  retry
rescue => err
  puts err
end


