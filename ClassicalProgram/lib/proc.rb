def gen_times(factor)
  Proc.new {|n| n*factor}
end

times_3 = gen_times(3)
times_5 = gen_times(5)
times_100 = gen_times(100)

puts "times_3.call(12):#{times_3.call(12)}"
puts "times_3.call(times_5.call(2) + times_100.call(4)):#{times_3.call(times_5.call(2) + times_100.call(4))}"



