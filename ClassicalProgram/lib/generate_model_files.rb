source_file = "/home/simon/table_names.txt" 
dest_dir = "/home/simon/monitor_v3/app/models/"

f = File.open(source_file,"r")

puts f.methods.grep(/line/).inspect

f.each_line do |line|
  file_name = line.downcase
  file = dest_dir + file_name + ".rb"
  class_name = file_name.camelcase
  file_content = "class #{class_name} < ActiveRecord::Base\r\n"
  file_content += "end"
  File.open(file,"w") do |f|
    f.write file_content
  end
end
