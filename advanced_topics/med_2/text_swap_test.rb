require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

require_relative 'text_swap'

class TextSwapTest < Minitest::Test
  attr_reader :sample_text
  
  def setup
    @file = File.new('sample_text.txt')
    @full_text = @file.read
  end

  def test_swap

    result = Text.new(@full_text).swap('a', 'e')
    assert_equal(@full_text.gsub('a', 'e'), result)
  end

  def test_word_count
    expected = @full_text.split.size
    result = Text.new(@full_text).word_count
    assert_equal expected, result
  end

  def teardown
    @file.close
  end

end