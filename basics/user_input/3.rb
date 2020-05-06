# Write a program that asks the user whether they want the program to print "something", then print it if the user enters y. Otherwise, print nothing.

puts "Want me to print something?"
puts "something" if gets.chomp.downcase == "y"
