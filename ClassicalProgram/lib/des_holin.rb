require 'openssl'
require 'base64'

# For testing purposes only!
message = %(1. 服务器空间（m0~m8）
2. 备份最新几个周期的数据
3. sed处理最新几个周期的备份数据
4. final同步最新周期数据)
key = 'password' 

# Encrypt plaintext using Triple DES
cipher = OpenSSL::Cipher::Cipher.new("des-cbc")
cipher.encrypt # Call this before setting key or iv
cipher.key = key
# cipher.iv = iv
ciphertext = cipher.update(message)
ciphertext << cipher.final

puts "Encrypted \"#{message}\" with \"#{key}\" to:\n\"#{ciphertext}\"\n"

# Base64-encode the ciphertext
encodedCipherText = Base64.encode64(ciphertext)

puts "AfterBase64 encodedCipherText is : #{encodedCipherText}"

# encodedCipherText = "yMMveNxcmU3qc7zDVMSCAZNP+2w1Ee01WWuZArH9RphcclTv0C7ToJLd+JFlKGNC2VmGj4qjJsHnyfKv9H0qJpBalOeImsKJ"

# Base64-decode the ciphertext and decrypt it
cipher.decrypt
plaintext = cipher.update(Base64.decode64(encodedCipherText))
plaintext << cipher.final

# Print decrypted plaintext; should match original message
puts "Decrypted #{plaintext}"
