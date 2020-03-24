# Counting Up

=begin 
Problem:
Write a method that takes an integer argument, and returns an Array of all integers, in sequence, between 1 and the
argument.  You may assume that the argument will always be a valid integer that is greater than 0.
  Rephrase: 
Examples/tests: 

sequence(5) == [1, 2, 3, 4, 5]
sequence(3) == [1, 2, 3]
sequence(1) == [1]

INPUT: int
      1+ digits , > 0
OUTPUT: arr containing 
        int
Rules:
    Explicit:
    Implicit:

D: array 

Approach:
define method sequence  with parameter stop_point
create range from 1 to stop_point
convert range into array
C:
=end

def sequence(stop_point)
  (1..stop_point).to_a
end

sequence(5) == [1, 2, 3, 4, 5]
sequence(3) == [1, 2, 3]
sequence(1) == [1]
