require 'minitest/autorun'


class Test < Minitest::Test

  def setup
    @value = 1
  end

  def test_odd?
    assert(@value.odd?)
  end
end