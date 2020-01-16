# Given the following data structure, return a new array containing the same
# sub-arrays as the original but ordered logically by only taking into
# consideration the odd numbers they contain.

arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]



=begin 
Rephrase: 
Basic example: [[1, 8, 3], [1, 6, 7], [1, 4, 9]]
P INPUT: array 
  OUTPUT:new array 
  Rules: 
        Explicit:return new array
                 array must contain same array as original array
                 sort only the odd numbers
                 Each sub array has the same numbers
                 All numbers are positive

        Implicit: 
Approach: 
          Iterate through outer array
          Sort sub-arrays by odd numbers
E -
D 
A 
C 
=end

arr.sort_by do |sub|
  sub.select {|ele| ele.odd?}
end
