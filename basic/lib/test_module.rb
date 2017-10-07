require "api_tool"

class TestModule
	include ApiTool
	load_tool

  def test_pre_process_for_params
    puts "test_pre_process_for_params"
    pre_process_for_params
  end

  def test_compress
    puts "test_compress"
    compress
  end	
	
  def msg(*op)
    hint = "msg: $0"
    op.size.times do |i|
      hint.gsub!("$#{i}", op[i])
    end
    puts hint
  end
end

t = TestModule.new

t.compress
t.test_pre_process_for_params
t.test_compress
t.msg("abc")
t.msg




