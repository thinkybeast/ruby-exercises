# Write a method that takes one argument, a string, and returns the same string with the words in reverse order.

def reverse_sentence(sentence)
  # split sentence into an array of words
  # reverse that array
  # rejoin the array into a string

  sentence.split.reverse!.join(' ')

end



puts reverse_sentence('h') == 'h'
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
