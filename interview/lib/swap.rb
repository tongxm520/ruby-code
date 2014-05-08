def swap
  $a=$a+$b
  $b=$a-$b
  $a=$a-$b
end

def exchange
 $a=$a^$b
 $b=$a^$b
 $a=$a^$b
end

$a=35;$b=78
puts "(#{$a},#{$b})"
swap
puts "(#{$a},#{$b})"
exchange
puts "(#{$a},#{$b})"
