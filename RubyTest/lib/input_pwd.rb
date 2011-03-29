def run(command, input='')
  IO.popen(command, 'r+') do |io|
    io.puts input
    io.close_write
    return io.read
  end
end

def run_with_pwd(command, input='')
  IO.popen(command, 'r+') do |io|
    io.close_write
    return io.read
  end
end

puts run 'wc -w', 'How many words are in this string?'


run_with_pwd('sudo chmod 441 /home/simon/mmseg.so', 'icesword')
puts `cd /home/simon;ls -l|grep mmseg.so`


run_with_pwd('sudo chmod 557 /home/simon/mmseg.so', 'icesword')
puts `cd /home/simon;ls -l|grep mmseg.so`


