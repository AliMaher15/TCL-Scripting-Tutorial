#2, Title
puts "\n****Assingment 2.0****\n"

#3, create a list of cities
set cities {cairo alexandria damietta dakahlia faiyum sohag aswan}
puts "Initial list: $cities"

#create a new list with uppercase first litter
#Pre-allocation of the list
set Cities_New {}
#for each loop to store the new elements in the list
foreach city $cities {
set tmp [string toupper [string range $city 0 0]]
#puts "\nfirst letter: $tmp"
append tmp [string range $city 1 [string length $city]]
#puts "after appending tmp: $tmp"
append Cities_New "$tmp "
#puts "list: $Cities_New"
}

#print the list
puts "\nFinal list: $Cities_New \n"