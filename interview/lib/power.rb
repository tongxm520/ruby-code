def power(x,n)
  if n==0
    return 1;
  elsif n&1==0
    return power(x*x,n/2)
  else
    return x* power(x*x,n/2)
  end
end

def fibonacci(n)
  if n == 0 or n == 1
    return n
  else
    return fibonacci(n - 1) + fibonacci(n - 2)
  end
end

puts power(3,5)
puts power(4,7)
