# To change this template, choose Tools | Templates
# and open the template in the editor.

def run_twice
  puts "begin."
  yield
  yield
  puts "end."
end

run_twice {puts "Say hello!"}
i=0
run_twice do
  i+=2
  puts "i=#{i}"
end
puts "i=#{i}"