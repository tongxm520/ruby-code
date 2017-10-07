require 'rubygems'    
require 'nokogiri'    
require 'open-uri'  

result = []

23.downto(1) do |i|
   doc = Nokogiri::HTML(open("http://railscasts.com/episodes?page=#{i}"))
   page_result = []
   doc.css(".episode").each do |item|  
     url = item.at_css(".download a")[:href]
     page_result << url
   end    
   page_result.to_a.reverse!
   result << page_result
end

puts result



