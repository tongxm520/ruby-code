#Base64是网络上最常见的用于传输8Bit字节代码的编码方式之一，大家可以查看RFC2045～RFC2049，
#上面有MIME的详细规范。Base64编码可用于在HTTP环境下传递较长的标识信息。例如，在Java 
#Persistence系统Hibernate中，就采用了Base64来将一个较长的唯一标识符（一般为128-bit的UUID）
#编码为一个字符串，用作HTTP表单和HTTP GET URL中的参数。在其他应用程序中，也常常需要把二进制数据
#编码为适合放在URL（包括隐藏表单域）中的形式。此时，采用Base64编码不仅比较简短，同时也具有不可读
#性，即所编码的数据不会被人用肉眼所直接看到。

require "base64"

enc = Base64.encode64('begin+Send reinforcements+end')
# -> "U2VuZCByZWluZm9yY2VtZW50cw==\n" 
plain = Base64.decode64(enc)
plain.split("+")[1]
# -> "Send reinforcements"



