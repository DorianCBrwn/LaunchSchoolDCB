# Fibonacci Number Location By Length

=begin 
Problem:
The Fibonacci series is a series of numbers (1, 1, 2, 3, 5, 8, 13, 21, ...) such
that the first 2 numbers are 1 by definition, and each subsequent number is the
sum of the two previous numbers. This series appears throughout the natural
world.

Computationally, the Fibonacci series is a very simple series, but the results
grow at an incredibly rapid rate. For example, the 100th Fibonacci number is
354,224,848,179,261,915,075 -- that's enormous, especially considering that it
takes 6 iterations before it generates the first 2 digit number.

Write a method that calculates and returns the index of the first Fibonacci
number that has the number of digits specified as an argument. (The first
Fibonacci number has index 1)
  Rephrase: Return the nth number place in the fibonacci sequence that takes up 
  the given amount of digit places
Examples/tests: 
# find_fibonacci_index_by_length(2) == 7   the 7th number in the fibonacci
# sequence is the first 2 digit number in the sequence    

INPUT: int
      - represents digit amount of a number
OUTPUT: int 
        - represents first number in the fibonacci sequence which has a given 
        amount of spaces
Rules:
    Explicit: Given number will be greater than 2

    Implicit: Fibonacci Sequence: the following number in the sequence is the 
      sum of the two previous numbers starting with 1.

D: Array
  -indexed 
  -memorialize values

Approach:
initialize method find_fibonacci_index_by_length with integer parameter places
Calculate fibonacci sequnce until the current number is x places long
return index of that last calculated number in the sequence + 1
C:
=end
def find_fibonacci_index_by_length(places)
  a = 1
  b = 1
  fib_sequence = []

  until fib_sequence.last.to_s.size == places
    fib_sequence << a
    a = b
    b += fib_sequence.last
  end
  fib_sequence.size
end

find_fibonacci_index_by_length(2) == 7
find_fibonacci_index_by_length(3) == 12
find_fibonacci_index_by_length(10) == 45
find_fibonacci_index_by_length(100) == 476
find_fibonacci_index_by_length(1000) == 4782
find_fibonacci_index_by_length(10000) == 47847
