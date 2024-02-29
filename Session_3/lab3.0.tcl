#Display Title
puts "\n**** Arrays & Procedures ****\n"

#function to calculate average
proc Avg {a} {
upvar $a arr
set size [array size arr]
set keys [array names arr]
set sum 0
foreach x $keys {
set sum [expr $sum + $arr($x)]
}
set avg  [expr $sum / $size]
return $avg
}

#Declare array Mohamed
array set Mohamed {Waves 70 \
                   Electronics 85 \
                   Control 65 \
                   Comm 78 \
                   }
                 
#Declare array Ahmed
array set Ahmed {Waves 66 \
                 Electronics 80 \
                 Control 88 \
                 Comm 69 \
                 }

#Declare array Mostafa
array set Mostafa {Waves 72 \
                   Electronics 77 \
                   Control 70 \
                   Comm 88 \
                  }

#calculate GPA of Mohamed
set Mohamed_GPA [Avg Mohamed]

#print GPA of Mohamed
puts "Mohamed Accumalative GPA is $Mohamed_GPA\n"

#calculate GPA of Ahmed
set Ahmed_GPA [Avg Ahmed]
#print GPA of Ahmed
puts "Ahmed Accumalative GPA is $Ahmed_GPA\n"

#calculate GPA of Mostafa
set Mostafa_GPA [Avg Mostafa]
#print GPA of Mostafa
puts "Mostafa Accumalative GPA is $Mostafa_GPA\n"