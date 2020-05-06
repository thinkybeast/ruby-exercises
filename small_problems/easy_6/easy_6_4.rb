require 'pry'
require 'pry-byebug'
# Write a method that takes an Array as an argument, and reverses its elements in place; that is, mutate the Array passed into this method. The return value should be the same Array object.


def reverse!(arr)

  0.upto((arr.size - 1) / 2) do |i|
    arr[i], arr[-(i + 1)] = arr[-(i + 1)], arr[i]
  end
  # binding.pry
  arr
end




list = [1,2,3,4]
result = reverse!(list) # => [4,3,2,1]
list == [4, 3, 2, 1]
list.object_id == result.object_id

list = %w(a b c d e)
reverse!(list) # => ["e", "d", "c", "b", "a"]
list == ["e", "d", "c", "b", "a"]

list = ['abc']
reverse!(list) # => ["abc"]
list == ["abc"]

list = []
reverse!(list) # => []
list == []