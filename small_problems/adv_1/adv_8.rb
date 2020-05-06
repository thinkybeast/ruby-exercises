

def merge(arr1, arr2)
  result = []
  loop do
    break if arr1.empty? || arr2.empty?
     result << (arr1.first < arr2.first ?  arr1.shift : arr2.shift)
  end

  result + arr1 + arr2
end


p merge([1, 5, 9], [2, 6, 8]) #== [1, 2, 5, 6, 8, 9]
p merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
p merge([], [1, 4, 5]) == [1, 4, 5]
p merge([1, 4, 5], []) == [1, 4, 5]