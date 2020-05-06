=begin

- possible chars: letters, spaces, point
- words are 1-20 letters
- words are 1 or more letters separated by 1 or more spaces
- input text is 1 or more words separated by 1 or more spaces, terminated with a point
- out text is such that each word is sparated by a single space and terminated with a point
- odd words are copied in reverse order, while even words are echoed



input: string of words, followed by a period
output: string of words, with words in the odd index position reversed, with 1 space in between

- take our input string
- remove the last char, which should always be a dot (we can add guard clause to raise error if not the case)
- split that text on one or more spaces and store in array
- for each word in that array, map based on the index of its position in array
- join result array with one space and append period

=end

def odd_words(text)
    return "" if text.empty?

    text = text[0..-2]
    word_arr = text.split(/\s+/)
    flipped = word_arr.map.with_index { |word, idx| idx % 2 == 0 ? word : word.reverse }
    "#{flipped.join(' ')}."
end


def odd_words_bonus(text)
  # set word count == 0
  # begin iterating through text
  # break when char == '.'
  # if word count is even, output char
  # if char is space, 
    # output space, 
    # the get idx of next char
    # increment word count 
    # next loop
  # if word count is odd
    # find idx

end

example1 = "whats the matter with kansas."

p odd_words(example1) == "whats eht matter htiw kansas."


example2 = "whats the matter with kansas   ."

p odd_words(example2) == "whats eht matter htiw kansas."

example3 = "whats    the matter     with kansas."

p odd_words(example3) == "whats eht matter htiw kansas."

example4 = "hi."

p odd_words(example4) == "hi."

example5 = ""

p odd_words(example5) == ""
