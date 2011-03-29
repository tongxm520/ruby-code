#encoding:utf-8
class Undergraduate

  attr_accessor :student_no, :name, :gender, :birthday, :credit
  
  def age
    Time.now.year-self.birthday.year
  end

  def display_full_info
    puts "#{self.name},#{self.student_no},#{self.gender},#{self.age},#{self.credit}"
  end

  def self.max_age(first,*rest)
    # Assume that the required first argument is the largest
    max = first
    # Now loop through each of the optional arguments looking for bigger ones
    rest.each {|x| max = x if x.age > max.age }
    # Return the largest one we found
    "#{max.name}的年龄最大，#{max.age}岁"
  end

  def Undergraduate.display(undergraduates)
    undergraduates.each do |e|
      e.display_full_info
    end
  end
end

undergraduates =Array.new

alice =Undergraduate.new
alice.student_no = "0603020215"
alice.name = "Alice"
alice.gender = "female"
alice.birthday = Time.local(1985, 7, 18)
alice.credit = 5
undergraduates << alice

sam =Undergraduate.new
sam.student_no="0603020216"
sam.name= "Sam"
sam.gender="male"
sam.birthday=Time.local(1986, 9, 5)
sam.credit=4
undergraduates << sam

nash =Undergraduate.new
nash.student_no="0603020217"
nash.name= "Nash"
nash.gender="male"
nash.birthday=Time.local(1988, 12, 30)
nash.credit=4
undergraduates << nash

kitty =Undergraduate.new
kitty.student_no="0603020218"
kitty.name= "Kitty"
kitty.gender="female"
kitty.birthday=Time.local(1989, 4, 1)
kitty.credit=3
undergraduates << kitty

newton =Undergraduate.new
newton.student_no="0603020219"
newton.name= "牛顿"
newton.gender="male"
newton.birthday=Time.local(1984, 6, 21)
newton.credit=3
undergraduates << newton


puts "the age of kitty is #{kitty.age}"
duplicates_count =undergraduates.length
undergraduates =undergraduates.uniq
puts undergraduates.methods.grep(/length/)
puts undergraduates.length==duplicates_count-1
puts undergraduates.include?(newton)
puts undergraduates.index(nash)

names =undergraduates.map {|undergraduate| undergraduate.name}
puts names.inspect
#total_credit = undergraduates.inject {|sum, undergraduate| sum + undergraduate.credit }
#puts total_credit
puts (1..10).inject {|sum, n| sum + n}
puts [2,5,6].inject(1) {|product, n| product * n }

# find the longest word
names =undergraduates.collect {|undergraduate| undergraduate.name}
longest = names.inject do |memo,word|
   memo.length > word.length ? memo : word
end
puts "'#{longest}'的长度为：#{longest.length}"

female_undergraduates =undergraduates.select {|undergraduate| undergraduate.gender=="female"}
puts "female undergraduates:"
Undergraduate.display(female_undergraduates)

male_undergraduates =undergraduates.reject {|undergraduate| undergraduate.gender=="female"}
puts "male undergraduates:"
Undergraduate.display(male_undergraduates)

fruit_by_length =%w{ apple pear fig }.sort_by {|word| word.length}
puts "fruit_by_length:"
puts  fruit_by_length

undergraduates_by_name = undergraduates.sort_by {|undergraduate|undergraduate.name}
Undergraduate.display(undergraduates_by_name)

groups = undergraduates.partition  { |u| u.gender == "male" }
puts "male undergraduates:"
Undergraduate.display(groups[0])
puts "female undergraduates:"
Undergraduate.display(groups[1])
puts "男毕业生中:#{Undergraduate.max_age(*groups[0])}"    #Undergraduate.max_age(groups[0])会出错    







