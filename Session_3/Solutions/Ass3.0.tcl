
puts "****Assignment 3.0****"
puts "**** Reporting Files types & change files paths  ****"

#procedure
proc pfilestype {files_lst} {

foreach loop $files_lst {
set dot_index [string last "." $loop]
set file_format [string range $loop [expr $dot_index + 1] [expr [string length $$loop] - 1] ]

if {$file_format == "v"} {
puts "[string range $loop 0 [expr $dot_index - 1]] is Verilog File"
} elseif {$file_format == "tcl"} {
puts "[string range $loop 0 [expr $dot_index - 1]] is TCL File"
} elseif {$file_format == "rpt"} {
puts "[string range $loop 0 [expr $dot_index - 1]] is report File"
}

}

}


array set Files { uart_tx_top.v	/users/alieltemsah/projects/rtl     \
                  Serializer.v	/users/alieltemsah/projects/rtl     \
                  fsm_ctrl.v	/users/alieltemsah/projects/rtl     \
                  synth.tcl	    /users/alieltemsah/projects/scripts \
                  timing.rpt	/users/alieltemsah/projects/reports \
                  power.rpt	    /users/alieltemsah/projects/reports \
                  area.rpt	    /users/alieltemsah/projects/reports \
}

set keys [array names Files]

#call the procedure
pfilestype $keys


puts "***************New Paths****************"

foreach x $keys {
 set key_value $Files($x) 
 
 regsub -nocase "alieltemsah" $key_value "MostafaMohamed" key_value

 puts $key_value
 
}














