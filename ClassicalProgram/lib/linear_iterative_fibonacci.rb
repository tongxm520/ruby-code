def fibonacci(integer)
  raise TypeError, "Integer argument expected" if not integer.is_a? Integer
  raise ArgumentError, "Expected argument >= 0. Got #{integer}" if integer < 0
  return integer if integer<2
  a,b=0,1
  i=2
  for i in (2..integer) do
    result=a+b
    a=b
    b=result
    i+=1
  end
  result
end

(0..10).each do |e|
  puts fibonacci(e)
end

puts fibonacci(-3)

#This method invokes raise with a single string argument. These are some equivalent ways to raise the same exception:
#raise RuntimeError, "bad argument" if n < 1
#raise RuntimeError.new("bad argument") if n < 1
#raise RuntimeError.exception("bad argument") if n < 1

