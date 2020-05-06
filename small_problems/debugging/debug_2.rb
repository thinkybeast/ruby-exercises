# String#upcase! is a destructive method, so why does this code print HEY you instead of HEY YOU? Modify the code so that it produces the expected output.
=begin
This occurs because the String#chars method returns a new array of characters. We  invoke the each method and pass in the array. In each iteration of the block, we upcase the char. However, that only transforms the chars in the array, not in the string name.

One way to resolve this is invoke #join on the array of upcased chars, which returns a string, and reassign that result to our variable name.
=end

def shout_out_to(name)
  name.upcase!

  puts 'HEY ' + name
end

shout_out_to('you') # expected: 'HEY YOU'