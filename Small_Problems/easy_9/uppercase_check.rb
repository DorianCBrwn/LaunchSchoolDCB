# Uppercase Check
=begin 
Problem:
Write a method that takes a string argument, and returns true if all of the alphabetic characters inside the string
are uppercase, false otherwise. Characters that are not alphabetic should be ignored.

Examples/tests: 
uppercase?('t') == false
uppercase?('T') == true
uppercase?('Four Score') == false
uppercase?('FOUR SCORE') == true
uppercase?('4SCORE!') == true
uppercase?('') == true

INPUT: String
      -Contains 
        0+ word characters
OUTPUT:
      boolean value 
Rules:
    Explicit: All alphabetic characters must be uppercase
    Implicit:

D: string

Approach:
define method uppercase? with parameter word
return true if word is equal to word uppercase else false
 
C:
=end

def uppercase?(word)
  word == word.upcase
end


uppercase?('t') == false
uppercase?('T') == true
uppercase?('Four Score') == false
uppercase?('FOUR SCORE') == true
uppercase?('4SCORE!') == true
uppercase?('') == true

