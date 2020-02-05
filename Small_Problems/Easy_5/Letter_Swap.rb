#Letter Swap

=begin 
Problem: 
 Given a string of words separated by spaces, write a method that takes this string of words and returns a string in
 which the first and last letters of every word are swapped.

 You may assume that every word contains at least one letter, and that the string will always contain at least one word.
 You may also assume that each string contains nothing but words and spaces
Rephrase: 
  
Examples/tests: 
swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
swap('Abcde') == 'ebcdA'
swap('a') == 'a'
*swap('a  dog ') == 'a  god'

INPUT:
-String
  - words = letter charcter 
  - only [a-Z] and ' '

OUTPUT:
  - string 
  - first and last chars of each substring are swapped
Rules:
    Explicit:
      -case is maintained
    Implicit:
    - Spaces are skipped
    - single char words are not modified 

D: String
    - Split
   Array
   -Enumerable
   -Join

Approach:
        -Define method swap(string)
        -Convert string into an array of substrings [words]
        -Iterate through words
          -For each word in words
            -If size of word is > than 1 
              - swap the first letter and the last letter
              - push word to swapped_result
            -If size of word is < than 1 
            join words in transformed array into a string
C:
=end

def swap(string)
  arr = string.split.map do |word|
    if word.size > 1
    word[-1]+ word[1..-2] + word[0]
    else 
      word
    end
end
  arr.join(' ')
end

swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
swap('Abcde') == 'ebcdA'
swap('a') == 'a'
