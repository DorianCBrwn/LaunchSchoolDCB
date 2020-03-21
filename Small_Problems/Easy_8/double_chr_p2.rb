# Double Char (Part 2)
=begin 
Problem:
Write a method that takes a string, and returns a new string in which every consonant character is doubled. Vowels
(a,e,i,o,u), digits, punctuation, and whitespace should not be doubled.
Examples/tests: 

double_consonants('String') == "SSttrrinngg"
double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
double_consonants("July 4th") == "JJullyy 4tthh"
double_consonants('') == ""

INPUT: 
        -contains 0+ characters 
        -separated spaces 
OUTPUT:
    new string
    -contains 0+ characters
    -separated by characters 
Rules:
    Explicit: 
       only Consonant character are doubled
      empty string returns an empty string
    Implicit:
D: 

Approach:
  define method repeater with parameter string
  create an array of characters from string
  iterate through array 
  if character is a consonant multiply by 2 
  else return the char
  Convert array to String
C:
=end

def double_consonants(string)
  string.chars.map { |chr| chr.match(/[bcdfghj-np-tvwxyz]/i) ? chr * 2 : chr }.join
end



double_consonants('String') == "SSttrrinngg"
double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
double_consonants("July 4th") == "JJullyy 4tthh"
double_consonants('') == ""
