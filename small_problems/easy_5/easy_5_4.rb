# Letter Swap
# Given a string of words separated by spaces, write a method that takes this string of words and returns a string in which the first and last letters of every word is swapped.

# You may assume that every word contains at least one letter, and that the string will always contain at least one word. You may also assume that each string contains nothing but words and spaces


def swap(str)
  # split sentence into array of words
  # for each word, iterate through chars
  # swap letter at index[0] with letter at index[-1]
  words = str.split(' ')
  words.each { |word| word[0], word[-1] = word[-1], word[0] }
  words.join(' ')
  
end



p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'