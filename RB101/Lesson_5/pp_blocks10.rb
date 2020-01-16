# Practice Problem 10
# Given the following data structure and without modifying the original array,
# use the map method to return a new array identical in structure to the
# original but where the value of each integer is incremented by 1.

[{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]

=begin 
Rephrase: increment the value of each integer in the following nested data structure
Basic example: [{a: 2}]
P INPUT: 2 layer 3 element array
  OUTPUT: 2 layer 3 element array
  Rules: 
        Explicit: Use map
                  Return a new array
                  Increment each value by 1
Approach: Iterate through the array
          Iterate through each sub hash
          For each key increment the value by one
          Return a new hash
E -
D 
A 
C 
=end

arr = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]

arr.map do |hash|
  hash.each_with_object({}) do |(k,v),hash|
    hash[k] = v + 1
  end
end
