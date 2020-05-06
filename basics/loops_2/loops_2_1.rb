# Write a loop that prints numbers 1-5 and whether the number is even or odd. Use the code below to get started.

count = 1

until count > 5 do
  print "#{count} is "
  if count.even?
    puts "even!"
  else
    puts "odd!"
  end
  count += 1
end