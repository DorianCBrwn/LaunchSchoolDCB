=begin 
Problem:
Write a method that rotates an array by moving the first element to the end of the array. The original array should not be modified.
Do not use the method Array#rotate or Array#rotate! for your implementation.

  Rephrase:  Return a new array with the element in the first index moved to the last index

Examples/tests: 

rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
rotate_array(x) == [2, 3, 4, 1]   # => true
x == [1, 2, 3, 4]                 # => true

INPUT: array
        
OUTPUT:
        new array
Rules:
    Explicit: First element goes tot the end fo the array
              if passed a single element return an array witht the same contents
    Implicit:

D: array 

Approach:
define method roate_array with parameter arr 
create duplicate of array
store value of first element in variable first_elem
set value of temp array to arr drop 1
push first_elem at the end of arr
return arr
C:
=end

def rotate_array(arr) # method roate_array is defined on line 39
  new_arr = arr.dup   #variable new_arr is initialized and set to a duplicate of the array object that has been passed in
  new_arr.drop(1) <<  new_arr.first #call  drop witht a argument 1 to return an array containing values except the first value and chain a push call with the parameter first_elem
end

rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
rotate_array(x) == [2, 3, 4, 1]
x == [1, 2, 3, 4]

#Further exploration

def rotate_string(str)
  rotate_array(str.chars).join
end

string = 'hello'
rotate_string(string) == 'elloh'

def rotate_int(int)
  rotate_array(int.to_s.chars).join.to_i
end

rotate_int(12345)

