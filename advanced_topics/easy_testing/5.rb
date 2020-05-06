# Write a minitest assertion that will fail if the 'xyz' is not in the Array list.

require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

class Exercise5 < Minitest::Test

  def test_includes_xyz
    list = ['a', 3, 'xyz' nil]
    assert_includes(list, 'xyz')
  end

end