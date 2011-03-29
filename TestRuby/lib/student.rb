# To change this template, choose Tools | Templates
# and open the template in the editor.

class Student
  @@c_total_score=@@m_total_score=@@e_total_score=\
  @@c_total_course=@@m_total_course=@@e_total_course=0
 def initialize(name,chinese,maths,english)          #形参相当于局部变量
    @name,@chinese,@maths,@english=name,chinese,maths,english
    
    @@c_total_course+=1
    @@m_total_course+=1
    @@e_total_course+=1
    
    @@c_total_score+=chinese
    @@m_total_score+=maths
    @@e_total_score+=english
  end
  def self.e_average_score
   @@e_total_score/@@e_total_course
  end
  def Student.m_average_score
   @@m_total_score/@@m_total_course
  end
  def self.c_average_score
    @@c_total_score/@@c_total_course
  end
  
  def name   #在Ruby中，一个对象的内部属性都是私有的。任何对对象内部状态的访问必须由特定的方法来实现。例如name方法
    @name
  end
  def chinese
    @chinese
  end
  def maths
    @maths
  end
  def english
    @english
  end
  def total_score
     @chinese+@maths+@english
  end
  def average_score
     total_score/3
  end
  def name=(value)
    @name=value
  end
  def chinese=(value)
    @chinese=value
  end
  def maths=(value)
    @maths=value
  end
  def english=(value)
    @english=value
  end
end
student1=Student.new("tong",80,70,60)
student2=Student.new("xiao",90,50,70)
student3=Student.new("xiao",90,50,70)#if   student3=Student.new  or  student3=Student   error
student3.name=("ming")# Normal method invocation syntax
student3.chinese=100  # Method invocation through assignment
student3.maths=50
student3.english=60
puts "name chinese maths english total_score average_score"
puts "#{student1.name},#{student1.chinese},#{student1.maths},#{student1.english},#{student1.total_score},#{student1.average_score}"
puts "#{student2.name},#{student2.chinese},#{student2.maths},#{student2.english},#{student2.total_score},#{student2.average_score}"
puts "#{student3.name},#{student3.chinese},#{student3.maths},#{student3.english},#{student3.total_score},#{student3.average_score}"
puts "the average:#{Student.c_average_score},#{Student.m_average_score},#{Student.e_average_score}"
