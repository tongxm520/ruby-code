# To change this template, choose Tools | Templates
# and open the template in the editor.

class Person
  
  def initialize(name,gender,age)
	@name =name
	@gender =gender
  @age =age
  end

  def age                           #相当于get方法
    @age
  end
  
  def <=>(other)                    #<=> 方法通常意思为比较，返回值为-1，0或1分别表示小于，等于和大于。
	@age<=>other.age
  end

  def name=(name)                   #相当于set方法
		@name=name
	end

	def gender=(gender)
		@gender=gender
	end

	def age=(age)
		@age=age
	end
end
person1=Person.new("tong","male",23)
person2=Person.new("li","male",44)
person2.name=("xiao")
person2.gender=("female")
person2.age=(22)
puts person1<=>person2
puts person1.<=>(person2)