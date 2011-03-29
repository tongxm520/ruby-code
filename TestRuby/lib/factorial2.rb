# To change this template, choose Tools | Templates
# and open the template in the editor.

class Fact
  def factorial(n)
      result = 1
      (2..n).each do |i|  result *= i end #2.upto(n) {|i| result *= i }
      result
  end
end
fact=Fact.new
puts fact.factorial(20)
puts fact.factorial(21)
puts fact.factorial(1)
puts fact.factorial(0)