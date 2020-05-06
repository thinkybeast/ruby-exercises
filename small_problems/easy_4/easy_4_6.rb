# Write a method that takes an Array of numbers, and returns an Array with the same number of elements, and each element has the running total from the original Array.

def running_total(num_arr)
=begin solution with reduce
  return [] if num_arr.empty?
  sum_arr = []
  sum_arr << num_arr.reduce do |sum, n|  
    sum_arr << sum
    sum = sum + n
  end
=end

=begin solution with #each_with_index
  sum_arr = []
  sum = 0
  num_arr.each_with_index do |n, i|
    sum += n
    sum_arr[i] = sum
  end
  sum_arr
=end

  sum = 0
  num_arr.each_with_object([]) { |el, arr| arr << sum += el }

end


p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([])  == []