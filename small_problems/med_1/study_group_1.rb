# Write a function that takes in a string of one or more words,
# and returns the same string, but with all five or more letter words
#  reversed. Strings passed in will
#   consist of only letters and spaces. Spaces will be included only
#  when more than one word is present.


def spin_words(str)
  # take in str
  # split str into an arr of words
  # map word arr
  # if word.length > 5, return word.reverse to the block, else return word
  # then join that array and return the result

  words = str.split(' ')
  words.map { |word| word.size >= 5 ? word.reverse : word }.join(' ')
end




p spin_words("Hey fellow warriors") == "Hey wollef sroirraw"
p spin_words("This is a test") == "This is a test"
p spin_words("This is another test") == "This is rehtona test"