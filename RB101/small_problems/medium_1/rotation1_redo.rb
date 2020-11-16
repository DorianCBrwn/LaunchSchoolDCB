=begin 
Problem:Write a method that rotates an array by moving the first element to the end of the array. The original array
should not be modified.

Do not use the method Array#rotate or Array#rotate! for your implementation.


  Rephrase: Take the first number of the array return a new array with that first number added to the end of the array
Examples/tests: 

INPUT: Array
OUTPUT: Array
Rules:
    Explicit: Return new array
              Do not modify original Array

    Implicit:

D: 
Array
Approach:
Initialize new array; result
Find the first element of the array
Remove it from the given array none destructively
Add it to the end of a new array containing the rest of the elements in the original array 
Return new Array
C:
=end

def rotate_array(arr)
  arr.drop(1) << arr.first
end

rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
rotate_array(['a']) == ['a']

=begin 
Further Exploration
=begin 
Problem:Write a method that rotates a string instead of an array. Do the same thing for integers. You may use
rotate_array from inside your new method.
  Rephrase:  Using the rotated_array method above create a method that can return a rotated stirng and integer
Examples/tests: 

INPUT: String or Integer
OUTPUT: Same as original input
Rules:
    Explicit: Do not modify original input
    Implicit:

D: 
Array
Approach:
Convert input into array of characters
Use rotate array on array of characters
If original input was a string return a string or return numbers
C:
=end

def rotate_array_fe(input)
  if input.is_a?(String)
    rotate_array(input.chars).join
  elsif input.is_a?(Integer)
    rotate_array(input.to_s.chars).join.to_i
  else 
    rotate_array(input)
  end
end

rotate_array_fe("Hello World")
rotate_array_fe(1234)

rotate_array_fe([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
