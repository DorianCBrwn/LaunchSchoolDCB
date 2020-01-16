# Given the array below
# Turn this array into a hash where the names are the keys and the values are the positions in the array.
# flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
=begin
P Build a hash from a given array where each key is a string value from the array and each value is the index of that string value. 
  INPUT: Array 
  OUTPUT: Hash
E result = {"Fred" => 0, "Barney => 1, ...}
D Hash
A 
  Approach: Iterate through the array. For each element , set the element as the hash key, then set it's index as the value. 
  Once the array is finished iterating, return the created hash

  Psuedo Code:
              Given array flintstones
              Set result to {}
              Set Counter to 0

              Loop
              Set result[flintstones[counter] is equal to counter
              End
              Return result

C result = flintstones.each_with_object({}) do |element,hash|
            hash[element] = flintstones.index(element)
            end
=end
flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]  # => ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]


result = flintstones.each_with_object({}) do |element, hash|  # => ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
  hash[element] = flintstones.index(element)                  # => 0, 1, 2, 3, 4, 5
end                                                           # => {"Fred"=>0, "Barney"=>1, "Wilma"=>2, "Betty"=>3, "Pebbles"=>4, "BamBam"=>5}

result  # => {"Fred"=>0, "Barney"=>1, "Wilma"=>2, "Betty"=>3, "Pebbles"=>4, "BamBam"=>5}

