# Write another method that returns true if the string passed as an argument is a palindrome, false otherwise. This time, however, your method should be case-insensitive, and it should ignore all non-alphanumeric characters. If you wish, you may simplify things by calling the palindrome? method you wrote in the previous exercise.

VALID_CHARS = ('a'..'z').to_a + ('A'..'Z').to_a + (0..9).to_a

def palindrome?(str)
  return str[0] == str[-1] && palindrome?(str[1..-2]) if str.size > 2
  str[0] == str[-1]
end

def real_palindrome?(str)
  # strip string of spaces and non-alpha chars
  alphanum_str = str.downcase.delete('^a-z0-9')
  palindrome?(alphanum_str)
end

p real_palindrome?('madam') == true
p real_palindrome?('Madam') == true           # (case does not matter)
p real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
p real_palindrome?('356653') == true
p real_palindrome?('356a653') == true
p real_palindrome?('123ab321') == false