class SlickButton
  attr_accessor :command

  def initialize(&block)
    @command = block
  end

#
# Lots of button drawing and management
# code omitted...
#

	def on_button_push
		@command.call if @command
	end
end

new_button = SlickButton.new do
  puts " Create a new document..."
end

new_button.on_button_push

#If you simply want a command that executes some straightforward actions when
#it is run, by all means use a Proc object. But if you are doing something
#fairly complex, if you need to create a command that will carry around a lot 
#of state Getting Things Done with Commands information or that naturally
#decomposes into several methods, by all means create a command class.

