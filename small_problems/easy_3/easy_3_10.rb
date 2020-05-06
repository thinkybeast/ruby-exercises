# Write a method that returns true if its integer argument is palindromic, false otherwise. A palindromic number reads the same forwards and backwards.

def palindrome?(str)
  str == str.reverse
end

def palindromic_number?(num)
  if is_int?(num)
    num_str = num.to_s
  else
    num_str = '%o' % num
  end
  
  palindrome?(num_str)
end

def is_int?(num)
 
  num == num.to_s.to_i
end


p palindromic_number?(0034543) == true
# p palindromic_number?(123210) == false
# p palindromic_number?(22) == true
# p palindromic_number?(5) == true