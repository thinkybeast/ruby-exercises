# Write a method that rotates an array by moving the first element to the end of the array. The original array should not be modified.


def rotate_array(arr)
  arr[1..-1] << arr[0]
end

def rotate_string(str)
  rotate_array(str.chars).join
end

def rotate_int(num)
  rotate_string(num.to_s).to_i
end

p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
x == [1, 2, 3, 4]                 # => true

str = "hello"
p rotate_string(str)
p str == "hello"

num = 1234
p rotate_int(num)
p num == 1234