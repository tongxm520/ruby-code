def run_twice(arg,&block)
  puts "begin."
  block.call arg
  block.call arg
  puts "end."
end

my_block =Proc.new {|word| puts word }
run_twice("hello!",&my_block)
run_twice("hello!") {|word| puts word}


