html = ''
File.open("#{File.dirname(__FILE__)}/html.txt", "r").each_line do |line|
  l = line.strip
  unless l.empty?
    html << l
  end
end

no_html = html.gsub(/<\/?.*?>/, "").gsub(/<script.*?>.*<\/script>/, "")
File.open("#{File.dirname(__FILE__)}/no_html.txt", "w") do |f|
  f.write no_html
end

puts 'strip html successfully!'
#gsub!(/(<[^>]+>|&nbsp;|\r|\n)/, "")


