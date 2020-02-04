# Clean up the words
=begin 
Problem:
Given a string that consists of some words and an assortment of non-alphabetic characters, write a method that returns
that string with all of the non-alphabetic characters replaced by spaces. If one or more non-alphabetic characters occur
in a row, you should only have one space in the result (the result should never have consecutive spaces).

Examples/tests: 
cleanup("---what's my +*& line?") == ' what s my line '
cleanup("---what's   my +*&   line?") == ' what s my line '
cleanup("---43my line") == ' my line'
cleanup("---43my line? ") == ' my line '
cleanup("---MY liNe? ") == ' MY liNe '
cleanup("$&$a^") == ' a '

INPUT:
  -string
  - 1 or many words
  - separated by 1 or many spaces
  - terminated by 
    -non alphabetic character
    -*alphabetic character
    -*space
  -char letter, space, non-alphabetic characters, uppercase/ lower case
  -failure condition?
OUTPUT:
  -words: have all non-alphabetic characters replace by spaces
  - alphabetic [A-z]
  - separated by one space
  -terminated by letter or a space
Rules:
    Explicit: 
            - 
    Implicit:

D: 
- choices: string, array 
- string 
Approach: 
    
C:
=end

def cleanup(string)
  string.gsub(/[^a-z]/i, ' ').gsub(/\s+/, ' ')
end



cleanup("---what's my +*& line?") == ' what s my line '
cleanup("---what's   my +*&   line?") == ' what s my line '
cleanup("---43my line") == ' my line'
cleanup("---43my line? ") == ' my line '
cleanup("---MY liNe? ") == ' MY liNe '
cleanup("$&$a^") == ' a '
