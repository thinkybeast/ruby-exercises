
#Write a method that takes a sentence string as input, and returns the same string with any sequence of the words 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine' converted to a string of digits.

DIGIT_HSH = {
  'one' => '1',
  'two' => '2',
  'three' => '3',
  'four' => '4',
  'five' => '5',
  'six' => '6',
  'seven' => '7',
  'eight' => '8',
  'nine' => '9',
  'zero' => '0'
}.freeze

MARKER = '~!~'

def format_phone_num(num_str)
  "(#{num_str[0..2]}) #{num_str[3..5]}-#{num_str[6..9]}"
end

# detect if nums occur next to each other
# iterate through word string
# if digit_word, mark start index, length = 1
# if next is digit, increment length; if next is not digit pass sentence[start, length] to word to digit and reset counter

def is_digit?(str)
  str.to_i.to_s == str
end

def word_to_digit(sentence)
  # original solution
  # words = sentence.split(' ')

  # words.map! do |word|
  #   punctuation = ''
  #   if word[-1] =~ /[^0-9a-zA-Z]/
  #     punctuation = word[-1]
  #     word = word[0..-2]
  #   end
  #   DIGIT_HSH.keys.include?(word) ? DIGIT_HSH[word] + punctuation : word + punctuation
  # end

  # p words.join(' ')

# convert words to digits, and leave a marker on those digits
# gsub sentence, looking marker preceded by number, and subbing out space
# find 10 digits nums and convert to phone

  DIGIT_HSH.keys.each do |word|
    sentence.gsub!(/\b#{word}\b/, DIGIT_HSH[word] + MARKER)
  end

  sentence.gsub!(/#{MARKER}[\s]/, '')
  sentence.gsub!(/#{MARKER}\./, '.')
  sentence.gsub!(/[0-9]{10}/) {|match| format_phone_num(match)}

  sentence
end


p word_to_digit('Please call me at three two three five five five one two three four. Thanks.') #== 'Please call me at 5 5 5 1 2 3 4. Thanks.'
