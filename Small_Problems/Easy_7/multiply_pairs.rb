# Multiply All Pairs
=begin 
Problem:
    Write a method that takes two Array arguments in which each Array contains a list of numbers, and returns a new Array
    that contains the product of every pair of numbers that can be formed between the elements of the two Arrays. The
    results should be sorted by increasing value.
    You may assume that neither argument is an empty Array.
  Rephrase: 
Examples/tests: 
  multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]

INPUT: 2 arrays
    -containing integers
OUTPUT:
      -Array
        -containing integers
Rules:
    Explicit: result must be sorted from low to high 
    Implicit: integers may be of different sizes

D: Array(enumerable zip)

Approach:
define method multiply_all_pairs with parameters arr_a, arr_b
set variable result to []
create nest array of permuations of arr_a and arr_b
iterate through nested array 
  for each inner 
  push result of multplying elements to result
sort result
C:
=end
def multiply_all_pairs(arr_a, arr_b)
  arr_a.product(arr_b).each_with_object([]) { |pair, arr| arr << pair.reduce(:*) }.sort
  end

multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
