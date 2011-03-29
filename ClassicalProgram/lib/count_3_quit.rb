
boolean_arr = []
500.times.each do
  boolean_arr << true
end

left_count = boolean_arr.size
count_num = 0;
index = 0;

while left_count > 1
  if boolean_arr[index] == true
    count_num += 1
    if count_num == 3
      count_num = 0;
      boolean_arr[index] = false;
      left_count -= 1
    end
  end

  index += 1
  index = 0 if index == boolean_arr.size
end

boolean_arr.each_with_index do |b, i|
  puts "the end: #{i}" if b == true
end
