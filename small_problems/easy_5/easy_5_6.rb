# Letter Counter (Part 1)
# Write a method that takes a string with one or more space separated words and returns a hash that shows the number of words of different sizes.

# Words consist of any string of characters that do not include a space.

# create an empty hash with default value 0
# iterate through an array of words
# using word.length as the hash key, increment the value by 1
# return the hash

def word_sizes(str)
  word_count = Hash.new(0)

  str.split(' ').each do |word|
    word_count[word.size] += 1
  end

  word_count

end


p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}