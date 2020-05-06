def multiply_by_five(n)
  n * 5
end

puts "Hello! Which number would you like to multiply by 5?"
number = gets.chomp #bug! gets.chomp gets a string, not an int, so when we multiply a string, we get that string 5 times

puts "The result is #{multiply_by_five(number)}!" 