# Practice Problem 11 
# Given the following data structure use a combination of
# methods, including either the select or reject method, to return a new array
# identical in structure to the original but containing only the integers that are
# multiples of 3.

arr = [[2], [3, 5, 7], [9], [11, 13, 15]]

=begin 
Rephrase: 
Basic example: 
P INPUT: 2 layer, 4 element array
  OUTPUT: 2 layer, 4 element array
  Rules: 
        Explicit: Return array containing only integers that are multiples of 3
        Inplicit: Remove the integers but leave the array ?
Approach:
        Iterate through outer array
        Iterate through each sub array
          If element is a multiple of 3, return array containing the element
          else return an array without the element
        Return a new array
E -
D 
A 
C 
=end


arr.map do |sub_array|
  sub_array.select do |int|
    (int % 3).zero?
  end
end
