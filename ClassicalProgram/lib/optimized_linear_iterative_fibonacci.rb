def fibonacci(integer)
  raise TypeError, "Integer argument expected" if not integer.is_a? Integer
  raise ArgumentError, "Expected argument >= 0. Got #{integer}" if integer < 0
  return integer if integer<2
  p,q=0,1
  b,a=0,1
  i=2
  for i in (2..integer) do
    result=a+b
    a_temp =a
    p_temp =p
    a= (a+b)*q+a*p
    b= b*p+a_temp*q
    p=p*p+q*q
    q=q*q+2*p_temp*q
    i+=1
  end
  result
end

(0..10).each do |e|
  puts fibonacci(e)
end




