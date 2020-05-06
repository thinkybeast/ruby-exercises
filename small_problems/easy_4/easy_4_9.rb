# Write a method that takes a positive integer or zero, and converts it to a string representation.

CHARS = {
  0 => '0',
  1 => '1',
  2 => '2',
  3 => '3',
  4 => '4',
  5 => '5',
  6 => '6',
  7 => '7',
  8 => '8',
  9 => '9'
}

def integer_to_string(num)
  # digit = num % 10 ** (place)
  str = ''
  loop do 
    str = CHARS[num % 10] + str
    num /= 10
    break if num <= 0
  end
  str
end



p integer_to_string(4321)  == '4321'
p integer_to_string(0)  == '0'
p integer_to_string(5000)  == '5000'