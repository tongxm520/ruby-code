product =Hash.new
(1..10).each do |e|
  product[e.to_s]="产品#{e}"
end
puts product
puts "-------------------------------------------------------------------------"

tag =Hash.new
tag["null"]="null"
(1..10).each do |e|
  tag[e.to_s]="标签#{e}"
end
puts tag
puts "-------------------------------------------------------------------------"

statistics =[]
statistics<<{:product_id=>"1",:tag_id=>"null",:topics=>"20",:votes=>"17"}
statistics<<{:product_id=>"1",:tag_id=>"1",:topics=>"16",:votes=>"17"}
statistics<<{:product_id=>"3",:tag_id=>"4",:topics=>"15",:votes=>"17"}
statistics<<{:product_id=>"3",:tag_id=>"5",:topics=>"33",:votes=>"17"}
statistics<<{:product_id=>"3",:tag_id=>"7",:topics=>"8",:votes=>"17"}
statistics<<{:product_id=>"5",:tag_id=>"null",:topics=>"11",:votes=>"17"}
statistics<<{:product_id=>"5",:tag_id=>"1",:topics=>"19",:votes=>"17"}
statistics<<{:product_id=>"5",:tag_id=>"4",:topics=>"44",:votes=>"17"}
statistics<<{:product_id=>"5",:tag_id=>"5",:topics=>"41",:votes=>"17"}
statistics<<{:product_id=>"6",:tag_id=>"1",:topics=>"28",:votes=>"17"}
statistics<<{:product_id=>"6",:tag_id=>"7",:topics=>"27",:votes=>"17"}


product_ids = []
statistics.each do |stat|
  product_ids << stat[:product_id]
end
product_ids =product_ids.sort.uniq

products =[]
product_ids.each do |id|
  products<<{:product_id=>id,:product_name=>product[id],:tags_count=>0}
end

products[0][:tags_count]=2
products[0][:tags_count]=3
products[0][:tags_count]=4
products[0][:tags_count]=2

puts products

puts "-------------------------------------------------------------------------"

tag_ids = []
statistics.each do |stat|
  tag_ids << stat[:tag_id]
end
tag_ids =tag_ids.sort.uniq
tag_ids.delete_if{|id| id=="null"}
tag_ids.unshift("null")

tags =[]
tag_ids.each do |id|
  tags<<{:tag_id=>id,:tag_name=>tag[id]}
end

puts tags
puts "-------------------------------------------------------------------------"

product_row=""
products.each {|p| product_row+=("            "+p[:product_name])}

puts product_row
puts "-------------------------------------------------------------------------"

square = {}
statistics.each do |stat|
  square["(#{stat[:tag_id]},#{stat[:product_id]})"]=[stat[:topics],stat[:votes]]
end

tags.each do |t| 
  stat_row =""
  stat_row+=(t[:tag_name]=="null" ? " 其它" : t[:tag_name])
  
  products.each do |p|
    if square["("+t[:tag_id]+","+p[:product_id]+")"]
      topics = square["("+t[:tag_id]+","+p[:product_id]+")"][0]  
      votes = square["("+t[:tag_id]+","+p[:product_id]+")"][1]
    else
      topics = "null"
      votes = "null"
    end
    stat_row+=("        "+"("+topics+","+votes+")")
  end
  puts stat_row
  puts "-------------------------------------------------------------------------"
end



