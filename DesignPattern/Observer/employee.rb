require "#{File.dirname(__FILE__)}/payroll"

class Employee
  attr_reader :name
  attr_reader :title, :salary

  def initialize(name, title, salary, payroll)
    @name, @title, @salary, @payroll = name, title, salary, payroll
  end

  def salary=(new_salary)
    @salary = new_salary
    @payroll.update(self)
  end
end

payroll = Payroll.new
fred = Employee.new('Fred', 'Crane Operator', 30000, payroll)
fred.salary = 45000

