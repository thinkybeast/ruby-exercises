# Write a method that takes one argument, a string containing one or more words, and returns the given string with all five or more letter words reversed. Each string will consist of only letters and spaces. Spaces should be included only when more than one word is present.

def reverse_words(sentence)
  # split sentence into an array of words
  # iterate through word array
  # if word.length >= 5 reverse that word with String#reverse
  # join array into string and return 

  arr = sentence.split
  arr.each do |word|
    word.reverse! if word.size >= 5
  end
  arr.join(' ')

end



puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS