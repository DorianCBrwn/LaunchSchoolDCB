
=begin 
Problem:
Write a method that takes an Array as an argument, and reverses its elements in
place; that is, mutate the Array passed into this method. The return value
should be the same Array object.

You may not use Array#reverse or Array#reverse!.
  Rephrase: Modify an array by reversing the order of the elements 
Examples/tests: 

list = [1,2,3,4]
result == [4, 3, 2, 1]

INPUT: array
OUTPUT: original array
Rules:
    Explicit: Cannot use reverse methods 
    Implicit:

D: Array

Approach: 
Initialize method reverse! with parameter list
Iterate through array, array size times
  In each iteration 
  remove the last value
  store value in temp array
Outside of iteration
Combine original array with temp array
C:
=end

def reverse!(list)
  temp_arr = []
  list.size.times do
    temp_arr << list.pop
  end
  list.concat(temp_arr)
end

list = [1,2,3,4]
result = reverse!(list)
result == [4, 3, 2, 1]
list == [4, 3, 2, 1]
list.object_id == result.object_id

list = %w(a b e d c)
reverse!(list) == ["c", "d", "e", "b", "a"]
list == ["c", "d", "e", "b", "a"]

list = ['abc']
reverse!(list) == ["abc"]
list == ["abc"]

list = []
reverse!(list) == []
list == []
