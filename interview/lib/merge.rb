#时间复杂度：O(lenA + lenB)
def merge(a,b,c)
  alen=a.size;blen=b.size
  adex=bdex=cdex=0
  while adex<alen&&bdex<blen
    if a[adex]>b[bdex]
      c[cdex]=b[bdex]
      cdex+=1;bdex+=1
    else
      c[cdex]=a[adex]
      cdex+=1;adex+=1
    end
  end
  
  while adex<alen 
    c[cdex]=a[adex]
    cdex+=1;adex+=1
  end
  
  while bdex<blen
    c[cdex]=b[bdex]
    cdex+=1;bdex+=1
  end
end

if __FILE__==$0
  c=[]
  a=[1,3,5,34,45,56,67,78,89,90]
  b=[2,12,17,24,26,33,38,46,49,59,64,65,69,75,88,234,247]
  merge(a,b,c)
  puts c.inspect
end


