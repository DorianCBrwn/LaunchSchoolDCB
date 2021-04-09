require 'minitest/autorun'
class NoExperienceError < StandardError
end
class Employee
  attr_accessor :name, :exp

  def initialize(name, exp)
    @name = name
    @exp = exp
  end

  def hire
    raise NoExperienceError if self.exp <= 0
  end
end
class EasyTests < Minitest::Test
  def setup
    @value = 1
  end

  def test_boolean_assertions?
    assert(@value.odd?)
  end

  def test_equality
    @value = 'XYZ'
    assert_equal 'xyz', @value.downcase
  end

  def test_nil
    @value = nil

    assert_nil nil, @value
  end

  def test_empty
    list = []
    assert_empty list
  end

  def test_inlcude
    list = ['xyz', 'a', 'b']
    assert_includes(list, 'xyz')
  end

  def test_exception
    dave = Employee.new("Dave", 0)
    assert_raises(NoExperienceError) { |_| dave.hire }
  end

  def test_instance
    value = Numeric.new
    assert_instance_of(Numeric, value)
  end

  def test_instance
    value = 1
    assert_kind_of(Numeric, value)
  end

  def assert_same_object_
    list = Class.new do
      def process
        self
      end
    end

    assert_same(list, list.process)
  end

  def refute_includ_
    list = %w(xyz hello no)
    refute_includes(list, 'xyz')
  end

end