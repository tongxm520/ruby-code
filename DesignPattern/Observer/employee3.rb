require "#{File.dirname(__FILE__)}/tax_man"
require "#{File.dirname(__FILE__)}/payroll"
require "#{File.dirname(__FILE__)}/subject"

class Employee < Subject
  attr_reader :name
  attr_reader :title, :salary

  def initialize(name, title, salary)
    super()
    @name, @title, @salary = name, title, salary    
  end

  def salary=(new_salary)
    @salary = new_salary
    notify_observers
  end

end

fred = Employee.new('Fred', 'Crane Operator', 30000)

payroll = Payroll.new
fred.add_observer( payroll )

tax_man = TaxMan.new
fred.add_observer(tax_man)

fred.salary = 85000

