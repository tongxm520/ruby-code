# To change this template, choose Tools | Templates
# and open the template in the editor.

#Ruby supports parallel assignment, allowing more than one value and more than one
#variable in assignment expressions:
     x, y = 1, 2     # Same as x = 1; y = 2
     a, b = b, a     # Swap the value of two variables
     x,y,z = [1,2,3] # Array elements automatically assigned to variables
#Methods in Ruby are allowed to return more than one value, and parallel assignment
#is helpful in conjunction with such methods. For example:
     # Define a method to convert Cartesian (x,y) coordinates to Polar
     #
     def polar(x,y)
       theta = Math.atan2(y,x)    # Compute the angle
       r = Math.hypot(x,y)        # Compute the distance
       [r, theta]                 # The last expression is the return value
     end
     # Here's how we use this method with parallel assignment
     distance, angle = polar(2,2)
     puts distance,angle

