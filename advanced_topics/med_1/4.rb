# Based on the examples shown above, write a method that takes an array as an argument. The method should yield the contents of the array to a block, which should assign your block variables in such a way that it ignores the first two elements, and groups all remaining elements as a raptors array.


def birdos(birds_arr)
  puts "Check out my birdos"
  yield(birds_arr)
  puts "That's all of them!"
end


birds = %w(raven finch hawk eagle)
birdos(birds) { |_, _, *raptors| p raptors }