# Halvsies
=begin 
Problem:

Write a method that takes an Array as an argument, and returns two Arrays (as a
pair of nested Arrays) that contain the first half and second half of the
original Array, respectively.  If the original array contains an odd number of
elements, the middle element should be placed in the first half Array.  def
halvsies(arr)

  Rephrase: 
INPUT: Array
      -contains 0+ integer elements
OUTPUT: Array 
  pair of nested array
Rules:
    Explicit:If the original array contains an odd number of
elements, the middle element should be placed in the first half Array.
    Implicit:
D: Array 

Approach:
Define method halvies set parameter to arr
initialize variable midpoint set to arr.size/2.ceil
initalize array first_half set to range 0..midpoint
initalize array second_half set to range midpoint to end of array
return first_half, second_half
C:
=end

def halvsies (arr)
  midpoint = (arr.size/2.0).ceil
  first_half = (0...midpoint)
  second_half = (midpoint..-1)

  return [arr[first_half], arr[second_half]]
end


halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
halvsies([5]) == [[5], []]
halvsies([]) == [[], []]
