# Write a method that takes one argument, a positive integer, and returns the sum of its digits.

def sum(num)
  # convert num to string
  # split string into its component chars and add to array
  # map chars to ints
  # sum the ints in that array and return the result

  digits = num.to_s.split('')
  digits.map(&:to_i).reduce(:+)
end


puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45