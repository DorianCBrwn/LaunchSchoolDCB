# Sequence Count
=begin 
Problem:
Create a method that takes two integers as arguments. The first argument is a count, and the second is the first number
of a sequence that your method will create. The method should return an Array that contains the same number of elements
as the count argument, while the values of each element will be multiples of the starting number.

You may assume that the count argument will always have a value of 0 or greater, while the starting number can be any
integer value. If the count is 0, an empty list should be returned.

  Rephrase: 
Examples/tests: 

sequence(5, 1) == [1, 2, 3, 4, 5]
sequence(4, -7) == [-7, -14, -21, -28]
sequence(3, 0) == [0, 0, 0]
sequence(0, 1000000) == []

INPUT: 2 integers
OUTPUT: array of integers
Rules:
    Explicit: first number is count, 2nd number is start of sequence 
    Implicit:

D: array 


Approach:
Define method sequence with parameters count and value
set variable result to []
set value temp_value
Iterate count times 
  In each iterationn 
      temp_value += value
      push value 
  return value 
C:
=end

def sequence(count, value)
  return [] if count.zero?

  result = []
  1.upto(count) do |idx|
    result << value * idx
  end
  result
end

sequence(5, 1) == [1, 2, 3, 4, 5]
sequence(4, -7) == [-7, -14, -21, -28]
sequence(3, 0) == [0, 0, 0]
sequence(0, 1000000) == []
