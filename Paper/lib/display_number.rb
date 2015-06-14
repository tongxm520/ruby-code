def display(array)
  for element in array do
    if element%3==0&&element%5!=0
      print "Fizz "
    elsif element%3!=0&&element%5==0  #必须换行
      print "Buzz "
    elsif element%3==0&&element%5==0
      print "FizzBuzz "
    else
      print "#{element} "
    end
  end
end
array=(1..100).to_a
display array
puts
