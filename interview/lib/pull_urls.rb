def curl(headers_txt, target, post_data = nil)
    header_param = headers_txt.split("\n").map {|header| "-H \"#{header}\""}.join(' ')
    cmd = "curl #{header_param}"
    cmd += " -d \"#{post_data}\"" if post_data
    cmd += " \"#{target}\" --compressed"
    cmd += " 2>/dev/null"

    puts "Execute:\n#{cmd}"
    2.times {puts}

    `#{cmd}`
end


FIRST_HEADER= <<-EOF
Accept:	text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8
Connection: keep-alive
Content-Type: text/html; charset=utf-8
Host: www.iteye.com
User-Agent: Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:28.0) Gecko/20100101 Firefox/28.0
EOF

lambda do
  header_param = FIRST_HEADER.split("\n").map {|header| "-H \"#{header}\""}.join(' ')
  target = "http://www.iteye.com/login"
  file= File.dirname(__FILE__)+"/cookie"
  cmd = "curl #{header_param} "
  cmd += "--cookie-jar \"#{file}\" "
  cmd += "\"#{target}\""
  output=`#{cmd}`
  puts output.encoding
  #  $stdout << output
  
  require 'nokogiri'
  doc = Nokogiri::HTML(output)
  form = doc.search('form#login_form')  
  input = form.search('input[@name="authenticity_token"]')
  token=input.attr("value")
  #  puts (input.methods - "".methods).inspect
  # :document, :document=, :remove, :search, :/, :css, :xpath, :at, :at_xpath, :at_css, :add_class, :remove_class, :attr, :set, :attribute, :remove_attr, :each, :inner_text, :text, :inner_html, :to_html, :to_xhtml, :to_xml, :grep, :select, :inject, :each_with_index

FIRST_HEADER= <<-EOF
Accept: text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8
Connection: keep-alive
Content-Type: application/x-www-form-urlencoded
Host: www.iteye.com
Referer: http://www.iteye.com/login
User-Agent: Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:28.0) Gecko/20100101 Firefox/28.0
EOF

  header_param = FIRST_HEADER.split("\n").map {|header| "-H \"#{header}\""}.join(' ')
  puts header_param 

  require 'cgi'
  data="authenticity_token=#{token}&name=tongxiaoming520&password=icesword520"
  pairs = data.strip.split('&')
  encoded_data = pairs.map do |pair_txt|
    pair = pair_txt.split('=')
    "#{pair[0]}=#{CGI.escape(pair[1])}"
  end.join('&')
  puts encoded_data  

  str=File.read(file)
  cookie_id= str.scan(/_javaeye_cookie_id_\s.+\s/)[0].split(/\s/)[1]
  session= str.scan(/_javaeye3_session_\s.+\s/)[0].split(/\s/)[1]
  puts [cookie_id,session].inspect
 
  cookie="_javaeye_cookie_id_=#{CGI.escape(cookie_id)};remember_me=no; _javaeye3_session_=#{CGI.escape(session)}"

  cmd = "curl #{header_param} "
  cmd += "--cookie \"#{cookie}\" "
  cmd += "-d \"#{encoded_data}\"  "
  cmd += "#{target}"
  output=`#{cmd}`

  puts output  
end.call





