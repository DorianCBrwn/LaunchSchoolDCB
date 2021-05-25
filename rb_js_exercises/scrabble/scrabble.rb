class Scrabble
  # SCORES = {1 => ['A', 'E', 'I', 'O', 'U', 'L', 'N', 'R', 'S', 'T'],
  #           2 => ['D', 'G'],
  #           3 => ['B', 'C', 'M', 'P'],
  #           4 => ['F', 'H', 'V', 'W', 'Y'],
  #           5 => ['K'],
  #           8 => ['J', 'X'],
  #           10 => ['Q', 'Z']}

    SCORES = {'A' => 1, 'B' => 3, 'C' => 3, 'D' => 2, 'E' => 1, 'F' => 4, 'G' => 2, 'H' => 4, 'I' => 1, 'J' => 8, 'K' => 5, 'L' => 1, 'M' => 3, 'N' => 1, 'O' => 1, 'P' => 3, 'Q' => 10, 'R' => 1, 'S' => 1, 'T' => 1, 'U' => 1, 'V' => 4, 'W' => 4, 'X' => 8, 'Y' => 4, 'Z' => 10 }

  def initialize(string)

    if valid?(string)
      @string = string.upcase
    else
      @string = ''
    end

  end

  def self.score(string)
    word = Scrabble.new(string)
    word.score
  end


  def score
    return 0 if @string.empty?
    sum = 0
    @string.chars.each do |letter|
      next if letter.match?(/\s/)
      sum += SCORES[letter]
    end
    sum
  end

  def valid?(string)
     !string.nil?
  end
end

require 'minitest/autorun'
#require_relative 'scrabble_score'

class ScrabbleTest < Minitest::Test
  def test_empty_word_scores_zero
    assert_equal 0, Scrabble.new('').score
  end

  def test_whitespace_scores_zero

    assert_equal 0, Scrabble.new(" \t\n").score
  end

  def test_nil_scores_zero

    assert_equal 0, Scrabble.new(nil).score
  end

  def test_scores_very_short_word

    assert_equal 1, Scrabble.new('a').score
  end

  def test_scores_other_very_short_word

    assert_equal 4, Scrabble.new('f').score
  end

  def test_simple_word_scores_the_number_of_letters

    assert_equal 6, Scrabble.new('street').score
  end

  def test_complicated_word_scores_more

    assert_equal 22, Scrabble.new('quirky').score
  end

  def test_scores_are_case_insensitive

    assert_equal 41, Scrabble.new('OXYPHENBUTAZONE').score
  end

  def test_convenient_scoring

    assert_equal 13, Scrabble.score('alacrity')
  end
end

class Scrabble
  attr_reader :word

  POINTS = {
    'AEIOULNRST'=> 1,
    'DG' => 2,
    'BCMP' => 3,
    'FHVWY' => 4,
    'K' => 5,
    'JX' => 8,
    'QZ' => 10
}
  def initialize(word)
    @word = word ? word : ''
  end

  def score
    letters = word.upcase.gsub(/[^A-Z]/, '').chars

    total = 0
    letters.each do |letter|
      POINTS.each do |all_letters, point|
        total += point if all_letters.include?(letter)
      end
    end
    total
  end

  def self.score(word)
    Scrabble.new(word).score
  end
end