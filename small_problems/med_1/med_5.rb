# Write a method that displays a 4-pointed diamond in an n x n grid, where n is an odd integer that is supplied as an argument to the method. You may assume that the argument will always be an odd integer.

def print_row(stars, width)
  puts ('*' * stars).center(width)
end

def top(width)
  counter = 1
  loop do 
    break if counter == width
    print_row(counter, width)
    counter += 2 
  end
end

def bottom(width)
  counter = width
  loop do
    print_row(counter, width)
    counter -=2
    break if counter < 1
  end
end

def diamond(n)
  top(n)
  bottom(n)
end

def print_tip(width)
  puts '*'.center(width)
end

def print_outline(spaces, width)
  row = '*' + (' ' * spaces) + '*'
  puts row.center(width)
end

def top_outline(width)
  1.step(width - 2, 2) { |i| print_outline(i, width) }
end

def bottom_outline(width)
  (width - 4).step(1, -2) { |i| print_outline(i, width) }
end

def diamond_outline(n)
  print_tip(n)
  top_outline(n)
  bottom_outline(n)
  print_tip(n)
end


diamond(5)
diamond_outline(3)


#     *
#    ***
#   *****
#  *******
# *********
#  *******
#   *****
#    ***
#     *


#   *
#  * *
# *   *
#*     *
#  * *
#   *