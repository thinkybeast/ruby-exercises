# The reverse_sentence method should return a new string with the words of its argument in reverse order, without using any of Ruby's built-in reverse methods. However, the code below raises an error. Change it so that it behaves as expected.

def reverse_sentence(sentence)
  words = sentence.split(' ')
  reversed_words = []

  (words.size - 1).downto(0) do |i|
    reversed_words << words[i]
  end

  reversed_words.join(' ')
end

p reverse_sentence('how are you doing')
# expected output: 'doing you are how'
