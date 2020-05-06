# Write a method that takes two Array arguments in which each Array contains a list of numbers, and returns a new Array that contains the product of each pair of numbers from the arguments that have the same index. You may assume that the arguments contain the same number of elements.


def multiply_list(arr1, arr2)
  # initialize result array
  # each with index arr1
  # multiply el by el at arr2[index]
  # push result into result arr
  # result_arr = []
  # arr1.each_with_index do |num, i|
  #   result_arr << (num * arr2[i])
  # end 
  # result_arr

  # one-line solution with #zip
  arr1.zip(arr2).map { |el| el.reduce(:*) }

end


p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]