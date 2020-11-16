# Multiply Lists
=begin 
Problem:
Write a method that takes two Array arguments in which each Array contains a list of numbers, and returns a new Array
that contains the product of each pair of numbers from the arguments that have the same index. You may assume that the
arguments contain the same number of elements.

Examples:
multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]

INPUT: two arrays
      -containing integers
OUTPUT:
Rules:
    Explicit:
      -contain the same number of elements
      -multiply each pair of numbers from the same index
    Implicit:

D: array

Approach:
  Define method multiply_list with parameters arr_a, arr_b
  Set variable counter to 0
  Set variable prod_arr to []
  Create loop 
    Break loop if counter > arr_b.size
    push value of arr_a[counter] * arr_b[counter] to prod_arr
    increment counter
C:
=end
def multiply_list(arr_a, arr_b)
  counter = 0
  prod_arr = []
  loop do 
    break if counter == arr_b.size

    prod_arr << arr_a[counter] * arr_b[counter]
    counter += 1
  end
  prod_arr
end

multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
