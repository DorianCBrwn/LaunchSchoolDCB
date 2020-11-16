# Staggered Caps (Part 1)
=begin 
Problem:
Write a method that takes a String as an argument, and returns a new String that contains the original value using a
staggered capitalization scheme in which every other character is capitalized, and the remaining characters are
lowercase. Characters that are not letters should not be changed, but count as characters when switching between upper
and lowercase.

Example:
staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!' 
staggered_case('ALL_CAPS') == 'AlL_CaPs'
staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

INPUT: String
  containing
    -Alphanumeric characters
    separated by spaces
OUTPUT:
  string
Rules:
    Explicit: every other alpha character's case is swapped 
    Implicit: pattern: uppercase, lowercase

D: Array

Approach:
Define method staggered_case with parameter string
convert string into an array of chars
Iterate through each char with index
  for each letter make uppercase if index + 1 is odd and char is an alpha character
  else make lowercase
  join letters 
C:
=end

def staggered_case(string)
  staggered_string = []
  string.chars.each_with_index do |letter, index|
    if (index + 1).odd?
      staggered_string << letter.upcase
    elsif (index + 1).even?
      staggered_string << letter.downcase
    else 
      staggered_string << letter
    end
  end
    staggered_string.join
end

staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
staggered_case('ALL_CAPS') == 'AlL_CaPs'
staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
