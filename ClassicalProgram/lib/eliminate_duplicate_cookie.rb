KEY_ID_SPLITER = "__ALIMONITOR__"
file = "/home/simon/rubyworkbench/ClassicalProgram/lib/test.cookie"

cookies = [["name1", 401, 1], ["name2", 402, 1],["name3", 403, 1],["name4", 404, 1],["name5", 405, 1],]

if File.exist?(file)
ids = []
File.open(file, "r").each_line do |line|
  unless line.empty?
    ids << line.split(KEY_ID_SPLITER)[1]
  end
end

ids.each do |id|
  cookies.delete_if { |c| c[1].to_s == id}
end

end
valid_cookies = cookies.map{|c| c.join(KEY_ID_SPLITER)}.join("\n")


File.open(file, "a") do |f|
  f.write "\n"+valid_cookies 
end
