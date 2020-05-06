=begin
The following array contains three names and numbers. Group each name with the number 
following it by placing the pair in their own array. Then create a nested array containing
 all three groups. What does this look like? (You don't need to write any code here. 
 Just alter the value shown so it meets the exercise requirements.)
=end

arr = ['Dave', 7, 'Miranda', 3, 'Jason', 11]

p pair_1 = arr.slice(0..1)
p pair_2 = arr.slice(2..3)
p pair_3 = arr.slice(4..5)

p all_pairs = [pair_1, pair_2, pair_3]

