# To change this template, choose Tools | Templates
# and open the template in the editor.

# Determine US generation name based on birth year
# Case expression tests ranges with ===
def name_by_birthyear(birthyear)
  generation = case birthyear
               when 1946..1963 then "Baby Boomer"#在ruby1.9中使用：而不是then是非法的
               when 1964..1976 then "Generation X"
               when 1978..2000 then "Generation Y"
               else nil
               end
  generation
end
# A method to ask the user to confirm something
def are_you_sure?                  # Define a method. Note question mark!
  while true                       # Loop until we explicitly return
    print "Are you sure? [y/n]: " # Ask the user a question
    response = gets                # Get her answer
    case response                  # Begin case conditional
    when /^[yY]/                   # If response begins with y or Y
      return true                  # Return true from the method
    when /^[nN]/, /^$/             # If response begins with n,N or is empty
      return false                 # Return false
    end
  end
end
puts  name_by_birthyear(1964)
puts  are_you_sure?

