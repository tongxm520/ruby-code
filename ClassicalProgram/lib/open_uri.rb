require "open-uri"

open('http://www.pragmaticprogrammer.com') do |f|
  puts f.read.scan(/<img src="(.*?)"/m).uniq
  puts "again f.read:" + f.read  # the result is empty when read again
end



