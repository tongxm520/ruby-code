class Person
  def initialize(name,gender,age)
	  @name =name
	  @gender =gender
    @age =age
  end

  def age
    @age
  end
  
  def <=>(other)
	  @age<=>other.age
  end

  def name=(name)
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


