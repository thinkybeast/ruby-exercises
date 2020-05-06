# Write a method that returns true if the string passed as an argument is a palindrome, false otherwise. A palindrome reads the same forward and backward. For this exercise, case matters as does punctuation and spaces.

  # starting with index 0 and index -1 [first and last chars]
  # compare chars
  # if equal, continue comparing, if not return false
  # either iterate through array using each w index
  # iterate through array using counter
  # recursive comparison, passing shortened array

# fun recursive solution
def palindrome_rec?(str)
  return str[0] == str[-1] && palindrome_rec?(str[1..-2]) if str.size > 2
  str[0] == str[-1]
end

def palindrome_arr?(arr)
  arr == arr.reverse
end



p palindrome_rec?('madam') == true
p palindrome_rec?('Madam') == false          # (case matters)
p palindrome_rec?("madam i'm adam") == false # (all characters matter)
p palindrome_rec?('356653') == true

p palindrome_rec?([3,4,5,5,4,3]) == true
p palindrome_rec?([3,4,5,6,5,4,3]) == true
p palindrome_rec?([3,4,4,6,5,4,3]) == false
