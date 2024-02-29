#Title
puts "\n****Assignment 3.1****"
puts "**** report RTL change versions ****\n"

#read data in fifo version 0
set fifo0h [open fifo_ver0.txt r]
set fifo0d [read $fifo0h]

#read data in fifo version 1
set fifo1h [open fifo_ver1.txt r]
set fifo1d [read $fifo1h]

#read data in fifo version 2
set fifo2h [open fifo_ver2.txt r]
set fifo2d [read $fifo2h]

#create a report file
set reporth [open report.txt w+]

#compare version 0 and 1
if {[string compare $fifo0d $fifo1d]} {
    puts $reporth "fifo version 0 is different from fifo version 1"
    puts "fifo version 0 is different from fifo version 1"
} else {
    puts $reporth "fifo version 0 is identical to fifo version 1"
    puts "fifo version 0 is identical to fifo version 1"
}

#compare version 1 and 2
if {[string compare $fifo1d $fifo2d]} {
    puts $reporth "fifo version 1 is different from fifo version 2"
    puts "fifo version 1 is different from fifo version 2\n"
} else {
    puts $reporth "fifo version 1 is identical to fifo version 2"
    puts "fifo version 1 is identical to fifo version 2\n"
}

#closing the files handles
close $fifo0h
close $fifo1h
close $fifo2h
close $reporth