# Write a method that counts the number of occurrences of each element in a given array.

def count_occurrences(objs)

# create an occurences hash with default val 0
# iterate through array
# for each element, iterate value at key[element]
# print hash

  occurences =  Hash.new(0)
  objs.each do |obj|
    occurences[obj] += 1
  end

  occurences.each { |k,v| puts "#{k} => #{v}"}

end


vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']

count_occurrences(vehicles)