#1>申请空间，使其大小为两个已经排序序列之和，该空间用来存放合并后的序列
#2>设定两个指针，最初位置分别为两个已经排序序列的起始位置
#3>比较两个指针所指向的元素，选择相对小的元素放入到合并空间，并移动指针到下一位置
#4>重复步骤3直到某一指针达到序列尾
#5>将另一序列剩下的所有元素直接复制到合并序列尾

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


