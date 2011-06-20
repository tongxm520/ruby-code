$str = [["abc", "def"], ["abc2", "def2"]]
$str2 = "hello world"
if __FILE__ == $0
  #puts $0
  #puts $str.inspect
  begin
		i = "abc"/10
  rescue Exception => e
    puts "error occurs"
    exit(0)
  end
  puts $str2
end
