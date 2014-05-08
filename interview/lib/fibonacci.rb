require "profiler"

#递归效率低，尽量用循环
def fibonacci(n)
  return false if !n.is_a?(Integer)
  return 1 if n==1||n==2
  return fibonacci(n-1)+fibonacci(n-2)
end


def fibonaccies(n)
  temp=Array.new(n+1)
  for i in 1..n
    temp[1]=1 if i==1
    temp[2]=1 if i==2 
    temp[i]=temp[i-1]+temp[i-2] if i>2
  end
  temp[1..-1]
end

Profiler__::start_profile
puts fibonacci(25)
Profiler__::stop_profile
Profiler__::print_profile($stdout)

puts fibonaccies(50).inspect




