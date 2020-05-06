require 'pry'
require 'pry-byebug'
# A collection of spelling blocks has two letters per block, as shown in this list:

# B:O   X:K   D:Q   C:P   N:A
# G:T   R:E   F:S   J:W   H:U
# V:I   L:Y   Z:M
# This limits the words you can spell with the blocks to just those words that do not use both letters from any given block. Each block can only be used once.

# Write a method that returns true if the word passed in as an argument can be spelled from this set of blocks, false otherwise.

# Input: string
# Output: boolean
# Split string into an array of letters
# For each letter, see if letter or pair letter has been used
# if not, set that letter equal to true and continue
# if so, return false and break
# if we complete the iteration, all letters returned true and we return true
# data structure: hash, with keys arrays of char, value true (in use) or false (not in use)
# for each letter, iterate through hash keys, select if that letter is in the key
# set that key to true
def get_block
  {
    'BO' => false,
    'GT' => false,
    'VI' => false,
    'XK' => false,
    'RE' => false,
    'LY' => false,
    'DQ' => false,
    'FS' => false,
    'ZM' => false,
    'CP' => false,
    'JW' => false,
    'NA' => false,
    'HU' => false
  }
end

def block_word?(word)
  blocks = get_block

  word.each_char do |ch|
    block = blocks.keys.select { |bl| bl.chars.include?(ch.upcase) }.first
    return false if blocks[block] == true
    blocks[block] = true
  end

  true
end



p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true