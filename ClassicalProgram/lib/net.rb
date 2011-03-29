require "net/http"

h = Net::HTTP.new('www.pragmaticprogrammer.com', 90)
response = h.get('/index.html', nil)
if response.message == "OK"
  puts response.class.name
  puts response.body
  puts response.body.scan(/<img src="(.*?)"/m).uniq 
else
  puts response.message
  puts "something goes wrong."
end
