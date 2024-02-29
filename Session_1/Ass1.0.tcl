puts "\n ****Logical Operations****"

set a 5
set b -1
set c 0

set var0 [expr $a && $c]
set var1 [expr $a || $b]

puts "\n The value of var0 is $var0"
puts " The value of var1 is $var1\n"