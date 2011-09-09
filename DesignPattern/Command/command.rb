class Command
  attr_reader :description

  def initialize(desc)
    @description = desc
  end

  def execute
  end
end
