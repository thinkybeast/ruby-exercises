=begin
Write a program that requests two integers from the user, adds them together, 
and then displays the result. Furthermore, insist that one of the integers be 
positive, and one negative; however, the order in which the two integers are
entered does not matter.

Do not check for positive/negative requirement until after both integers are 
entered, and start over if the requirement is not met.
=end

def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

def get_number
  loop do 
    print "Enter a num num: "
    number = gets.chomp
    return number.to_i if valid_number?(number)
    puts "Number must be a non-zero integer. Try again."
  end
end

int_a = nil
int_b = nil

loop do
  puts "Enter one positive and one negative number."

  int_a = get_number
  int_b = get_number

  break if int_a * int_b < 0
  puts "I need you to give me ONE positive num num and ONE negative num num. PLEASE."
end

result = int_a + int_b
puts "Great nums!!!!! #{int_a} + #{int_b} = #{result}. Bet you didn't know that!"


