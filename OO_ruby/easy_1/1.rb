# Complete this class so that the test cases shown below work as intended. You are free to add any methods or instance variables you need. However, do not make the implementation details public.

# You may assume that the input will always fit in your terminal window.

=begin 
Further exploration
Several things need to consider:

the passing in fixed_width should have an appropriate range.
at least the minimal fixed_width should not be smaller than the longest word in the string.

if the given width is shorter than the length of string, we need to split the string into multiple lines
splitting should based on word, not number of characters
=end

class Banner
  def initialize(message, size = nil)
    @message = message
    @row_size = valid_row_size(size)
  end

  def to_s
    [horizontal_rule, empty_line, message_lines, empty_line, horizontal_rule].flatten.join("\n")
  end

  private
  attr_accessor :message
  attr_reader :row_size

  ROW_LIMIT = 75

  def horizontal_rule
    "+-#{create_row('-')}-+"
  end

  def empty_line
    "| #{create_row} |"
  end

  def message_lines
    lines.map do |message|
      "| #{message.center(row_size)} |"
    end
  end

  def create_row(char = ' ')
    char * row_size
  end

  def valid_row_size(size)
    if size.nil? || !(0..ROW_LIMIT).include?(size)
      [message.size + 2, ROW_LIMIT].min
    else
      [size, longest_word_length + 2].max
    end
  end

    # while start_idx + counter < words.size
    # line = words.slice(start_idx, counter)
    # break if line.size > row_size 
    # lines << words.slice(start_idx, counter - 1).join(' ')
    # start_idx += counter
    # counter = 1

  def lines
    lines = []
    words = message.split
    start_idx = 0

    while start_idx < words.size do
      counter = 1
      loop do
        break if start_idx + counter > words.size || words[start_idx, counter].join(' ').size > row_size 
        counter += 1
      end
      lines << words[start_idx, counter - 1].join(' ')
      start_idx += counter - 1
    end

    lines
  end

  def longest_word_length
    longest = message.split.sort_by{|word| word.size}.last
    longest.size
  end

 
end

# break string into array of words
# determine the longest word size
# if given size is longer than longest word, rowsize = given size; else, rowsize = longestword.size
# build array of substrings from fullstring that are less than length of row size
## initialize empty string and counter = 0
## add word + space to result string and increment counter (Word.size + 1)

# print row

string = "The smaller the app, the faster it loads. Here's how I reduced the size of a favorite WebVR game, optimizing font, audio, and image files to hit my target: 10-second load times in VR headsets."

banner = Banner.new(string, 14)
puts banner
# puts banner
# banner = Banner.new('')
# puts banner
# banner = Banner.new('To boldly go where no one has gone before.', 30)
# puts banner
