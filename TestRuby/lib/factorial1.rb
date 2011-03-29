# To change this template, choose Tools | Templates
# and open the template in the editor.

class Fact
  def factorial(number)
    if(number==1)
       result=1
    else
       result=factorial(number-1)*number
    end
       result     #相当于return result
  end
end
fact=Fact.new
puts fact.factorial(5).class
puts fact.factorial(5).class.name
puts fact.factorial(5)
puts "the result:"+fact.factorial(5).to_s
