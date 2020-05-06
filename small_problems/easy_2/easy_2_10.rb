# What will the following code print, and why? Don't run the code until you have tried to answer.

array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2

# Should print array of names with CURLY SHEMP and CHICO upcased. 
# in this program we iterate through array1 and add each element to array2. all of array2's elements store the same reference values as array1. when we then mutate some of those array1 elements with upcase!, the elements in array2 will reflect those changes because they reference the same object.