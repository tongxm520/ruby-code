class Person
  attr: name,true
  attr: gender,true
  attr_accessor: age

  #<=> 方法通常意思为比较，返回值为-1，0或1分别表示小于，等于和大于。
  def <=>(other) 
	  age<=>other.age
  end
end


person1=Person.new
person1.name="tong"
person1.gender="male"
person1.age="23"
person2=Person.new
person2.name="xiao"
person2.gender="female"
person2.age="22"
puts person1<=>person2
puts person1.<=>(person2)


