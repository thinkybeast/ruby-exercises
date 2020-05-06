# Write a minitest assertion that will fail if the class of value is not Numeric or one of Numeric's subclasses (e.g., Integer, Float, etc).

require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!


class Exercise8 < Minitest::Test

  def test_kind_of_numeric
    value = 6.0
    assert_kind_of(Numeric, value)
  end
end