# Practice Problem 15
# Given this data structure write some code to return an array
# which contains only the hashes where all the integers are even.


=begin
Rephrase: Find all hashes that ONLY contain even integers and return an array
containing them

Basic example: [{b: [2,4,6]},{d: [4]}]
P INPUT: array of hashes
  OUTPUT: array
          each element is a hash only containing even numbers
  Rules:
        Explicit: Array is given
                  All values of inner hashes are arrays of numbers

Approach:
        Iterate through array
        For each element 
          return hash element if all inner elements are even

D
  Array
A
C
=end

arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

arr.select do |hash|
  hash.all? do |_, value|
    value.all?(&:even?)
  end
end

