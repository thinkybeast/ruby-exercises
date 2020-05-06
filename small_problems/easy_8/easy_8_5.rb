# Write a method that returns a list of all substrings of a string that are palindromic. That is, each substring must consist of the same sequence of characters forwards as it does backwards. The return value should be arranged in the same sequence as the substrings appear in the string. Duplicate palindromes should be included multiple times.



def substrings_at_start(str)
  result_arr = []
  1.upto(str.size) { |i| result_arr << str[0,i] }
  result_arr
end

def substrings(str)
  result_arr = []
  0.upto(str.size - 1) do |i|
    result_arr << substrings_at_start(str[i..-1])
  end
  result_arr.flatten
end

def is_palindrome?(word)
  if word.size <= 2
    return word[0] == word[-1]
  else
    return word[0].downcase == word[-1].downcase && is_palindrome?(word[1..-2])
  end
end

def strip_nonalpha(word)
  word.chars.reject {|ch| ch =~ /[^a-zA-Z]/ }.join
end

def palindromes(str)
  # get all substrings
  # iterate through substrings and check if palindrome
  # if palidrome, add to result array
  # return result arr

  subs = substrings(str)
  subs.select { |word| strip_nonalpha(word).size > 1 && is_palindrome?(strip_nonalpha(word)) }
end

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
] # does not pass test when we ignore non-alpha characters
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]

p palindromes("Abcba")
p palindromes("Abc-bA")
