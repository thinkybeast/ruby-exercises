# Write a unit test that will fail if list and the return value of list.process are different objects.

require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

class Foo
  def process
    self
  end
end


class Exercise9 < Minitest::Test

  def test_same_obj
    list = Foo.new
    assert_same(list, list.process)
  end

end