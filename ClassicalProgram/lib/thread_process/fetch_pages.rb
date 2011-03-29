require "net/http"
pages = %w{www.google.com www.baidu.com www.bing.com}
threads = []
for page_to_fetch in pages 
  threads << Thread.new(page_to_fetch) do |url|
    h = Net::HTTP.new(url, 80)
    puts "Fetching: #{url}"
    response = h.get('/', nil)    
    puts "Got #{url}: #{response.message}"
    puts response.body
    puts "---------------------------------------------------------------------"
  end
end

threads.map &:join

