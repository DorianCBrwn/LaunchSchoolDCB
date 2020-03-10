# Multiplicative Average
=begin 
Problem:
Write a method that takes an Array of integers as input, multiplies all the numbers together, divides the result by the
number of entries in the Array, and then prints the result rounded to 3 decimal places. Assume the array is non-empty.
  Rephrase: 
Examples/tests: 
show_multiplicative_average([3, 5])
The result is 7.500

show_multiplicative_average([6])
The result is 6.000

show_multiplicative_average([2, 5, 7, 11, 13, 17])
The result is 28361.667

INPUT: array
        -containing integers
OUTPUT:
  print output of float in a string
Rules:
    Explicit:
    Implicit:

D: Array

Approach:
Define method show_multiplicative_average with parameter arr
set variable arr_prod to product of all values in array using #reduce
set variable arr_quot to value of arr_prod / arr.size as a float
print "the result is #{arr_quot} " with formatter
C:
=end

def show_multiplicative_average(arr)
  arr_prod = arr.reduce(:*)
  arr_quote = arr_prod / arr.size.to_f
  puts "The result is %.3f" % arr_quote
end

show_multiplicative_average([3, 5])
# The result is 7.500

 show_multiplicative_average([6])
# The result is 6.000

 show_multiplicative_average([2, 5, 7, 11, 13, 17])
# The result is 28361.667

