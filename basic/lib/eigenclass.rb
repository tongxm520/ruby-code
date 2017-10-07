class Kitty  
 class << self  
   puts "a点:#{self.inspect} -- #{self.object_id}"
 
   def hello  
     puts "b点:#{self.inspect} -- #{self.object_id}"  
     puts "c点:#{Kitty.inspect} -- #{Kitty.object_id}"  
   end  
 end  
end  

Kitty.hello 

class Hello  
  puts "1处:#{self.inspect} -- #{self.object_id}" 
  puts "2处:#{Hello.inspect} -- #{Hello.object_id}" 
 
  def kitty  
    puts "3处:#{self.inspect} -- #{self.object_id}"
  end  
end  

Hello.new.kitty  


