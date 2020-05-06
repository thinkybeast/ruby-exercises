# In the previous exercise, you developed a method that converts non-negative numbers to strings. In this exercise, you're going to extend that method by adding the ability to represent negative numbers as well.

# Write a method that takes an integer, and converts it to a string representation


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

# original solution
# def signed_integer_to_string(num)
#   sign = num == num.abs ? "+" : "-" 
#   num != 0 ? sign + integer_to_string(num.abs) : integer_to_string(num)
# end

# refactored LS solution
def signed_integer_to_string(number)
  sign =  case number <=> 0
          when -1 then "-"
          when +1 then "+"
          else         ''
          end

  sign + integer_to_string(number.abs)
end




p signed_integer_to_string(4321)   == '+4321'
p signed_integer_to_string(-123)  == '-123'
p signed_integer_to_string(0)  == '0'