# frozen_string_literal: true

# Reversed Arrays (Part 2)
#
# Problem:
# Write a method that takes an Array, and returns a new Array with the elements of
# the original list in reverse order. Do not modify the original list.
#
# You may not use Array#reverse or Array#reverse!, nor may you use the method you
# wrote in the previous exercise.
#   Rephrase:
# Examples/tests:
#
# INPUT:
# OUTPUT:
# Rules:
#     Explicit:
#     Implicit:
#
# D: array
#
# Approach:
# Initialize method reverse, take paramater list
# dupe list
# initalize new array
# for each iteration push the last value of list to a new array
# return new array
# C:

def reverse(list)
  source_list = list.dup
  new_arr = []
  count = list.size
  until count
    new_arr << source_list[count - 1]
    count -= 1
  end
  new_arr
end

reverse([1, 2, 3, 4]) == [4, 3, 2, 1]
reverse(%w[a b e d c]) == %w[c d e b a]
reverse(['abc']) == ['abc']
reverse([]) == []

list = [1, 3, 2]
new_list = reverse(list)
list.object_id != new_list.object_id
list == [1, 3, 2]
new_list == [2, 3, 1]
