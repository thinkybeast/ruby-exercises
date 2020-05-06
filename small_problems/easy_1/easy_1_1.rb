# Write a method that takes two arguments, a string and a positive integer, and prints the string as many times as the integer indicates.

def repeat(message, num)
  num.times{ puts message}
end


repeat('Hello', 3)