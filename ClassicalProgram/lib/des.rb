require 'openssl'
require 'base64'

des = OpenSSL::Cipher::Cipher.new("DES-ECB")
des.encrypt
des.key = key = "123456789"
puts "des.key:"+des.inspect
#des.key = key = Digest::SHA1.hexdigest("123")
en_result = des.update("计算机技术")
puts "des.update:"+en_result
final = des.final
puts "des.final:" + final
en_result << final
puts "encrypted: #{en_result}\n"
puts "encrypted: #{en_result.inspect}\n"
base64_result = Base64.encode64(en_result)
puts "base64_encode:#{base64_result}"

des = OpenSSL::Cipher::Cipher.new("DES-ECB")
des.decrypt
des.key = key
de_result = des.update(Base64.decode64(base64_result))
de_result << des.final
puts "decrypted: #{de_result}\n"

