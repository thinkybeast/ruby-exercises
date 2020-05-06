# Write a minitest assertion that will fail if the Array list is not empty.

require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

class Exercise4 < Minitest::Test

  def test_empty
    list = []

    assert_empty list
  end

end

