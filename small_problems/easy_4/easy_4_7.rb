# The String#to_i method converts a string of numeric characters (including an optional plus or minus sign) to an Integer. String#to_i and the Integer constructor (Integer()) behave similarly. In this exercise, you will create a method that does the same thing.

# Write a method that takes a String of digits, and returns the appropriate number as an integer. You may not use any of the methods mentioned above.

STR_TO_INT = {
  '0' => 0,
  '1' => 1,
  '2' => 2,
  '3' => 3,
  '4' => 4,
  '5' => 5,
  '6' => 6,
  '7' => 7,
  '8' => 8,
  '9' => 9,
}

STR_TO_HEX = {
  '0' => 0,
  '1' => 1,
  '2' => 2,
  '3' => 3,
  '4' => 4,
  '5' => 5,
  '6' => 6,
  '7' => 7,
  '8' => 8,
  '9' => 9,
  'A' => 10,
  'B' => 11,
  'C' => 12,
  'D' => 13,
  'E' => 14,
  'F' => 15
}

def string_to_integer(str)
  # take in string
  # break string into array of chars (chars) and reverse it
  # for each char, find the integer value of that char and multiply it by 10**index position (map)
  # sum the values of those chars (reduce)

  digit_chrs = str.chars.reverse
  digit_chrs.map!.with_index {|ch, i| STR_TO_INT[ch] * (10 ** i)}
  digit_chrs.reduce(:+)

end

def hexadecimal_to_integer(str)
  digit_chrs = str.chars.reverse
  digit_chrs.map!.with_index {|ch, i| STR_TO_HEX[ch.upcase] * (16 ** i)}
  digit_chrs.reduce(:+)
end


p string_to_integer('4321')  == 4321
p string_to_integer('570')  == 570
p hexadecimal_to_integer('4D9f') # == 19871
