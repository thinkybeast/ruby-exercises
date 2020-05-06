=begin
Write a method that displays an 8-pointed star in an nxn grid, where n is an odd integer that is supplied as an argument to the method. The smallest such star you need to handle is a 7x7 grid.

Examples

star(7)

*  *  *
 * * *
  ***
*******
  ***
 * * *
*  *  *
star(9)

*   *   *
 *  *  *
  * * *
   ***
*********
   ***
  * * *
 *  *  *
*   *   *
=end

def print_row(i, size)
  spacing = ' ' * (i - 1) 
  row = '*' + spacing + '*' + spacing + '*'
  puts row.center(size)
end

def print_mid(size)
  puts '*' * size
end

def star(size)
  half = size / 2
  half.downto(1) { |i| print_row(i, size) }
  print_mid(size)
  1.upto(half) { |i| print_row(i, size) }
end


star(9)



