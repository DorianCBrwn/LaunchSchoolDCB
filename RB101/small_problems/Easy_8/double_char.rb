# Double Char (Part 1)

=begin 
Problem:
Write a method that takes a string, and returns a new string in which every character is doubled.
Examples/tests: 

repeater('Hello') == "HHeelllloo"
repeater("Good job!") == "GGoooodd  jjoobb!!"
repeater('') == ''

INPUT: string 
        -contains 0+ characters 
        -separated spaces 
OUTPUT:
    new string
    -contains 0+ characters
    -separated by characters 
Rules:
    Explicit: 
      Each character is doubled
      empty string returns an empty string
    Implicit:
    

D: 

Approach:
  define method repeater with parameter string
  create an array of characters from string
  iterate through array 
  for each character multiply by 2 
C:
=end
def repeater(string)
  string.chars.map { |chr| chr * 2 }.join
end


repeater('Hello') == "HHeelllloo"
repeater("Good job!") == "GGoooodd  jjoobb!!"
repeater('') == ''
