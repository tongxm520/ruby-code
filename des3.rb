require 'openssl'
require 'base64'
require 'iconv'


def des3_decrypt(assert)
  key = Base64.decode64('s56dZN+kAY+KwshANAeAlA6P5f5FNCp5')
  des = OpenSSL::Cipher::Cipher.new("des-ede3")
  des.decrypt
  des.key = key
  result = des.update([assert].pack("H*"))
  result << des.final
  result = Base64.decode64(result)
  Iconv.iconv('utf-8', 'gbk', result)
end

puts des3_decrypt("532F60E309D7243DC6E080584318D60F")

#java加密ruby解密
#SEED值：idesseedche 

#参考： 

#原文:今天天气很好 
#加密:D80C0E48F1262F7AB9AC1D207C929206 
#解密:今天天气很好 


#原文:今天天气不错 
#加密:D80C0E48F1262F7AD79C17D98487FB27 
#解密:今天天气不错 

#原文:其实今天是在下大雨 
#加密:42C09E6DC5BBD0EF560F1860E54AD522C664612AAD1EEF2D 
#解密:其实今天是在下大雨 

#密文:AE86424DA886538A7D928D8209C056B3C6E080584318D60F 
#解密:helloworld

#密文:532F60E309D7243DC6E080584318D60F 
#解密:hello 


