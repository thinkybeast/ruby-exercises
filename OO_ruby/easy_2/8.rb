# What is wrong with the following code? What fix(es) would you make?

class Expander
  def initialize(string)
    @string = string
  end

  def to_s
    expand(3)
  end

  private

  def expand(n)
    @string * n
  end
end

expander = Expander.new('xyz')
puts expander

# The issue here was that expand is a private method. Private methods cannot be called with an explicit receiver. Even though self returns the calling object, private methods cannot be invoked on self.