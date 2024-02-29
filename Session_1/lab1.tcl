
puts "**** Arithmetic Operations on Integer Operands ****"


set A 35
set B 80


set var00 [expr $A + $B]
set var01 [expr $A - $B]
set var02 [expr $A * $B]
set var03 [expr $A / $B]
set var04 [expr $A % $B]


puts "A + B = $var00"
puts "A - B = $var01"
puts "A * B = $var02"
puts "A / B = $var03"
puts "A % B = $var04"


puts "**** Arithmetic Operations on Floating Operands ****"


set C 35.0
set D 80


set var05 [expr $C + $D]
set var06 [expr $C - $D]
set var07 [expr $C * $D]
set var08 [expr $C / $D]
#set var09 [expr $C % $D]


puts "C + D = $var05"
puts "C - D = $var06"
puts "C * D = $var07"
puts "C / D = $var08"
#puts "C % D = $var09"