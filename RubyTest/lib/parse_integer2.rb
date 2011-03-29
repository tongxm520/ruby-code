n = 19
rtn = []
bin_n = n.to_s(2)
0.upto(bin_n.size-1) do |i| 
  rtn << 2**i if bin_n.reverse[i] - 48 == 1
end

p rtn

# 转成数字吧。我的环境是1.9.2，直接返回的是1或者0的字符。
# 在ruby1.8.7下可以这样改: n.to_s(2).reverse[i].chr == '1'}
#"abcdef"[3] => 100 return ascii code 
#"abcdef"[3] => "d" return char 
