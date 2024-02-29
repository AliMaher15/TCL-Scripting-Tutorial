puts "\n"

#read the rtl file data
set rtl_h [open rtl.txt r]
set rtl_d [read $rtl_h]

#creating designs list
regsub -all "\n" $rtl_d " " designs

#print the list
puts $designs

puts "\n"

#close rtl file handle
close $rtl_h