=begin
In the previous exercise, you wrote a program that asks the user if they want the program to print "something". 
However, this program recognized any input as valid: if you answered anything but y, 
it treated it as an n response, and quit without printing anything.

Modify your program so it prints an error message for any inputs that aren't y or n, 
and then asks you to try again. Keep asking for a response until you receive a valid y or n response. 
In addition, your program should allow both Y and N (uppercase) responses; 
case sensitive input is generally a poor user interface choice. Whenever possible, 
accept both uppercase and lowercase inputs.

#first solution
loop do
  puts "Want me to print something?"
  case gets.chomp.downcase
    when 'y'
      puts "something"
      break
    when 'n'
      break
  end
  puts "Sorry, I need a 'y' or and 'n'. I'll ask again"
end

=end

choice = nil

loop do
  puts "Want me to print something?"
  choice = gets.chomp.downcase
  break if %w(y n).include?(choice) #make an array of viable responses, then use the include method to see if the user's input matches any of the valid responses
  puts "Sorry, your need to respond with 'y' or 'n'. I'll ask again."
end

puts "something" if choice == 'y'