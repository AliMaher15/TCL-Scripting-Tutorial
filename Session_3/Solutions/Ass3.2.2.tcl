

set fh [open test.txt r+]
set file_data [read $fh]

set designs ""


foreach line $file_data { 
append designs $line " "
} 

puts "$designs"