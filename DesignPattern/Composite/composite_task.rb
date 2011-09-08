require "#{File.dirname(__FILE__)}/atomic_task"

class CompositeTask < Task
  def initialize(name)
    super(name)
    @sub_tasks = []
  end

  def add_sub_task(task)
    @sub_tasks << task
    task.parent = self
  end

  def remove_sub_task(task)
    @sub_tasks.delete(task)
    task.parent = nil
  end

  def get_time_required
    time=0.0
    @sub_tasks.each {|task| time += task.get_time_required}
    time
  end

  def do_task
    puts "#{' ' * level}-#{name}"
    children.each do |t|
      t.do_task
    end
  end

  def children
    @sub_tasks
  end

end

class MakeBatterTask < CompositeTask
  def initialize
    super('Make batter!')
    add_sub_task( AddDryIngredientsTask.new )
    add_sub_task( AddLiquidsTask.new )
    add_sub_task( MixTask.new )
  end
end

class MakeCakeTask < CompositeTask
  def initialize
    super('Make cake!')
    add_sub_task( MakeBatterTask.new )
    add_sub_task( FillPanTask.new )
    add_sub_task( BakeTask.new )
    add_sub_task( FrostTask.new )
    add_sub_task( LickSpoonTask.new )
  end
end

class PackageCakeTask < CompositeTask
  def initialize
    super('Package Cake!')
    add_sub_task( BoxTask.new )
    add_sub_task( LabelTask.new )
  end
end

class ManufactureCakeTask < CompositeTask
  def initialize
    super('Manufacture Cake Task!')
    add_sub_task( MakeCakeTask.new )
    add_sub_task( PackageCakeTask.new )
  end
end

t = ManufactureCakeTask.new
t.do_task
puts "get_time_required(minute):" + t.get_time_required.to_s


