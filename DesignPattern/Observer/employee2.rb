require "#{File.dirname(__FILE__)}/tax_man"
require "#{File.dirname(__FILE__)}/payroll"

class Employee
  attr_reader :name
  attr_reader :title, :salary

  def initialize(name, title, salary)
    @name, @title, @salary = name, title, salary
    @observers = []
  end

  def salary=(new_salary)
    @salary = new_salary
    notify_observers
  end

  def add_observer(observer)
    @observers << observer
  end

  def delete_observer(observer)
    @observers.delete(observer)
  end

  def notify_observers
    @observers.each do |observer|
      observer.update(self)
    end
  end
end

fred = Employee.new('Fred', 'Crane Operator', 30000)

payroll = Payroll.new
fred.add_observer( payroll )

tax_man = TaxMan.new
fred.add_observer(tax_man)

fred.salary = 35000

