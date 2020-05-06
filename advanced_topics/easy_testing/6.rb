# Write a minitest assertion that will fail unless employee.hire raises a NoExperienceError exception.

require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

class NoExperienceError < StandardError; end

class Employee
  def hire
    raise NoExperienceError unless @experience
  end
end

class Exercise6 < Minitest::Test

  def test_no_experience_error
     assert_raises(NoExperienceError) do
       employee = Employee.new
       employee.hire
     end 
  end
end