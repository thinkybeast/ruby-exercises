=begin
Modify this program so it repeats itself after each input/print iteration, 
asking for a new number each time through. The program should keep 
running until the user enters q or Q.
=end

number_of_lines = nil


loop do
  loop do
    puts '>> How many output lines do you want? Enter a number >= 3, or q to quit:'
    number_of_lines = gets.chomp
    break if number_of_lines.to_i >= 3 || number_of_lines.downcase == 'q'
    puts ">> That's not enough lines."
  end

  break if number_of_lines.downcase == 'q'
  
  number_of_lines = number_of_lines.to_i

  while number_of_lines > 0
    puts 'Launch School is the best!'
    number_of_lines -= 1
  end
end

puts "No more lines then."