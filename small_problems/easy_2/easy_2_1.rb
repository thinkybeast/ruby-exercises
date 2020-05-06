# Build a program that randomly generates and prints Teddy's age. To get the age, you should generate a random number between 20 and 200.

def their_age(name)
  name = 'Teddy' if name == ''
  puts "#{name} is #{rand(20..200)} years old!"
end

puts "Who's the lucky person?"
name = gets.chomp
their_age(name)