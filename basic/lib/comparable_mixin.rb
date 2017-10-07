#Comparable mixin提供了比较的功能。
#要使用Comparable mixin必须提供<=>方法，<=>的返回值为-1，0，+1
#用来表示元素之间的小于，等于，大于的关系。

class Person
  include Comparable
  def initialize(name,gender,age)
    @name,@gender,@age=name,gender,age
  end
  attr :age
  def <=>(person)
    @age<=>person.age
  end
end

a_person = Person.new("Tom", "male", 18)
b_person = Person.new("Mike", "male", 10)
c_person = Person.new("Henry", "male", 40)
puts a_person > b_person
puts a_person < b_person
puts a_person >= b_person
puts a_person <= b_person
puts a_person == b_person
puts a_person.between?(b_person, c_person)
