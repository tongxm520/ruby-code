require "#{File.dirname(__FILE__)}/tax_man"
require "#{File.dirname(__FILE__)}/payroll"
require "#{File.dirname(__FILE__)}/subject_module2"

class Employee
  include Subject 

  attr_reader :name
  attr_reader :title, :salary

  def initialize(name, title, salary)
    super()
    @name, @title, @salary = name, title, salary    
  end

  def salary=(new_salary)    
   old_salary = @salary
   @salary = new_salary
   notify_observers if old_salary != new_salary  
  end

end

fred = Employee.new('Fred', 'Crane Operator', 30000)

fred.add_observer do |changed_employee|
  puts("Payroll Cut a new check for #{changed_employee.name}!")
  puts("His salary is now #{changed_employee.salary}!")
end

fred.add_observer do |changed_employee|
  puts("TaxMan Send #{changed_employee.name} a new tax bill!")
end

fred.salary = 80000


#The advantage of using code blocks as observers is that they simplify 
#the code; we no longer need a separate class for the observers. To add an #observer, we just call add_observer and pass in a code block

