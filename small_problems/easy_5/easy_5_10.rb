# Write a method that will take a short line of text, and print it within a box.

# given a string of n chars
# output five strings
# Top string, which consists of a first and last corner pieces +- and -+
# An upper space string, which consists of two sides, | and |, with n+2 spaces in between
# A text string, with left and right boundaries and space, with text in between
# A lower space string, identical to the upper space string
# Bottom string, which is identical to top string

# assign the number of chars in str to a var
# define the row types in an array: edge, middle, text, middle, edge
# iterate from 0-4
# depending on the iteration, build either an edge, middle, or text row
# to build an edge, +-, str.size * '-', -+
# to build a middle, '| ' + str.size * ' ' + ' |'
# to build a text, '| ' + str + ' |'
# puts that row
ROWS = %w(edge middle text middle edge)
CHAR_LIMIT = 76

def print_in_box(str)

  0.upto(4) do |i|
    case ROWS[i]
    when 'edge'
      puts '+-' + '-' * str.size + '-+'
    when 'middle'
      puts '| ' + ' ' * str.size + ' |'
    when 'text'
      puts '| ' + str + ' |'
    end
  end

end

def build_box(part, str)

  case part
  when 'top'
    puts '+-' + '-' * CHAR_LIMIT + '-+'
    puts '| ' + str * CHAR_LIMIT + ' |'
  when 'bottom'
    puts '| ' + str * CHAR_LIMIT + ' |'
    puts '+-' + '-' * CHAR_LIMIT + '-+'
  when 'text limit'
    puts '| ' + str + ' |'
  when 'last line'
    puts '| ' + str + ' ' * (CHAR_LIMIT - str.size) + ' |'
  end

end

def print_in_box_wrap(str)
  # check if str.size > 76
  # if so, then create an array to hold full string
  # (string.size / 76).upto > full_str[i] = 'str.slice(0 + (76 * i), 75 + (75 * i)'
  # puts top
  # puts middle
  # 0.upto (full_str.size - 1)
  # puts '| ' + full_str[i] + ' |'
  # puts middle
  # puts bottom

  return print_in_box(str) if str.size <= CHAR_LIMIT

  full_str = []
  
  0.upto(str.size / CHAR_LIMIT) do |i|
    offset = CHAR_LIMIT * i
    full_str[i] = str.slice(0 + offset, CHAR_LIMIT)
  end

  last_line = full_str.pop

  build_box('top', ' ')

  counter = 0
  loop do
    build_box('text limit', full_str[counter])
    counter += 1
    break build_box('last line', last_line) if full_str.size == counter
  end

  build_box('bottom', ' ')

end




print_in_box_wrap('To boldly go where no one has gone before.')
print_in_box_wrap('')
print_in_box_wrap('Replaces the contents and taintedness of str with the corresponding values in other_str. Replaces the contents and taintedness of str with the corresponding values in other_str. Replaces the contents and taintedness of str with the corresponding values in other_str.Replaces the contents and taintedness of str with the corresponding values in other_str.')
