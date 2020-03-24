# Always Return Negative
=begin 
Problem:
Write a method that takes a number as an argument. If the argument is a positive number, return the negative of that
number. If the number is 0 or negative, return the original number.
  Rephrase: 
Examples/tests: 

negative(5) == -5
negative(-3) == -3
negative(0) == 0      # There's no such thing as -0 in ruby

INPUT: int
OUTPUT: int 
Rules:
    Explicit:
    Implicit:

D: int 

Approach:
C:
=end
def negative(int)
  int.positive? ? int * -1 : int
end

negative(5) == -5
negative(-3) == -3
negative(0) == 0
