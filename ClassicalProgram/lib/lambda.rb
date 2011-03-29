a_proc = Proc.new {|a, *b| b.collect {|i| i*a }} 
puts a_proc.call(9, 1, 2, 3).class.name
puts a_proc.call(9, 1, 2, 3).inspect 


def gen_times(factor)  
  Proc.new {|n| n*factor }  
end  
   
times3 = gen_times(3)  
times5 = gen_times(5)  
   
puts times3.call(12)               
puts times5.call(5)               
puts times3.call(times5.call(4))


succ = lambda {|x| x+1}
puts "succ.call(2):#{succ.call(2)}"

lambda do 
  puts "I am a lambda."
end.call

random_string = (('A'..'Z').to_a + ('a'..'z').to_a + ['_']).shuffle.take(10).join 
puts random_string.inspect
