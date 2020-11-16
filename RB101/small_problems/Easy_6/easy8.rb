#Does My List Include This?
=begin 
Problem: write a method named include? that takes an array and a search value as
arguments. this method should return true if the search value is in the array,
 false if it is not. you may not use the array#include? method in your
solution.
  Rephrase: return true if given value is present in array 
Examples/tests: 

INPUT: array and value
  array can contain
  any value including nil
OUTPUT: boolean value
Rules:
    Explicit:
    Implicit:

D: 

Approach:
define method include? that takes 2 parameters arr and value
check if there is an index for the given value 
if yes return true, else false
C:
=end
def include?(arr, value)
  if arr.index(value)
    true
  else 
    false
  end
end

include?([1,2,3,4,5], 3) == true
include?([1,2,3,4,5], 6) == false
include?([], 3) == false
include?([nil], nil) == true
include?([], nil) == false
