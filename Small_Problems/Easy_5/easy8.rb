#Alphabetical Numbers

=begin 
Problem:
Write a method that takes an Array of Integers between 0 and 19 and returns an
Array of those Integers sorted based on the English words for each number:

zero, one, two, three, four, five, six, seven, eight, nine, ten, eleven, twelve,
thirteen, fourteen, fifteen, sixteen, seventeen, eighteen, nineteen

  Rephrase: 
Examples/tests: 

alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]

INPUT:
  array
  -contains integers between 0 - 19
  -ordered 0 uotp 1
OUTPUT:
- array 
  -contains integers
-sorted by english representations of numbers
  - a-z
Rules:
    Explicit:
    Implicit:

D:  hash or array
hash to create dictionary

Approach:
Define method alphabetic_number_sort that takes in array from 0-19; arr
create arr of english  string represenations of numbers; eng_nums
create a hash where key = number from arr and value = eng_nums
sort hash by values
return keys of hash as an array

C:
=end

def alphabetic_number_sort(arr)
  eng_nums = %w[zero one two three four five six seven eight nine ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen]
  num_hash = arr.zip(eng_nums).to_h
  sorted_hash = num_hash.sort_by {|a,b| b}.to_h
  sorted_hash.keys
end
alphabetic_number_sort((0..19).to_a)

alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]
