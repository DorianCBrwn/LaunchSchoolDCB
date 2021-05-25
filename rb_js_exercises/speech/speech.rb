=begin
Problem: Create a program that transforms a given string
Rephrase:
Examples/tests:
"One two three four five six seven eight nine ten" => "One two tHrEe four five sIx seven eight nInE ten"

"I am again called upon by the voice of my country to execute the functions of its Chief Magistrate" => "I am aGaIn called upon bY the voice oF my country tO execute the fUnCtIoNs of its CHiEf Magistrate"

"On taking this station on a former occasion." =>"On taking tHiS station on a former noisaccO."

"Though passion may have strained, it must not break our bonds of affection." => "Though passion mAy have deniartS, iT must not bReAk our bonds oF noitceffA."
INPUT: String containing words and punctuation
OUTPUT:
String containg same content with modified words
Rules:
  Explicit:
  Each word is 1+ characters
  Each string has at least 8 words.
  In every 3rd word, every 2 letters is capitalized
  If the word ends in a period the word is capitalized and reversed
  Implicit:
D: Array
Approach:
initalize result string, result
Convert string into array of words, words
Iterate through words array with index
Check index
if index == 0 push word to result arrays
if index is odd push to result arrays
if index is even and element does not end in "."
  capitalize every 2nd letter in word
  push to results string
else
  Capitalize word and reverse
  push to results tring
end
C:
=end

class Speech
  attr_reader :string

  def initialize(string)
    @string = string
  end

  def transform_speech
    result = []
    words = string.split
    words.each_with_index do |word, idx|
      if idx.zero?
        result << word
      elsif idx.even? && word.end_with? != '.'
        result << transform_word(word)
      else
        result << word
      end
      result
    end
    result.join(' ')
  end

  def transform_word(word)
   word.chars.map.with_index {|l,idx| idx.odd? ? l.upcase : l}.join
  end


end