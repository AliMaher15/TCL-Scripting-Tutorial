
puts "**** Assignment 3.1 ****"
puts "**** Reporting Files types & change files paths  ****"

# open fifo_ver0 file for reading
set fh0 [open fifo_ver0.txt r+]
set file_data0 [read $fh0]

# open fifo_ver1 file for reading
set fh1 [open fifo_ver1.txt r+]
set file_data1 [read $fh1]

# open fifo_ver2 file for reading
set fh2 [open fifo_ver2.txt r+]
set file_data2 [read $fh2]


# open report file for appending
set fh3 [open report.txt a+]

# Compare files content
set ver0_ver1 [string compare $file_data0 $file_data1]
set ver1_ver2 [string compare $file_data1 $file_data2]


if {$ver0_ver1 == 0} {
puts "fifo version 0 is identical to fifo version 1"
puts $fh3 "fifo version 0 is identical to fifo version 1"
} else {
puts "fifo version 0 is different from fifo version 1"
puts $fh3 "fifo version 0 is different from fifo version 1"
}

if {$ver1_ver2 == 0} {
puts "fifo version 1 is identical to fifo version 2"
puts $fh3 "fifo version 1 is identical to fifo version 2"
} else {
puts "fifo version 1 is different from fifo version 2"
puts $fh3 "fifo version 1 is different from fifo version 2"
}
 

# close all the opened files 
close $fh0 
close $fh1
close $fh2
close $fh3