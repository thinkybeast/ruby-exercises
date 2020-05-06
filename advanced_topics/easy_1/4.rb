# Write a method that returns a list of all of the divisors of the positive integer passed in as an argument. The return value can be in any sequence you wish.

# Examples

=begin
def divisors(num)
  # input: pos integer
  # output: array
  # intialize result array
  # count from 1 to num
  # add count to array if num % count == 0

  result = []

  1.upto(num / 2) { |count| result << count if num % count == 0 }

  result << num
  result
end
=end

def divisors(max)
  result = []
  1.upto(max) do |n|
    break if result.include?(n)
    if max%n == 0
      result << n
      result << (max / n)
    end
  end
  result.uniq.sort 
end

p divisors(1) #== [1]
p divisors(7) #== [1, 7]
p divisors(12) #== [1, 2, 3, 4, 6, 12]
p divisors(98) #== [1, 2, 7, 14, 49, 98]
p divisors(99400891) #== [1, 9967, 9973, 99400891] # may take a minute
