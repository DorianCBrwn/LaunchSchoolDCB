# The End Is Near But Not Here
=begin 
Problem:
Write a method that returns the next to last word in the String passed to it as an argument.
Words are any sequence of non-blank characters.
You may assume that the input String will always contain at least two words.
  Rephrase: 
Examples/tests: 

penultimate('last word') == 'last'
penultimate('Launch School is great!') == 'is'

INPUT:
OUTPUT:
Rules:
    Explicit:
    Implicit:

D: Array

Approach:
Define method penultimate with parameter string
set variable str_arr to string convereted into an array of strings
return str_arr[-2]
C:
=end
def penultimate(string)
  string.split[-2]
end

penultimate('last word') == 'last'
penultimate('Launch School is great!') == 'is'
