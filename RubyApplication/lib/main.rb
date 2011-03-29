#encoding:utf-8
#该代码中并没有定义find_student_by_name,find_student_by_sex等方法，（如果定义也是很繁琐的事情）
#使用method_missing截获方法的调用并使用send方法动态获得属性值进行查找，实现了所有属性的查找方法。
#如果Student类再添加新的属性，例如身高，体重等，不需要对School类做任何的修改，School类即可获得
#find_student_by_height,find_student_by_weight等相应的查找方法

#method_missing是ruby动态特性中极其突出的性质之一，恰当的在程序中使用，往往可以节省大量重复的代码
class Student
  attr_accessor :name,:sex,:age,:grade

  def initialize(_name,_sex,_age,_grade)
    self.name,self.sex,self.age,self.grade=_name,_sex,_age,_grade
  end

  def to_s
    self.name
  end
end


class School<Array
  def find_student(by,value)
    self.find_all {|s| s.send(by)==value}
  end

  def add_student(student)
    self << student          #"<<"表示左移位，字符串追加，数组追加
  end

  def method_missing(name,argument)
    match=/^find_student_by_([a-z]+)$/.match(name.to_s)
    if match
      find_student match[1],argument
    else
      raise NoMethodError
    end
  end
end


school=School.new
school.add_student(Student.new("张三","男",16,"初三"))
school.add_student(Student.new("张四","男",13,"初一"))
school.add_student(Student.new("张五","女",16,"初三"))
school.add_student(Student.new("张六","男",16,"初二"))


puts "名叫张三的学生有:"
puts school.find_student_by_name("张三")
puts "性别为男的学生有："
puts school.find_student_by_sex("男")
puts "年龄为13岁的学生有："
puts school.find_student_by_age(13)
puts "级别为初三的学生有："
puts school.find_student_by_grade("初三")


