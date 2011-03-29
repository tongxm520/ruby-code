# To change this template, choose Tools | Templates
# and open the template in the editor.

class Robot
  
  def say (words)
    puts words
  end
  
  def say_hello
    say "hello!"    #say("hello!")
  end
end

my_robot=Robot.new
my_robot.say_hello
