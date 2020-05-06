# Rewrite your recursive fibonacci method so that it computes its results without recursion.


# add 1 + 1
# result is 2, store 1
# add 2 + 1
# result is 3, store 2
# add 3 + 2
# result is 5, store 3

def fibonacci(n)
  first, last = [1,1]
  3.upto(n) do
    first, last = [last, first + last]
  end

  last
end

# p fibonacci(2)

p fibonacci(20) == 6765
p fibonacci(100) == 354224848179261915075
# p fibonacci(100_001)  => 4202692702.....8285979669707537501