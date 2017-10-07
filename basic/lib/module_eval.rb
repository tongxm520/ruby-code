class String
  def truncate(n)
    self[0,n]+(self.size>n ? "..." : "")
  end

  for i in[5,8,10,20]
    module_eval "def truncate_#{i}
      truncate #{i}
    end"
  end
end

puts "abcdefg".truncate(2)
puts "abcdefg".truncate_5
puts "abcdefg".truncate_10



