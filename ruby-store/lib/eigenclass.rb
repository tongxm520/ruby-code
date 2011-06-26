class Kitty  
 class << self  
   puts "a点:#{self.inspect} -- #{self.object_id}"  #a点  
 
   def hello  
     puts "b点:#{self.inspect} -- #{self.object_id}"  #b点  
     puts "c点:#{Kitty.inspect} -- #{Kitty.object_id}"  #c点  
   end  
 end  
end  
Kitty.hello 

class Hello  
  puts "1处:#{self.inspect} -- #{self.object_id}" #1处  
  puts "2处:#{Hello.inspect} -- #{Hello.object_id}" #2处  
 
  def kitty  
    puts "3处:#{self.inspect} -- #{self.object_id}" #3处        
  end  
end  

Hello.new.kitty  


