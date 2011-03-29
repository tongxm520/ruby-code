#The program requires input twice, once for a string and once for a
#regular expression. The string is tested against the regular expression,
#then displayed with all the matching parts highlighted in reverse video.
# Requires an ANSI terminal!

st = "\033[7m"
en = "\033[m"

puts "Enter an empty string at any time to exit."

while true
  print "str> "; STDOUT.flush; str = gets.chop
  break if str.empty?
  print "pat> "; STDOUT.flush; pat = gets.chop
  break if pat.empty?
  re = Regexp.new(pat)
  puts str.gsub(re, "#{st}\\&#{en}")
end

#str> foobar
#pat> ^fo+
#foobar

#str> abc012dbcd555
#pat> \d
#abc012dbcd555

#str> foozboozer
#pat> f.*z
#foozboozer

#str> Wed Feb  7 08:58:04 JST 1996
#pat> [0-9]+:[0-9]+(:[0-9]+)?
#Wed Feb  7 08:58:04 JST 1996


#str> Okay, this: <0xfc0004>.
#pat> <0(x|X)(\d|[a-f]|[A-F])+> or  <0[x|X]([0-9]|[a-fA-F])+>
#Okay, this: <0xfc0004>.

#http://www.rubyist.net/~slagell/ruby/regexp.html


highlighted = str.gsub(re,"#{st}\\&#{en}")
puts highlighted
str.gsub!(re,"#{st}\\&#{en}")
puts str

#st and en were defined as the ANSI sequences that make text 
#color-inverted and normal, respectively. they are enclosed in #{} to
#ensure that they are actually interpreted as such (and we do not see the
#variable names printed instead). Between these we see \\&. This is a
#little tricky. Since the replacement string is in double quotes, the
#pair of backslashes will be interpreted as a single backslash; what
#gsub actually sees will be \&, and that happens to be a special code
#that refers to whatever matched the pattern in the first place. So the new string, when displayed, looks just like the old one,except that the parts that matched the given pattern are highlighted in inverse video.


