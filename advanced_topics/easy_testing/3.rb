# Write a minitest assertion that will fail if value is not nil.

require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

class Exercise3 < Minitest::Test

  def test_nil
    value = 4
    assert_nil(value)
  end

end