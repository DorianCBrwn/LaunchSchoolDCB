=begin
Problem: Write a method that returns a list of all of the divisors of the positive integer passed in as an argument. The return value can be in any sequence you wish.
Rephrase: list all the divisors of a given int
Examples/tests:
divisors(1) == [1]
divisors(7) == [1, 7]
divisors(12) == [1, 2, 3, 4, 6, 12]
divisors(98) == [1, 2, 7, 14, 49, 98]
divisors(99400891) == [1, 9967, 9973, 99400891] # may take a minute
INPUT: Integer
OUTPUT: Array of ints
Rules:
  Explicit:
  Implicit: A divisors is a number that divides into another without a remainder.
D: Array
Approach:
Define method divisors with parameter int
create empty array divisors
Iterate from 1 through int
Check if int is divisible by each number
if divisible push number to divisors
else
  next
return divisors array
end
C:
=end

def divisors(int)
  (1..int).select do |i|
    (int % i) == 0
  end
end



p divisors(1) == [1]
p divisors(7) == [1, 7]
p divisors(12) == [1, 2, 3, 4, 6, 12]
p divisors(98) == [1, 2, 7, 14, 49, 98]
p divisors(99400891) == [1, 9967, 9973, 99400891] # may take a minute