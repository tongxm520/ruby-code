require 'net/http'
h = Net::HTTP.new("www.iteye.com", 80)
response = h.get('/all', nil)
puts response.message
if response.message == 'OK'
  #puts response.body
  puts response.body.scan(/<a.*?>.+?<\/a>/im).uniq
end



