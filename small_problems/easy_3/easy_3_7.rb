# Write a method that returns an Array that contains every other element of an Array that is passed in as an argument. The values in the returned list should be those values that are in the 1st, 3rd, 5th, and so on elements of the argument Array.


def oddities(arr)
  # take in array
  # iterate through array 
  # select elements at 0, 2, 4, etc positions and add them to new array
  odd_arr = []
  arr.each_with_index do |el, i|
    odd_arr << el if i % 2 == 0
  end
  odd_arr
end

def evenies(arr)
  # take in array
  # iterate through array 
  # select elements at 1, 3, 5, etc positions and add them to new array
  even_arr = []
  arr.each_with_index do |el, i|
    even_arr << el if i % 2 == 1
  end
  even_arr
end

def evenies_mod(arr)
  even_arr = []
  counter = 1
  while counter < arr.size
    even_arr << arr[counter]
    counter += 2
  end
  even_arr
end

p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []

p evenies([2, 3, 4, 5, 6]) == [3, 5]
p evenies(['abc', 'def']) == ['def']
p evenies([123]) == []
p evenies([]) == []

p evenies_mod([2, 3, 4, 5, 6]) == [3, 5]
p evenies_mod([2, 3, 5, 5, 6]) == [3, 5]

