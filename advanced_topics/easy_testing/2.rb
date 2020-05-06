# Write a minitest assertion that will fail if value.downcase does not return 'xyz'.

require 'minitest/autorun'

class Exercise2 < Minitest::Test

  def test_downcase_xyz
    value = 'xyz'
    assert_equal('xyz', value.downcase )
  end

end