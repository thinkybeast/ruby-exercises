# A featured number (something unique to this exercise) is an odd number that is a multiple of 7, and whose digits occur exactly once each. So, for example, 49 is a featured number, but 98 is not (it is not odd), 97 is not (it is not a multiple of 7), and 133 is not (the digit 3 appears twice).

# Write a method that takes a single integer as an argument, and returns the next featured number that is greater than the argument. Issue an error message if there is no next featured number.


# Input integer
# Output integer
# Find first multiple of 7 
# Check if odd and if digits.uniq
# return if true, else jump 7 and check again

MAXNUM = 1_000_000_000 

def none_found
  puts 'There is no possible number that fulfills those requirements'
end

def find_valid(num)
  loop do 
    num += 1
    break if num % 7 == 0 && num.odd?
  end

  num
end

def uniq?(num)
  num.digits.uniq == num.digits
end

def featured(num)
  next_seven = find_valid(num)

  while next_seven < MAXNUM do
    break if next_seven.odd? && uniq?(next_seven)
    next_seven += 14
  end

  next_seven >= MAXNUM ? none_found : next_seven
end


p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
featured(9_999_999_999)