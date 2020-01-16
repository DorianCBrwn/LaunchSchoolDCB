# Practice Problem 12
# Given the following data structure, and without using the
# Array#to_h method, write some code that will return a hash where the key is the
# first item in each sub array and the value is the second item.
#
# expected return value: {:a=>1, "b"=>"two", "sea"=>{:c=>3}, {:a=>1, :b=>2,
  # :c=>3, :d=>4}=>"D"}

arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]

=begin 
Rephrase: 
Basic example: {:a=>1, "b"=>"two", "sea"=>{:c=>3}, {:a=>1, :b=>2,
                :c=>3, :d=>4}=>"D"}
P INPUT: 2 layer, 4 element array
  OUTPUT: hash 
  Rules: Cannot use to.h
         array is given
         each sub array has two elements
Approach: 
          Initialize empty hash to store result
          Iterate through outer array
          Iterate through each sub_array
            Set first value in sub array as a key
            Set send value in sub array as a value
         return example array

E -
D 
A 
C 
=end
hash = {}
arr.each do |sub_arr|
  hash[sub_arr[0]] = sub_arr[1]
end
hash

