# Write a program that solicits 6 numbers from the user, then prints a message that describes whether or not the 6th number appears amongst the first 5 numbers.

# Input 5 numbers from user and store in array
# Input 6 number
# Check whether 6th number is in 5-num array
# Output result to user
def validnum?(num)
  num == num.to_i.to_s
end

def appears(arr, num)
  if arr.include?(num)
    "appears"
  else
    "does not appear"
  end
end

nums = []

puts "Give me six numbers!"
(1..6).each do |n|
  print "#{n}. "
  
  loop do
    num = gets.chomp
    if validnum?(num)
      nums << num.to_i
      break
    end
    puts "Sorry, integers only! Please enter a number!"  
  end

end

sixth = nums.pop
p "The number #{sixth} #{appears(nums, sixth)} in #{nums}"

