# Write a method that takes one argument, an array containing integers, and returns the average of all numbers in the array. The array will never be empty and the numbers will always be positive integers.

# Can you change the return value of average from an Integer to a Float?

def average(nums)
  sum = 0
  # nums.each {|num| sum += num}
  sum = nums.reduce(:+)
  sum.to_f / nums.count
end


puts average([1, 5, 87, 45, 8, 8]) # == 25
puts average([9, 47, 23, 95, 16, 52]) # == 40
puts average([5, 6, 6])