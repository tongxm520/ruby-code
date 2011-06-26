module ApiTool
  def self.included(base)
    base.extend(ClassMethods)
    puts "1>self:#{self.inspect}"
    puts "1>base:#{base.inspect}"
    puts "1>trigger callback when #{self.inspect} included by #{base.inspect}"
  end

  module ClassMethods
    def load_tool(options = {})
      puts "2>#{self.inspect}:load_tool"
      include InstanceMethods
      include Compress
    end
  end
  
  module InstanceMethods
    protected

    def pre_process_for_params
      puts "3>#{self.inspect}:pre_process_for_params"
    end
  end

  module Compress
    def compress
      puts "4>#{self.inspect}:compress"
    end
  end
end
