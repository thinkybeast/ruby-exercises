# Write a method that can rotate the last n digits of a number.  


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



p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917