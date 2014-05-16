$c=0

#将n个盘（从小到大叠放）从底座x移动到z，以y为辅助
#每次只准移动一个盘到其他底座；且大盘不准压在小盘上
def hanoi(n,x,y,z)
  if n==1
    move(x,1,z)
  else
    #将上面n-1个盘从x移动到y，以z为辅助
    hanoi(n-1,x,z,y)

    #将第n个盘从x移动到z
    move(x,n,z)

    #将n-1个盘从y移动到z，以x为辅助
    hanoi(n-1,y,x,z)
  end
end

#将第n个盘从a移动到b
def move(a,n,b)
  $c+=1
  puts "#{$c}. Move disk #{n} from #{a} to #{b}."
end

hanoi(11,"x","y","z")
