# Modify the code below so that the user's input gets added to the numbers array. Stop the loop when the array contains 5 numbers.

numbers = []

# until numbers.length == 5 do
#   puts 'Enter any number:'
#   numbers << gets.chomp.to_i
# end

# fun way to do it
do
  puts 'Enter any number'
  break if (numbers << gets.chomp.to_i).length == 5
end

puts numbers