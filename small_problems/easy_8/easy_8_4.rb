


def substrings_at_start(str)
  result_arr = []
  1.upto(str.size) { |i| result_arr << str[0,i] }
  result_arr
end

def substrings(str)
  result_arr = []
  0.upto(str.size - 1) do |i|
    result_arr << substrings_at_start(str[i..-1])
  end
  result_arr.flatten
end

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde', 
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]