#  produce random integer without duplicates
#  range of element in a column between 15*(column_num-1)+1 and 15*column_num
#  range of element in the table between 1 and 75
#  integer between 1 and 75 should be used only once

used=[]
(0..75).each do |i|
  used[i]=false
end

random_int = Array.new
duplicated = []

(0..24).each do |i|
  count= (i%5==0 ? 0 : i%5)
  
  random_int[i] = rand(15)+15*count+1
    
  until !used[random_int[i]]  do
    duplicated << random_int[i]
    random_int[i] = rand(15)+15*count+1
  end
   
  used[random_int[i]] =true
end

row =""
random_int.each_with_index do |element,index|
  row +="#{element}     "
  if index%5==4
    puts "#{row}\n"
    row = ""
  end
end

puts duplicated.inspect


