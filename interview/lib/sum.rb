#写一个函数计算当参数为n(n很大)时的值 1-2+3-4+5-6+7...+n
#when n is odd :sum = n + (-1)*((n-1)/2)=n+(-1)*(n/2)
#when n is odd : (n-1)/2 等价于 n/2
#when n is even:sum= -1*(n/2)
#-1/2 => -1;-(1/2) => 0
#ceil:小数都入  floor:都舍  round:四舍五入

def sum(n)
  raise ArgumentError,"n must be a positive integer!" unless n.is_a?(Integer) and n>0 
  n&1==0 ? -1*(n/2) : -1*(n/2) + n
end


puts sum(10)
puts sum(11)
puts sum(103488493)
puts sum(1111000)
#puts sum(-1)
puts sum("10")


