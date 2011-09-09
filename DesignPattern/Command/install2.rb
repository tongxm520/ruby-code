require "#{File.dirname(__FILE__)}/command"

class CreateFile < Command
  def initialize(path, content)
    super("Create File: #{path}")
    @path = path
    @content = content
  end

  def execute
    f = File.open @path, "w"
    f.write @content
    f.close
  end

  def unexecute
    File.delete @path
  end
end

class DeleteFile < Command
  def initialize(path)
    super("Delete File: #{path}")
    @path = path
  end

  def execute
    if File.exists?(@path)
      @contents = File.read(@path)
    end
    File.delete @path
  end

  def unexecute
    if @contents
			f = File.open(@path,"w")
			f.write(@contents)
			f.close
    end
  end
end

class CopyFile < Command
  require 'fileutils'
   
  def initialize(source, target)
    super("Copy File: #{source} to #{target}")
    @source = source
    @target = target
  end

  def execute
    if File.exists? target
      @contents = File.read(target)
    end
    FileUtils.copy(@source, @target)
  end

  def unexecute
    if @contents
      f = File.open(@target,"w")
			f.write(@contents)
			f.close
    else
      File.delete @target
    end
  end
end 

class CompositeCommand < Command
  def initialize
    @commands = []
  end

  def add_command(cmd)
    @commands << cmd
  end

  def execute
    @commands.each {|cmd| cmd.execute}           
  end

	def unexecute
		@commands.reverse.each { |cmd| cmd.unexecute }
	end

  def description
    desc = ""
    @commands.each {|c| desc << c.description + "\n"}
    desc
  end
end

cmds = CompositeCommand.new
cmds.add_command(CreateFile.new('file1.txt', "hello world\n"))
cmds.add_command(CopyFile.new('file1.txt', 'file2.txt'))
cmds.add_command(DeleteFile.new('file1.txt'))
cmds.execute
puts(cmds.description)

__END__
If you need to perform a number of database operations over time, 
you sometimes face the unpleasant choice of
(1) leaving the connection open for the whole time, thereby wasting a scarce resource, or
(2) wasting the time it takes to open and close the connection for each operation.
The Command pattern offers one way out of this kind of bind. Instead of per-
forming each operation as a stand-alone task, you accumulate all of these commands in a list. Periodically, you can open a connection to the database, execute all of your commands, and flush out this list.

