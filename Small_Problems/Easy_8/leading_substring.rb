# Leading Substrings
=begin 
Problem:
Write a method that returns a list of all substrings of a string that start at the beginning of the original string. The
return value should be arranged in order from shortest to longest substring.
Examples/tests: 
substrings_at_start('abc') == ['a', 'ab', 'abc']
substrings_at_start('a') == ['a']
substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']

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

Define method substrings_at_start with parameter string
Set variable sub_str_arr to []
convert string to an array of chars
iterate through index of arr
push slice of arr starting from 0 to index of letter + 1
sort sub_str_arr and return 
C:
=end

def substrings_at_start(string)
  sub_arr = []
  string.chars.each_index do |idx|
    sub_arr << string.slice(0, idx + 1)
  end
  sub_arr.sort
end


substrings_at_start('abc') == ['a', 'ab', 'abc']
substrings_at_start('a') == ['a']
substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']

