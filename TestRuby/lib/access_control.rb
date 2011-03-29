# To change this template, choose Tools | Templates
# and open the template in the editor.

class MyClass
  def public_method
    puts "public_method"
  end
  protected
  def protected_method
    puts "protected_method"
  end
  private
  def private_method
    puts "private_method"
  end
  public
  def public_method1
    puts "public_method1"
  end
end

class MySubClass < MyClass
  def call_protected_method
    protected_method
  end
  def call_private_method
    private_method
  end
end
my_class=MyClass.new
my_class.public_method
my_class.public_method1

my_sub_class=MySubClass.new
my_sub_class.call_protected_method
my_sub_class.call_private_method
#my_class.protected_method #出错
#my_class.private_method   #出错
