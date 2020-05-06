require 'minitest/autorun'

class Exercises < Minitest::Test

  def test_odd
    value = 3
    assert(value.odd?, "value is not odd")
  end 

end