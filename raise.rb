def test(x)  
	a= []
	if x>0 
	  a << "error"
	  raise a
	end   	
end

def test_test
  begin
		a = test(1)
	rescue Exception => e
		return {:flag => false, :a => a}
	end
end

puts "-----#{test_test.inspect}-------"

