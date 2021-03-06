#递归效率低，尽量用循环
def fibonacci(n)
  raise ArgumentError unless n.is_a?(Integer)&&n>0
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

def fib_upto(max)
  i1,i2= 1,1
  while i1<=max
    yield i1
    i1,i2 = i2,i1+i2
  end
end


puts fibonacci(25)
puts fibonaccies(50).inspect

fib_upto(10000) {|f| print f," "}
puts 
