#素数筛选法，也称“埃拉托色尼(Eratosthenes)筛法”，埃拉托色尼是古希腊著名的数学家。素数筛选法操作如下，首先从2开始，将2+k（k=1，2，3，……n-2）都对2进行整除运算，若（2+k）能整出2，说明这个数一定是合数，那就将它筛掉；然后找下一个没有被筛选掉的数字开始，2后面第一个没筛去的是3，把3留下，从3开始，3后面剩下的数字对3进行整除运算，如果某一个数能整除3，则将其筛掉，3后面第一个没筛去的是5，把5留下，再把5后面所有能被5整除的数都筛去，接下来，按照这个模式一直筛选，就会把n之内的全部合数都筛去，留下的都是质数。
#时间复杂度
#n*(n/2+n/3+n/5+n/7+n/11+n/13...)

#素数筛选法
def select_prime(n)
  raise ArgumentError,"positive integer required!" unless n.is_a?(Integer) and n>1
  is_prime=Array.new(n+1)
  for i in 2..n
    is_prime[i]=true
  end

  for i in 2..n
    if is_prime[i]
      j=i*2
      while j<n+1
        is_prime[j] =false if is_prime[j]
        j+=i
      end
    end
  end

  a=[]
  for i in 2..n
    a << i if is_prime[i]
  end
  a
end


puts select_prime(1000000).inspect
puts select_prime("abc")




