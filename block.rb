def gen_times
  default = 0
  puts "before yield default = #{default}"
  default = yield 12
  puts "after yield default = #{default}"
  puts "-----------"
end 
 
gen_times{|n| n + 3 }  

gen_times do |n|
  n - 5
end  

gen_times{|n| n * 5 }

gen_times{|n| n / 2 }

def add(x,y)
  x+y
end

def calculate(x,y)
  100*add(x,
  y)
end
   
puts "========#{calculate(1,1)}========" 

