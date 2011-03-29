#0377        # Octal representation of 255
#0b1111_1111 # Binary representation of 255
#0xFF        # Hexadecimal representation of 255

# 中文标点符号： ，、：‘’ “” 。？－
#ruby中3个字节表示一个中文字符
# \ "等符号必须转义 

def oct_to_bin(str)
  #return "integer must be like \357\274\214!" if str =~ //
  a = str.split("\\")[1..-1]
  
  a.each_with_index do |e, i|
    item = []
    e.split("").each do |j|
      case j
      when "0": item << "000"
      when "1": item << "001"
      when "2": item << "010"
      when "3": item << "011"
      when "4": item << "100"
      when "5": item << "101"
      when "6": item << "110"
      when "7": item << "111"
      end
    end
    a[i] = item.join("")
  end
  a.join("\\")
end

def bin_to_hex(str)
  a = str.split("\\")
  
  a.each_with_index do |e, i|
    item = []
    [e[1..4], e[5..8]].each do |j|
      case j
      when "0000": item << "0"
      when "0001": item << "1"
      when "0010": item << "2"
      when "0011": item << "3"
      when "0100": item << "4"
      when "0101": item << "5"
      when "0110": item << "6"
      when "0111": item << "7"
      when "1000": item << "8"
      when "1001": item << "9"
      when "1010": item << "a"
      when "1011": item << "b"
      when "1100": item << "c"
      when "1101": item << "d"
      when "1110": item << "e"
      when "1111": item << "f"
      end
    end
    a[i] = item.unshift("x").join("")
  end
  a.join("\\")
end

def oct_to_hex(str)
  "\\" + bin_to_hex(oct_to_bin(str))
end

def bin_to_dec(str)
  a = str.split("\\")
  a.each_with_index do |e, i|
    sum = 0
    e.size.times do |j|
      sum += 2**j if e[-1-j] - 48 == 1
    end
    a[i] = sum.to_s
  end
  a.join("\\")
end

lambda do 
  puts "，"
  puts "，"[0]
  puts "，"[1]
  puts "，"[2]
  puts oct_to_bin("\\357\\274\\214")
  puts oct_to_hex("\\357\\274\\214")
  puts bin_to_dec(oct_to_bin("\\357\\274\\214"))
  puts "abc,def" =~ /\xef\xbc\x8c/
  puts "abc，def" =~ /\xef\xbc\x8c/
end.call

