require 'pry'
require 'pry-byebug'

# Write a method that returns a list of all substrings of a string that start at the beginning of the original string. The return value should be arranged in order from shortest to longest substring.


def substrings_at_start(str)
  result_arr = []
  1.upto(str.size) { |i| result_arr << str[0,i] }
  result_arr
end



p substrings_at_start('abc')  == ['a', 'ab', 'abc']
p substrings_at_start('a')  == ['a']
p substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']