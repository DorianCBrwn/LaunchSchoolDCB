require 'minitest/autorun'
require "minitest/reporters"
Minitest::Reporters.use!

require_relative 'text'
class TextTest < Minitest::Test
  def setup
    @sample = File.open("text.txt")
  end

  def teardown
    @sample.close
    puts "File has been closed: #{@sample.closed?}"
  end

  def test_swap
    expected = File.open("text.txt"){|f| f.read}
    text = Text.new(@sample.read)
    assert_equal expected.gsub!('a', 'e'), text.swap('a', 'e')
  end

  def test_count
    text = Text.new(@sample.read)
    assert_equal 72, text.word_count
  end

end