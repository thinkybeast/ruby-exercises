# We wrote a neutralize method that removes negative words from sentences. However, it fails to remove all of them. What exactly happens?

# We're mutating the caller inside of the method, which leads to this unexpected result. In this case, words.delete removes a word from the array, which shifts the index of the array. As a result, the each block skips the subsequent word, as it has moved up by one index. 

def neutralize(sentence)
  words = sentence.split(' ')
  neutral = []
  words.each do |word|
    neutral << word unless negative?(word)
  end

  neutral.join(' ')
end

def negative?(word)
  [ 'dull',
    'boring',
    'annoying',
    'chaotic'
  ].include?(word)
end

puts neutralize('These dull boring cards are part of a chaotic board game.')
# Expected: These cards are part of a board game.
# Actual: These boring cards are part of a board game.