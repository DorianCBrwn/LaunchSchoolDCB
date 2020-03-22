# Get The Middle Character
=begin 
Problem:
Write a method that takes a non-empty string argument, and returns the middle character or characters of the argument.
If the argument has an odd length, you should return exactly one character. If the argument has an even length, you
should return exactly two characters.
  Rephrase: 
Examples/tests: 

center_of('I love ruby') == 'e'
center_of('Launch School') == ' '
center_of('Launch') == 'un'
center_of('Launchschool') == 'hs'
center_of('x') == 'x'

INPUT:
      -String 
        -Contains
        1+ alpha characters 
        separated by spaces
        no punctuation
OUTPUT:
  -substring 
    containing 
    1+ character or white space
Rules:
    Explicit:
          return must be 1 character if string size is odd
                         2 characters if stirng size is even
    Implicit:

D: string 
Approach:
Define method center_of with parameter str
Set variable mid point to string size / 2
Check size of string
  if the size is odd return 1 which is at the mid point of the string
  else return the 2 character which are at the mid point -1 of the string
C:
=end

def center_of(str)
  mid_point = str.size / 2.0
  if str.size.odd?
    str[mid_point]
  else 
    str[(mid_point - 1), 2]
  end
end


center_of('I love ruby') == 'e'
center_of('Launch School') == ' '
center_of('Launch') == 'un'
center_of('Launchschool') == 'hs'
center_of('x') == 'x'
