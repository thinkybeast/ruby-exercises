# Write a program that asks the user to enter an integer greater than 0, then asks if the user wants to determine the sum or product of all numbers between 1 and the entered integer.

def get_sum(num)
  (1..num).reduce(:+)
end

def get_product(num)
  (1..num).reduce(:*)
end

number = nil
op = nil

loop do
  puts "Enter a positive integer"
  number = gets.chomp.to_i
  break if number > 0 
  puts "Number must be be positive integer"
end

loop do
  puts "Do you want the [s]um or the [p]roduct of the integers between 1 and #{number}?"
  op = gets.chomp.downcase
  break if ['s', 'p'].include?(op)
  puts "Didn't catch that. Type 's' for sum or 'p' for product."
end

case op
when 's'    
  puts "The sum of integers between 1 and #{number} is #{get_sum(number)}"
when 'p'
  puts "The product of integers between 1 and #{number} is #{get_product(number)}"
end

