# Write a method that takes one argument, a positive integer, and returns a string of alternating 1s and 0s, always starting with 1. The length of the string should match the given integer.

def stringy(num)
  # loop num times
  # if interate count is odd, add 1, if even, add 0 to result string
    # x % 2
  # return result string

  result = ''
  (1..num).each {|n| result << (n % 2).to_s }
  result
end


# Modify stringy so it takes an optional argument that defaults to 1. If the method is called with this argument set to 0, the method should return a String of alternating 0s and 1s, but starting with 0 instead of 1.

def stringy_mod(num, start = 1)
  result = ''
  last = num + start - 1 
  (start..last).each {|n| result << (n % 2).to_s }

  result
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

puts stringy_mod(6, 0) == '010101'
puts stringy_mod(4, 0) == '0101'