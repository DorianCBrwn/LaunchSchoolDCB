# How long are you?
=begin 
Problem:
Write a method that takes a string as an argument, and returns an Array that contains every word from the string, to
which you have appended a space and the word length.

You may assume that words in the string are separated by exactly one space, and that any substring of non-space
characters is a word.

Examples/tests: 
word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

word_lengths("baseball hot dogs and apple pie") ==
  ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

word_lengths("Supercalifragilisticexpialidocious") ==
  ["Supercalifragilisticexpialidocious 34"]

word_lengths("") == []

INPUT: String 
        contains
       0+ characters separated by 1 space
OUTPUT: array 
        contains
        substring and substring length in each index
Rules:
    Explicit:
    Implicit: words are defined by characters separated by spaces

D: array
Approach:

Define method word_lengths with parameter word
Convert string into array of substrings separated by spaces
Iterate through array 
transform each word to a string of word and word length
C:
=end
def word_lengths(word)
  word_arr = word.split(' ')
  word_arr.map do |w|
    "#{w} #{w.size}"
  end
end

word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

word_lengths("baseball hot dogs and apple pie") ==
  ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

word_lengths("Supercalifragilisticexpialidocious") ==
  ["Supercalifragilisticexpialidocious 34"]

word_lengths("") == []
