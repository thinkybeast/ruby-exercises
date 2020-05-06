# Write a method that takes one integer argument, which may be positive, negative, or zero. This method return true if the number's absolute value is odd. You may assume that the argument is a valid integer value.

def is_odd?(num)
  num % 2 == 1
end

#  Rewrite #is_odd? to use Integer#remainder instead of %
def still_odd?(num)
  num.remainder(2).abs == 1
end


puts still_odd?(2)    # => false
puts still_odd?(5)    # => true
puts still_odd?(-17)  # => true
puts still_odd?(-8)   # => false
puts still_odd?(0)    # => false
puts still_odd?(7)  