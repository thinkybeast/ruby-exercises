require 'pry'
require 'pry-byebug'

# Write a method that takes an Array as an argument, and returns two Arrays that contain the first half and second half of the original Array, respectively. If the original array contains an odd number of elements, the middle element should be placed in the first half Array.


def halvsies(arr)
  
  # create empty arrays for half1 and half2
  # get the halfway point in array
  # iterate from zero to halfway, adding element at index to half1
  # iterate from halfway to size, adding elements to half2
  # return [half1, half2]

  half1, half2 = [], []
  half_index = (arr.size - 1) / 2
  
  arr.each_with_index { |el, i| i <= half_index ? half1 << el : half2 << el }

  [half1, half2]
end


p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]