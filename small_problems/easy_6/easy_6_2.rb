require 'pry'
require 'pry-byebug'
# Write a method that takes an array of strings, and returns an array of the same string values, except with the vowels (a, e, i, o, u) removed.

# map each string in array
# break string into chars, select chars that aren't aeiou, join chars into string
# return array

def remove_vowels(str_arr)
  # binding.pry
  str_arr.map do |str|
    str.chars.select{ |char| !%w(a e i o u).include?(char.downcase) }.join
  end
end



p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']