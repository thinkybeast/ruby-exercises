# Write a method that returns the next to last word in the String passed to it as an argument.

# Suppose we need a method that retrieves the middle word of a phrase/sentence. What edge cases need to be considered? How would you handle those edge cases without ignoring them? Write a method that returns the middle word of a phrase or sentence. It should handle all of the edge cases you thought of.

def penultimate(str)
  str.split(' ')[-2]
end

def middle(phrase)
  # retrieve middle word of a phrase
  # middle == equal number of words before and after
  # edge cases, 
  ## 0 words : return empty string
  ## 1 word : return word
  ## 2 words : return second word
  ## even number phrases: return word after midpoint (e.g. 3rd of 4 words)
  words = phrase.split(' ')
  words[words.size / 2] || ''
end


# p penultimate('last word') == 'last'
# p penultimate('Launch School is great!') == 'is'

p middle('')
p middle('one')
p middle('and two')
p middle('and three words')
p middle('here are four words')
p middle('here are five words now')