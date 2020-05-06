# Write a unit test that will fail if 'xyz' is one of the elements in the Array list


require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!


class Exercise10 < Minitest::Test
  def test_not_include
    list = [1, nil, "asdfasd"]
    refute_includes(list, "xyz")
  end

end