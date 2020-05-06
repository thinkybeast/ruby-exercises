# Build a program that asks a user for the length and width of a room in meters and then displays the area of the room in both square meters and square feet.
FT_PER_M = 10.7639
IN_PER_FT = 12
CM_PER_IN = 2.54


def room_area(length, width)
  area = length * width
  [area.round(2), (area * FT_PER_M).round(2)]
end

def room_area_ft(length, width)
 # Modify this program to ask for the input measurements in feet, and display the results in square feet, square inches, and square centimeters.
 sq_ft = length * width
 sq_in = sq_ft * IN_PER_FT
 sq_cm = sq_in * CM_PER_IN
 [sq_ft, sq_in, sq_cm]

end

puts "What's the length of the room in feet?"
length = gets.chomp.to_f
puts "What's the width of the room? in feet?"
width = gets.chomp.to_f

area_ft, area_in, area_cm = room_area_ft(length, width)

puts "The room is #{area_ft} sq. ft (#{area_in} sq. in, #{area_cm} sq. cm)"