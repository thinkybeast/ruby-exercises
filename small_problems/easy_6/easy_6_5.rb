# Write a method that takes an Array, and returns a new Array with the elements of the original list in reverse order. Do not modify the original list.



def reverse(arr)
  arr.inject([]) {|reverse_arr, el| reverse_arr.prepend(el) }
  
  # alt solution
  # reverse_arr = []
  # (1..arr.size).each {|i| reverse_arr << arr[-i] }
  # reverse_arr
end


p reverse([1,2,3,4]) == [4,3,2,1]          # => true
p reverse(%w(a b c d e)) == %w(e d c b a)  # => true
p reverse(['abc']) == ['abc']              # => true
p reverse([]) == []                        # => true

list = [1, 2, 3]                      # => [1, 2, 3]
new_list = reverse(list)              # => [3, 2, 1]
list.object_id != new_list.object_id  # => true
list == [1, 2, 3]                     # => true
new_list == [3, 2, 1]                 # => true