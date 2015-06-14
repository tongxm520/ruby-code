#素数／质数： 除了1与本身外没有其他约数。0，1既不是质数也不是合数。
#时间复杂度：O(N*sqrt(N))
def is_prime?(n)
  i=2
  while(i*i <= n)
    return false if(n%i==0) 
    i+=1
  end
  return true
end

def print_primes(n)
  a=[]
  for i in 2..n
    a << i if is_prime?(i)
  end
  a
end

puts print_primes(100).inspect



