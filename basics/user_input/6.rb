=begin
Write a program that displays a welcome message, but only after the user 
enters the correct password, where the password is a string that is defined 
as a constant in your program. Keep asking for the password until the user 
enters the correct password.

=end


PASSWORD = "animeROCKS69"

loop do
  print "Please enter you password: "
  break if gets.chomp == PASSWORD
  puts "Invalid password!"
end

puts "Welcome, you weirdo!"