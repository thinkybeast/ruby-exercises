# Write a program that prompts the user for two positive integers, and then prints the results of the following operations on those two numbers: addition, subtraction, product, quotient, remainder, and power. Do not worry about validating the input.

# check if valid number

# check if non-zero


operations = [:+, :-, :*, :/, :%, :**]
numbers = []

print "Enter the first number: "
numbers[0] = gets.chomp.to_f


loop do
  print "Enter the second number: "
  numbers[1] = gets.chomp.to_f
  break if numbers[1] != 0
  puts "Sorry, won't be able to divide by zero. Enter a different number."
end

operations.each do |op|
  puts "==> #{numbers[0]} #{op.to_s} #{numbers[1]} = #{numbers.reduce(&op)}"
end
