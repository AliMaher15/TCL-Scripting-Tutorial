#Title
puts "**** File I/O & Regsub Lab ****"

#open the file
set fh [open Interface.txt r+]

#read the data of the file
set Interface [read $fh]
puts $Interface

#create a second file 
set fhnew [open Interface_new.txt w+]

#creating lists of the ports
set in_ports [list IN \
                   Load \
                   Up \
                   Down \
                   Clk \
                   ]

set out_ports [list High \
                    Counter \
                    Low \
                    ]

#substitule input word by reg
regsub -all "input" $Interface "reg" Interface
#substitule output word by wire
regsub -all "output" $Interface "wire" Interface
#loop for input ports
foreach loop $in_ports {
regsub -all "$loop " $Interface "i_$loop;" Interface
}
#loop for output ports
foreach loop $out_ports {
regsub -all "$loop " $Interface "o_$loop;" Interface
}

#print file content
puts $Interface
puts $fhnew $Interface

#closing the files
close $fh
close $fhnew