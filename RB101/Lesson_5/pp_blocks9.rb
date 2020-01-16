# Practice Problem 9
# Given this data structure, return a new array of the same structure but with
# the sub arrays being ordered (alphabetically or numerically as appropriate) in
# descending order.

 arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

=begin
 Rephrase: Return a new array with each inner array sorted in descending order
 Basic example: ['c','b', 'a']
 P INPUT: 2 Layer 3 element array
   OUTPUT: 2 Layer 3 element array
   Rules: 
    Explicit: Return a new array
              Each array must be ordered in decending order
              New array must maintain same structure as original array
    Implicit: Order of inner arrays must be maintained
 Approach:
          Iterate through each array 
          Sort each sub array in decending order
          return sorted arrays as a new array
 E -
 D
 A
 C
=end

 arr.map do |sub_arr|
   sub_arr.sort.reverse
 end
