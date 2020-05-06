require 'pry'
require 'pry-byebug'


=begin
In this exercise, your task is to create a new Enumerator object. When creating a new Enumerator, you may define what values are iterated upon. We'll want to create an Enumerator that can iterate over an infinite list of factorials. Once you make this new Enumerator, test it out by printing out the first 7 factorial values, starting with zero factorial.

More specifically, print the first 7 factorials by using an "External Iterator". Once you have done so, reset your Enumerator. Finally, reprint those same 7 factorials using your Enumerator object as an "Internal Iterator".
=end


factorial = Enumerator.new do |y|
  current = 1
  next_val = 1
  y << next_val
  loop do
    next_val *= current 
    y << next_val
    current += 1
  end
end


counter = 0

loop do
  break if counter == 7
  puts factorial.next 
  counter += 1
end


p factorial.take(7)

