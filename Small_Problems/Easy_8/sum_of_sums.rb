# Sum of Sums
=begin 
Problem:
Write a method that takes an Array of numbers and then returns the sum of the sums of each leading subsequence for that
Array. You may assume that the Array always contains at least one number.
  Rephrase: 
Examples/tests: 

sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
sum_of_sums([4]) == 4
sum_of_sums([1, 2, 3, 4, 5]) == 35

INPUT: Array 
          -contains
          Ints
OUTPUT:
      int
Rules:
    Explicit: at least 1 number in array
    Implicit:

D: Array 
  #sum, #each

Approach:
Define method sum_of_sums with arr parameter
set variable sum_arr to empty array
iterate through arr
  for each iteration push the current value to sum_arr
  set reult to Sum of values in sum_arr
return result
C
=end

def sum_of_sums(arr)
  sum_arr = []
  result = 0
  arr.each do |int|
    sum_arr << int
    result += sum_arr.sum
  end
  result
end

sum_of_sums([3, 5, 2]) == 21
sum_of_sums([1, 5, 7, 3]) == 36
sum_of_sums([4]) == 4
sum_of_sums([1, 2, 3, 4, 5]) == 35
