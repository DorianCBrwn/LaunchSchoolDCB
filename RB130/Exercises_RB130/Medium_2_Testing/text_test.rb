require 'minitest/autorun'
require "minitest/reporters"
Minitest::Reporters.use!

require_relative 'text'
class TextTest < Minitest::Test
  def setup
    @sample = File.open("text.txt")
    @text = Text.new(@sample.read)
  end

  def teardown
    @sample.close
  end

  def test_swap
    expected = File.open("text.txt"){|f| f.read}
    assert_equal expected.gsub!('a', 'e'), @text.swap('a', 'e')
  end


end