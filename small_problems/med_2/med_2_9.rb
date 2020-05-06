# Write a method that takes an Array as an argument, and sorts that Array using the bubble sort algorithm as just described. Note that your sort will be "in-place"; that is, you will mutate the Array passed as an argument. You may assume that the Array contains at least 2 elements.



def bubble_sort!(arr)
  
  passes = arr.size - 1
  run = arr.size - 1
  
  passes.times do
    swaps = false
    
    run.times do |i|
      next_idx = i + 1
      next if arr[i] <= arr[next_idx] 
      arr[i], arr[next_idx] = arr[next_idx], arr[i]
      swaps = true 
    end
    
    break if swaps == false
    run -= 1
  end

  nil
end


array = [5, 3]
bubble_sort!(array)
p array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)