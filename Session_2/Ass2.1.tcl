#2, Display Title
puts "\n****Writing Verilog Block Interface****\n"
#3, module name
set modname "Up_Dn_Counter"
#4, name of input ports
set in_ports {IN Load Up Down CLK}
#5, width of input ports
set in_ports_width {4 1 1 1 1}
#6, name of output ports
set out_ports {High Counter Low}
#7, width of output ports
set out_ports_width {1 4 1}

#edit the width length lists
set input_width {}
set output_width {}
#in_ports_width
foreach n $in_ports_width {
if {[string match 1 $n]} {
append input_width "\t "
} else {
append input_width "\[[expr $n-1]:0\] "
}
}
#out_ports_width
foreach n $out_ports_width {
if {[string match 1 $n]} {
append output_width "\t "
} else {
append output_width "\[[expr $n-1]:0\] "
}
}

#printing the Verilog Block Interface
puts "module $modname ("
#input declaration
for {set i 0} {$i < [llength $in_ports]} {incr i} {
set name [lindex $in_ports $i]
set width [lindex $input_width $i]
puts "  input\t $width\t$name," 
}
#output declaration
for {set i 0} {$i < [llength $out_ports]} {incr i} {
set name [lindex $out_ports $i]
set width [lindex $output_width $i]
#should put if condition to check the comma at the end
if { $i != [expr [llength $out_ports] -1]} {
puts "  output $width\t$name," 
} else {
puts "  output $width\t$name"
}
}
#close
puts "  );\n"