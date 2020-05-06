# Write a method that takes an integer as argument, and returns the maximum rotation of that argument. 



def rotate_array(arr)
  arr[1..-1] << arr[0]
end

def rotate_string(str)
  rotate_array(str.chars).join
end

def rotate_rightmost_digits(num, r_pos)
  # convert num to str
  # take slice of str, -r_pos, r_pos
  # pass that into rotate str
  # append result to original sliced str str[0..(-r_pos - 1)]

  num_str = num.to_s
  first_slice = num_str[0..(-r_pos -1)]
  rotate_slice = rotate_string(num_str.slice(-r_pos, r_pos))
  (first_slice + rotate_slice).to_i

end

def max_rotation(num)
  num.digits.size.downto(2) do |r_pos|
    num = rotate_rightmost_digits(num, r_pos)
  end
  num
end


p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845