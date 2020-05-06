# Write a method that takes a string, and returns a new string in which every character is doubled.

def repeater(str)
  str.chars.map { |ch| ch + ch }.join
end


p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''