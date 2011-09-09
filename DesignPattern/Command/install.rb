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
end

class DeleteFile < Command
  def initialize(path)
    super("Delete File: #{path}")
    @path = path
  end

  def execute
    File.delete @path
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
    FileUtils.copy(@source, @target)
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


