=begin 
Problem:# You are given an array which contains only integers (positive and negative). Your job is to sum only the numbers that are the same and consecutive. The result should be one array.

# You can asume there is never an empty array and there will always be an integer.


p sum_consecutives([1,1,7,7,3]) == [2,14,3]
p sum_consecutives([-5,-5,7,7,12,0]) ==  [-10,14,12,0]
  Rephrase: Return an array where elements that are the same are sumed.
Examples/tests: 

p sum_consecutives([1,4,4,4,0,4,3,3,1, 1]) == [1,12,0,4,6,2]
p sum_consecutives([1,1,7,7,3]) == [2,14,3]
p sum_consecutives([-5,-5,7,7,12,0]) ==  [-10,14,12,0]
INPUT: Array
      Containing integers
OUTPUT: Array 
      Containing integers
Rules:
    Explicit: Integers to be summed must be the same and consecutive.
    Implicit:

D: Array

Approach:
Iterate through array 
Find subarrays which contain the same number in consecutive order
Return an array with consecutive 

C:
=end


def sum_consecutives(arr)
  consec_digits = []
  arr.each do |int|
    
  end
end
[1,4,4,4,0,4,3,3,1, 1]
p sum_consecutives([1,4,4,4,0,4,3,3,1, 1]) == [1,12,0,4,6,2]
#p sum_consecutives([1,1,7,7,3]) == [2,14,3]
#p sum_consecutives([-5,-5,7,7,12,0]) ==  [-10,14,12,0]
#
#
=begin 
Problem:
  Rephrase: 
Examples/tests: 

INPUT:
OUTPUT:
Rules:
    Explicit:
    Implicit:

D: 

Approach:
C:
=end
