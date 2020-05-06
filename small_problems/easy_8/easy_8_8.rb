# Write a method that takes a string, and returns a new string in which every consonant character is doubled. Vowels (a,e,i,o,u), digits, punctuation, and whitespace should not be doubled.


def is_consonant?(ch)
  ch =~ /[a-zA-Z]/ && ch =~ /[^aeiou]/
end

def double_consonants(str)
  results_str = ''
  str.each_char do |ch| 
    results_str << (is_consonant?(ch.downcase) ? ch << ch : ch)
  end
  results_str
end


p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""