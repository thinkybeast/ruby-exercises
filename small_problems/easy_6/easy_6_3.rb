# Write a method that calculates and returns the index of the first Fibonacci number that has the number of digits specified as an argument. (The first Fibonacci number has index 1.)

# set index to 3 (we can assume first and second index == 1 and 1 already)
# get next fib num
# check if fibnum.to_s.size == num_digits
# if so, return counter, else counter += 1 and loop




def find_fibonacci_index_by_length(num_digits)
  index = 2
  first = 1
  second = 1
  loop do
    index += 1
    fib = first + second
    return index if fib.to_s.size == num_digits
    first, second = second, fib
  end
end


p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847