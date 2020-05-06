# Write a method that takes a String of digits, and returns the appropriate number as an integer. The String may have a leading + or - sign; if the first character is a +, your method should return a positive number; if it is a -, your method should return a negative number. If no sign is given, you should return a positive number.


DIGITS = {
  '0' => 0,
  '1' => 1,
  '2' => 2,
  '3' => 3,
  '4' => 4,
  '5' => 5,
  '6' => 6,
  '7' => 7,
  '8' => 8,
  '9' => 9
}

=begin more verbose solution
def string_to_signed_integer(str)
  # take in a str
  # check first char, if '-' then chop it and set sign var to -1
  # convert str to int 
  #  multiply int by sign var and reutn


  sign = 1
  digits = str.chars.reverse
  if digits.last == '-'
    digits.pop
    sign = -1
  elsif digits.last == '+'
    digits.pop
  end
  digits.map!.with_index {|el, i| DIGITS[el] * (10 ** i)}
  sign * digits.reduce(:+)

end
=end

def string_to_integer(str)
  digit_chrs = str.chars.reverse
  digit_chrs.map!.with_index {|ch, i| DIGITS[ch] * (10 ** i)}
  digit_chrs.reduce(:+)
end


def string_to_signed_integer(string)
  
  sign = 1
  case string[0]
  when '-' 
    string.slice!(0)
    sign = -1
  when '+' 
    string.slice!(0)
  end
  
  string_to_integer(string) * sign

end

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100









