# Name Swapping

=begin 
Problem:
Write a method that takes a first name, a space, and a last name passed as a single String argument, and returns a
string that contains the last name, a comma, a space, and the first name.

Examples/tests: 
swap_name('Joe Roberts') == 'Roberts, Joe'

INPUT: String 
        - containing 2 words
        separated by a space
OUTPUT: String
        -containing 2 words
        separated by ', '
      
Rules:
    Explicit: 
    Implicit:

D: 
string

Approach:
Define method swap_name with parameter name
Reverse name 
Transform name into an array 
convert name array into string separted by ", "
C:
=end

def swap_name(name)
  name.split.reverse.join(', ')
end

swap_name('Joe Roberts') == 'Roberts, Joe'
