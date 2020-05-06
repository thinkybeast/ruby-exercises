=begin
In the previous exercise, you wrote a program to solicit a password. 
In this exercise, you should modify the program so it also requires a user name. 
The program should solicit both the user name and the password, then validate 
both, and issue a generic error message if one or both are incorrect; the error 
message should not tell the user which item is incorrect.

=end

USER = "goku69"
PASSWORD = "anime420"

loop do
  print "Enter your username: "
  user_guess = gets.chomp
  print "Enter you password: "
  pass_guess = gets.chomp
  break if user_guess == USER && pass_guess == PASSWORD
  puts "Invalid login information!" 
end

puts "Welcome, anime person."