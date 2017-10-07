class String
  def truncate(n)
    self[0,n]+(self.size>n ? "..." : "")
  end

  for i in [5,8,10,20]
    module_eval "def truncate_#{i}
      truncate #{i}
    end"
  end
end

str=String.new("asynchronized")
puts str[0,4] #[offset,length]
puts "hello".truncate_5
puts "responsability".truncate_5
puts "responsability".truncate_8
puts "responsability".truncate_10
puts "talent is induring patience".truncate_20
puts "talent is induring patience".send("truncate",20)
puts eval("'abc'.is_a? String")


