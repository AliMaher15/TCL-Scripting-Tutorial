puts "\n ****Bitwise Operations****"

set a 20
set b 5
set c 9

set var0 [expr $a & $c]
set var1 [expr $a | $b]
set var2 [expr $a ^ $a]

puts "\n The value of var0 is $var0"
puts " The value of var1 is $var1"
puts " The value of var2 is $var2\n"