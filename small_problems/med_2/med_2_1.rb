# Write a program that reads the content of a text file and then prints the longest sentence in the file based on number of words. Sentences may end with periods (.), exclamation points (!), or question marks (?). Any sequence of characters that are not spaces or sentence-ending characters should be treated as a word. You should also print the number of words in the longest sentence.

require 'net/http'
require 'uri'
require 'pry'
require 'pry-byebug'

def open(url)
  Net::HTTP.get(URI.parse(url))
end

def get_full_text(filename)
  filename.match?('http://') ? open(filename) : File.read(filename)
end

def longest_sentence(filename)
  # input str (file name)
  # output: print to screen, nil
  # read a file into a string
  # strip that string of newlines
  # split that string into substrings on punctuation (., !, ?)
  # split those substrings into arrays of words
  # reduce the array or words based on words.size
  # print the longest sentence and the count of words


  full_text = get_full_text(filename)

  full_text.gsub!(/\n/, ' ')
  sentences = full_text.split(/[.?!]/)
  sentences.map! {|sentence| sentence.split(' ') }
  longest = sentences.reduce do |longest, sentence_arr|
    longest.size > sentence_arr.size ? longest : sentence_arr
  end

  puts "Longest sentence: #{longest.size} words: \n"
  puts longest.join(' ') + '.'
end

def longest_paragraph(filename)
  full_text = get_full_text(filename)
  grafs = full_text.split(/\n{2}/)
  longest = grafs.reduce do |longest, graf|
    longest.split(' ').size > graf.split(' ').size ? longest : graf 
  end

  puts "Longest graf: #{longest.split(' ').size} words: "
  puts longest
end

def longest_word(filename)
  full_text = get_full_text(filename)
  words = full_text.split(' ')
  longest = words.max_by {|word| word.size }
  puts "Longest word in #{filename}: #{longest}"
end

longest_sentence('text_2_1.txt')
longest_sentence('http://www.gutenberg.org/files/84/84-0.txt')
longest_paragraph('text_2_1.txt')
longest_word('http://www.gutenberg.org/files/84/84-0.txt')
