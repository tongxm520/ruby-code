def f(range)
  sum = 0
  range.to_a.each do |x|
    while x>0
      sum += 1 if x%10==1
      x=x/10
    end
  end
  sum
end

def fun(range)
  range.inject do |sum,n|
    while n>0
      sum +=1 if n%10==1
      n=n/10
    end
    sum
  end
end


puts "f(0..201)= "+f(0..201).to_s
puts "fun(0..1000)= "+fun(0..1000).to_s



