# All Substrings
=begin 
Problem:

Write a method that returns a list of all substrings of a string. The returned list should be ordered by where in the
string the substring begins. This means that all substrings that start at position 0 should come first, then all
substrings that start at position 1, and so on. Since multiple substrings will occur at each position, the substrings at
a given position should be returned in order from shortest to longest.

You may (and should) use the substrings_at_start method you wrote in the previous exercise:

Examples/tests: 
substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde', 
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]

INPUT: string
  -contains at least 1+  alpha charaters
OUTPUT:
    array 
    containing substrings of input
    

Rules:
    Explicit: sort from shortest to longest substring
    Implicit:

D:array interation with index 

Approach:
Define method substrings with parameter string
Iterate string size times
  for each 
  iteration pass string to substrings_at_start method
  remove starting value from string

C:
=end
def substrings_at_start(str)
  str.chars.map.with_index { |_, idx| str[0, idx + 1] }
end

def substrings(string)
  sub_strs = []
  0.upto(string.size - 1) do
    sub_strs << substrings_at_start(string)
    string = string.chars.drop(1).join
  end
  sub_strs.flatten
end


substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]
