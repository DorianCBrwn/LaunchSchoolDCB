require 'minitest/autorun'

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

end