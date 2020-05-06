# Write a method that takes a single String argument and returns a new string that contains the original value of the argument with the first character of every word capitalized and all other letters lowercase.

# You may assume that words are any sequence of non-blank characters.


def word_cap(str)
  # str.split(' ').map { |word| word.capitalize }.join(' ')

  #  without String#capitalize
  word_arr = str.split(' ').map do |word| 
    word[0] = (word[0].ord - 32).chr if word[0] =~ /[a-z]/ 
    word
  end

  word_arr.join(' ')
end


p word_cap('four score and seven') #== 'Four Score And Seven'
p word_cap('the javaScript language') #== 'The Javascript Language'
puts word_cap('this is a "quoted" word') #== 'This Is A "quoted" Word'