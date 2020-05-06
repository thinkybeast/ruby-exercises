# Write a method that takes a sorted array of integers as an argument, and returns an array that includes all of the missing integers (in order) between the first and last elements of the argument.

# Examples:

def missing(arr)
  # input: array
  # return: array
  # initialize result array
  # count from first int in array to last int in array
  # first.upto(last)
    # arr.includes?(counter)
  # that counter int does not exist in array, add it to result
  # return result array

  result = []

  arr.first.upto(arr.last) do |counter|
    result << counter unless arr.include?(counter)
  end

  result
end

p missing([-3, -2, 1, 5]) == [-1, 0, 2, 3, 4]
p missing([1, 2, 3, 4]) == []
p missing([1, 5]) == [2, 3, 4]
p missing([6]) == []