#ddaaiillyy ddoouubbllee

=begin
Problem:
Write a method that takes a string argument and returns a new string that
contains the value of the original string with all consecutive duplicate
characters collapsed into a single character. You may not use String#squeeze or
String#squeeze!.
  Rephrase: remove all consecutive duplicate characters from the string
Examples/tests:
crunch('ddaaiillyy ddoouubbllee') == 'daily double'
crunch('4444abcabccba') == '4abcabcba'
crunch('ggggggggggggggg') == 'g'
crunch('a') == 'a'
crunch('') == ''

INPUT:
  -string
  -1 or more words
  - separated by
      - single space
  -terminated by
      -letters
      -*non-alphanumeric chars
  -chars
    -alphanumeric characters
    -*non word characters
OUTPUT:
  -new string
  - separated by
      - single space
  -terminated by
      -letters
      -*non-alphanumeric chars
  -chars
    -alphanumeric characters
    -*non word characters
Rules:
    Explicit:
            - All consecutive duplicate characters should be removed
            - empty string returns empty string
    Implicit:

D:
  string or array
  array for iteration

Approach:
        - Define method crunch which takes in a string
        - Define string no_duplicates
        -Convert string into an array of characters
        - Iterate through array of characters
          for each character
          - add charater to end of no_duplicates if the last character is not equal to the current character
          return no_dupicates
C:
=end

def crunch(string)
  no_duplicates = ''
  string.chars.each do |letter|
    no_duplicates << letter unless no_duplicates[-1] == letter
  end
  no_duplicates
end

crunch('ddaaiillyy ddoouubbllee') == 'daily double'
crunch('4444abcabccba') == '4abcabcba'
crunch('ggggggggggggggg') == 'g'
crunch('a') == 'a'
crunch('') == ''
