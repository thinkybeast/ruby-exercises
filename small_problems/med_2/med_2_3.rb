# Write a method that takes a string, and then returns a hash that contains 3 entries: one represents the percentage of characters in the string that are lowercase letters, one the percentage of characters that are uppercase letters, and one the percentage of characters that are neither.

def trim_zero(num)
  num.to_i == num.to_f ? num.to_i : num.to_f
end

def letter_percentages(str)
  letter_counts = {
    lowercase: 0,
    uppercase: 0,
    neither: 0
  }

  total_letters = str.size

  str.each_char do |ch|
    case 
    when /[^a-zA-Z]/.match(ch)
      letter_counts[:neither] += 1
    when ch == ch.upcase
      letter_counts[:uppercase] += 1
    when ch == ch.downcase
      letter_counts[:lowercase] += 1
    end
  end

  letter_counts.each do |k, v|
    letter_counts[k] = trim_zero((v.to_f / total_letters) * 100)
  end
  
  letter_counts
end


# def letter_percentages(string)
#   counts = { lowercase: 0, uppercase: 0, neither: 0 }
#   percentages = { lowercase: [], uppercase: [], neither: [] }
#   characters = string.chars
#   length = string.length

#   counts[:uppercase] = characters.count { |char| char =~ /[A-Z]/ }
#   counts[:lowercase] = characters.count { |char| char =~ /[a-z]/ }
#   counts[:neither] = characters.count { |char| char =~ /[^A-Za-z]/ }

#   calculate(percentages, counts, length)

#   percentages
# end

# def calculate(percentages, counts, length)
#   percentages[:uppercase] = (counts[:uppercase] / length.to_f) * 100
#   percentages[:lowercase] = (counts[:lowercase] / length.to_f) * 100
#   percentages[:neither] = (counts[:neither] / length.to_f) * 100
# end



p letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
p letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }