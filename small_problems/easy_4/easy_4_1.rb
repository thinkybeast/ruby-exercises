# Write a method that takes two strings as arguments, determines the longest of the two strings, and then returns the result of concatenating the shorter string, the longer string, and the shorter string once again. You may assume that the strings are of different lengths.


def short_long_short(str_a, str_b)
  # input two strings
  # determine which is the shorter string
  # output string concat short-long-short

  return str_a + str_b + str_a if str_a.size < str_b.size
  str_b + str_a + str_b
end


p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"