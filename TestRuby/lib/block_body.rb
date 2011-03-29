# To change this template, choose Tools | Templates
# and open the template in the editor.

module Stats                         # A module
  class Dataset                      # A class in the module
    def initialize(filename)         # A method in the class
      IO.foreach(filename) do |line| # A block in the method
        if line[0,1] == "#"          # An if statement in the block
          next                       # A simple statement in the if
        end                          # End the if body
      end                            # End the block
    end                              # End the method body
  end                                # End the class body
end                                  # End the module body

