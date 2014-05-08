#in-place reverse 
#'abcdef'=> 'fbcdea' => 'fecdba' => 'fedcba'

#此算法暂不考虑标点符号，句子中只有单词
#"This is a sentence" => "sentence a is This"
#1> "This is a sentence" => "sihT si a ecnetnes"
#2> "sihT si a ecnetnes" => "sentence a is This"

#将str中[first,last] 区间内所有字符逆序
def reverse_word(str,first,last)
  while first<last
    temp=str[first]
    str[first]=str[last]
    str[last]=temp
    first+=1;last-=1
  end
end

def reverse_sentence(str)
  #这两个index用来确定一个单词的首尾边界
  first=0 #指向单词的首字符
  last=0 #指向空格或str[str.size]

  while str[last]  #当last==str.size时while结束
    if str[last]==' ' #遇到单词结束标志
      reverse_word(str,first,last-1)
      last += 1 #指向下一个单词首字符
      first=last
    else
      last +=1
    end
  end

  #对最后一个单词逆序
  reverse_word(str,first,last-1)

  #将整个句子当成一个单词逆序
  reverse_word(str,0,str.size-1)
  
  str
end

s="The downside of the mergesort is that it requires an additional array in memory"
puts "before reverse:"
puts s
puts "after reverse:"
puts reverse_sentence(s)





