# Write a program that will ask a user for an input of a word or multiple words and give back the number of characters. Spaces should not be counted as a character.

def nonspace_chars(str)
  str.split.join.size
end

puts "What say you!?"
str = gets.chomp

puts "There are #{nonspace_chars(str)} characters in '#{str}'"