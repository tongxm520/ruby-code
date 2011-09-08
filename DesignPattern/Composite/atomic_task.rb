require "#{File.dirname(__FILE__)}/task"

class AddDryIngredientsTask < Task
  def initialize
    super('Add dry ingredients!')
  end

  def get_time_required
    1.0             # 1 minute to add flour and sugar
  end
end

class AddLiquidsTask < Task
  def initialize
    super('Add Liquids Task!')
  end

  def get_time_required
    5.0             # 5 minutes
  end
end

class MixTask < Task
  def initialize
    super('Mix that batter up!')
  end

  def get_time_required
    3.0             # Mix for 3 minutes
  end
end

class FillPanTask < Task
  def initialize
    super('Fill Pan Task!')
  end

  def get_time_required
    5.0             # 5 minutes
  end
end

class BakeTask < Task
  def initialize
    super('Bake Task!')
  end

  def get_time_required
    6.0             # 6 minutes
  end
end

class FrostTask < Task
  def initialize
    super('Frost Task!')
  end

  def get_time_required
    7.0             # 7 minutes
  end
end

class LickSpoonTask < Task
  def initialize
    super('Lick Spoon Task!')
  end

  def get_time_required
    9.0             #  9 minutes
  end
end



class BoxTask < Task
  def initialize
    super('Box Task!')
  end

  def get_time_required
    10.0             #  10 minutes
  end
end

class LabelTask < Task
  def initialize
    super('Label Task!')
  end

  def get_time_required
    3.0             #  8 minutes
  end
end



