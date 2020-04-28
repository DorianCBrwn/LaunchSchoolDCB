
=begin 
Problem: Write a method that can rotate the last n digits of a number. 
  Rephrase: 
Examples/tests: 

rotate_rightmost_digits(735291, 1) == 735291
rotate_rightmost_digits(735291, 2) == 735219
rotate_rightmost_digits(735291, 3) == 735912
rotate_rightmost_digits(735291, 4) == 732915
rotate_rightmost_digits(735291, 5) == 752913
rotate_rightmost_digits(735291, 6) == 352917

INPUT: array 
OUTPUT: array 
Rules:
    Explicit: given number represents index of number to be moved counting from the back
               if given 1 return the same number
    Implicit:

D: array

Approach:
  Convert int into array of strings
  Slice the given value from array starting from the end of the array
  prepend it to the array
  rotate the new array
C:
=end
def rotate_array(arr)
  new_arr = arr.dup
  new_arr.drop(1) << new_arr.first
end

def rotate_rightmost_digits(int, idx)
  int_arr = int.to_s.chars
  end_value = int_arr.delete_at(-idx)
  rotated_arr = rotate_array int_arr.prepend(end_value)
  rotated_arr.join.to_i
end

rotate_rightmost_digits(735291, 1) == 735291
rotate_rightmost_digits(735291, 2) == 735219
rotate_rightmost_digits(735291, 3) == 735912
rotate_rightmost_digits(735291, 4) == 732915
rotate_rightmost_digits(735291, 5) == 752913
rotate_rightmost_digits(735291, 6) == 352917



