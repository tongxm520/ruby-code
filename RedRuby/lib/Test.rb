# To change this template, choose Tools | Templates
# and open the template in the editor.
str=["a","b","c"]
puts str.class
puts str.to_s.class
temp=""
str.each do |e|
  temp<<e
end
str1="abc"
puts temp.eql?(str1)