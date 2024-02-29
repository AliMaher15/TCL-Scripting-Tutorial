#display title
puts "\n**** Reporting Files types & change files paths ****\n"

#function that display the type of files
proc pfiletype {keys} {
    foreach x $keys {
        set name [string range $x 0 [expr [string first . $x]-1]]
        if {[string match *v $x]} {
            set type Verilog
        } elseif {[string match *tcl $x]} {
                set type Tcl
        } else {
                set type report
        }
        puts "$name is a $type file"
    }
}

#array of Files and paths
array set Files {uart_tx_top.v  "/users/alieltemsah/projects/rtl"   \
                 Serializer.v   "/users/alieltemsah/projects/rtl"   \
                 fsm_ctrl.v     "/users/alieltemsah/projects/rtl"   \
                 synth.tcl      "/users/alieltemsah/projects/scripts"   \
                 timing.rpt     "/users/alieltemsah/projects/reports"   \
                 power.rpt      "/users/alieltemsah/projects/reports"   \
                 area.rpt       "/users/alieltemsah/projects/reports"   \
                 }

#calling pfiletype procedure
pfiletype [array names Files]

puts "\n"

#change files paths
foreach key [array names Files] {
    set old_path $Files($key)
    regsub "alieltemsah" $old_path "AliMaher" new_path
    set Files($key) $new_path
}

#display with the new paths to files
parray Files

puts "\n"