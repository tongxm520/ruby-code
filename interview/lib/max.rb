def max(a,b,c)
  a>=b ? (a>=c ? a : c) :(b>=c ? b : c)
end

def maxitem(a)
  max = a[0]
  a.length.times.each do |i|
    next if i==0
    max=a[i] if(a[i]>max) 
  end
  max
end

puts max(34,98,67)
puts maxitem([32,45,563,54,7,89,345])
