# Write a method that takes a positive integer, n, as an argument, and displays a right triangle whose sides each have n stars. The hypotenuse of the triangle (the diagonal side in the images below) should have one end at the lower-left of the triangle, and the other end at the upper-right.
STAR = '*'

def triangle(length, corner)
  case corner
  when 'topright'
    length.times { |i| puts (STAR * (length - i)).rjust(length) }
  when 'topleft'
    length.times { |i| puts (STAR * (length - i)).ljust(length) }
  when 'bottomright'
    length.times { |i| puts (STAR * (i + 1)).rjust(length) }
  when 'bottomleft'
    length.times { |i| puts (STAR * (i + 1)).ljust(length) }
  end

end


triangle(5, 'bottomleft')
