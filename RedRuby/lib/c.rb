# To change this template, choose Tools | Templates
# and open the template in the editor.
require 'a' #加载文件a.rb
class C
  include A  #包含文件中的模块
  include B 
end
c=C.new
c.print_version
c.print_version_a
c.print_version_b
